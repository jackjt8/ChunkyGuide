---
title: Denoising
parent: Advanced Techniques
has_children: false
nav_order: 1
---

# Denoising
{: .no_toc }

## Table of contents
{: .no_toc .text-delta }

1. TOC
{:toc}

---

## Super Sample Downscaling Denoising

[A technique first covered back in October 2014](https://www.reddit.com/r/chunky/comments/2kljk1/proof_of_method_the_downscale_test/).

The basic premise is to render a scene at a higher than target resolution, apply a Gaussian blur to the whole image, and then scale it down to the target resolution. The noise is still present but given the higher resolution each pixel of noise takes up less screen space compared to the “noiseless” data from the sun/sky. Blurring and scaling to target resolution should result in better results then rendering at native resolution.

### Original examples

540p
![](img/denoising/downsample/r540p.png)

1080p
![](img/denoising/downsample/r1080p.png)

2160p
![](img/denoising/downsample/r2160p.jpg)

4320p
![](img/denoising/downsample/r4320p.jpg)

---

## Split Pass Denoising

[An approach llbit showcased in September 2015](https://www.reddit.com/r/chunky/comments/3kwknl/results_of_some_quick_experiments_with_selective/).

By rendering the scene twice, first with a “Sunlight Pass” to 200 SPP and then a “Raw Emitter Pass” to 400 SPP. The noisy emitter pass could then be filtered with a Selective Gaussian Blur in GIMP and then combined. Comparing a typical 400 SPP Sunlight + Raw Emitter image to the Sunlight + Filtered Emitter image it was seen that the lighting was softer and there was less noticeable noise.

### llbit's example

Sunlight pass at 200 SPP
![](img/denoising/split_pass/sunlight_pass.png)

Emitter pass at 400 SPP
![](img/denoising/split_pass/raw_emitter_pass.png)

Filtered emitter pass
![](img/denoising/split_pass/filtered_emitter_pass.png)

Sunlight + filtered emitter pass
![](img/denoising/split_pass/combined_post.png)

Typical 400 SPP render
![](img/denoising/split_pass/typical.png)

---

## Multi-plane

A technique which I never released; Covers rendering a scene with a clear and distinct fore and background elements. By rendering the complete scene with emitters at 0.01, emitters would light up but not emit visible light. This would lead to zero emitter noise in the distance. Meaning lower SPPs could be used for this element. Foreground element should be loaded with a reduced number of chunks, to speed up rendering speed, with the chosen emittance. With a careful selection of Chunks and combination of the two elements a reasonable result can be achieved.

### Example

Foreground selection of 76 chunks
![](img/denoising/multi-plane/mapview_fore.png)

1024 SPP @ 932k SPS - aka it's fast
![](img/denoising/multi-plane/multi-plane_fore-1024.png)

Background selection of 1877 chunks
![](img/denoising/multi-plane/mapview_back.png)

128 SPP @ 482k SPS - aka it's slow
![](img/denoising/multi-plane/multi-plane_back-128.png)

Crude composite
![](img/denoising/multi-plane/multi-plane_comp.png)

The key issue with this technique is that the lighting information in the foreground element would not completely match the background. Further mitigations would be to instead combine this Multi-plane technique with Split Pass to further speed up rendering and retain bounce lighting from Sun/Sky present within the background pass. Using Split Pass would also mean that less effort is required to recombine the completed results.

---

## AI Based Denoising

[First showcased by u/StaysAwakeAllWeek in Nov 2018](https://www.reddit.com/r/chunky/comments/a0o15p/this_simple_aibased_denoiser_tool_for_nvidia_gpus/), this was the first time an AI based denoiser was mentioned on r/Chunky. Unfortunately it was limited to just Nvidia GPUs. A few months later I discovered Intel’s Open Image Denoise; an AI based denoiser that works on any CPU with SSE4.1 support. The rest is history.

### Example
| SPP  | RAW                                          | OIDN                                                  |
|------|----------------------------------------------|-------------------------------------------------------|
| 512  | ![](img/denoising/ai_based_dn/test-512.png)  | ![](img/denoising/ai_based_dn/test-512.denoised.png)  |
| 2048 | ![](img/denoising/ai_based_dn/test-2048.png) | ![](img/denoising/ai_based_dn/test-2048.denoised.png) |
| 4096 | ![](img/denoising/ai_based_dn/test-4096.png) | ![](img/denoising/ai_based_dn/test-4096.denoised.png) |
| 8192 | ![](img/denoising/ai_based_dn/test-8192.png) | ![](img/denoising/ai_based_dn/test-8192.denoised.png) |

As some of you may have noticed while AI based denoisers work wonders there are a few issues with the outputted images. Noteworthy visual artifacts are the deformed blocks, blurred textures, and the painted effect you can often see. Below you can see an extreme case where a 32 SPP scene lit mostly by emitters was denoised.

### Example of painted effect
![](img/denoising/ai_based_dn/HermitCraft7-32.denoised.png)

Some of these issues can be resolved by using leMaik’s Denoising Plugin which has the ability to, not only to automatically denoise a scene once the target SPP is reached but, render auxiliary feature images / AOVs (Arbitrary Output Variables) to provide additional information to the denoiser.

### Albedo Map
![](img/denoising/ai_based_dn/test.albedo.png)

The Albedo map is a feature image that provides the largest quality bump to the denoiser. It’s basically just a representation of the texture information within the scene independant of shading (lighting) or viewing angle. This map tends to help restore texture details.
**IMPORTANT** - Make sure you **disable all post processing** and set **exposure to 1**. The Denoiser plugin, at the time of writing, doesn’t exclude post processing and it can destroy the albedo.

### Normal Map
![](img/denoising/ai_based_dn/test.normal.png)

The Normal map is another feature image that can help. In order to use a Normal map you need to provide the Denoiser with the Albedo map first. This map tends to help restore block shape.

---

## Split Pass + AI Denoising

For some scenes where we have access to both Sun/Sky light and Emitters.

As many would probably know by now; Scenes which receive most of their lighting directly from the Sun or Sky generally do not require SPPs past 1000 SPP unlike scenes with emitters that can require 8000 SPP or more. Subjecting the whole scene to an AI based denoiser when it is not necessary is what this combination technique aims to solve.

We take llbit’s Split Pass Denoising and instead of feeding the emitter pass through a simple Gaussian blur we use an AI based denoiser like Optix or OIDN. Given the Sun, Sky, and Fog pass is not put through the denoiser any fine details or grain from this pass will be kept. This is most noticeable when looking at the fog. Any part of the scene that does not receive lighting from the  Sun, Sky, and Fog pass but instead is lit from the emitter pass will still unfortunately experience a painted effect.

Put simply: Render the Sun, Sky, and Fog in one pass. In another pass render the emitters and denoise it with an AI base denoiser like Open Image Denoise or Nvidia Optix. These two passes can be combined using GIMP by setting the layer mode to Screen.


### Example 1

Sun + Sky + Fog Pass at 256 SPP
![](img/denoising/split-ai/TheUncensoredLibrary_2-256.png)

Raw Emitter Pass at 2048 SPP 
![](img/denoising/split-ai/TheUncensoredLibrary_2e-2048.png)

AI denoised Emitter Pass
![](img/denoising/split-ai/TheUncensoredLibrary_2e-2048_oidn.png)

Combined SSF + E_dn using GIMP and layer mode set to screen
![](img/denoising/split-ai/TheUncensoredLibrary_2-ss256_e2048dn_s.png)

### Example 2

Sun + Sky + Fog Pass at 256 SPP
![](img/denoising/split-ai/TheUncensoredLibrary_3-256.png)

Raw Emitter Pass at 2048 SPP 
![](img/denoising/split-ai/TheUncensoredLibrary_3e-2048.png)

AI denoised Emitter Pass
![](img/denoising/split-ai/TheUncensoredLibrary_3e-2048.denoised.png)

Combined SSF + E_dn using GIMP and layer mode set to screen
![](img/denoising/split-ai/TheUncensoredLibrary_3_comp.png)

### A simple proof of concept with Layer mode: Screen

Below is a showcase of further subdividing light sources into different passes and the combined composite VS a typical render. This is merely to showcase that splitting render passes and combining in post can produce equivalent results to a typical render. Of course subdividing a scene into this many passes and rendering to such a high SPP is not required for Split Pass + AI Denoising.

| Sun pass                                                  | Sky pass                                                     | Emitter pass                                                     |
|:----------------------------------------------------------|:-------------------------------------------------------------|------------------------------------------------------------------|
| ![](img/denoising/layer_mode_screen/NoiseTest_S-8192.png) | ![](img/denoising/layer_mode_screen/NoiseTest_sky-16384.png) | ![](img/denoising/layer_mode_screen/NoiseTest_emitter-16384.png) |
| SSE_Comp                                                  |                                                              | Typical bake                                                     |
| ![](img/denoising/layer_mode_screen/NoiseTest_comp.png)   |                                                              | ![](img/denoising/layer_mode_screen/NoiseTest_SsE-16384.png)     |