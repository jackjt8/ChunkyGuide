---
title: Plugins
parent: Installation
has_children: false
nav_order: 2
---

# Plugins
{: .no_toc }

## General Note
{: .no_toc }

As of Chunky 2.4.0 renderer switching is supported. ChunkyClPlugin's ChunkyCLRenderer cannot yet be selected to be used in conjunction with the Denoising Plugin though they won't cause an exception anymore. Plugins which have not yet been updated to support the new `addRenderer` API feature (Ambient Occlusion Plugin and Depth Buffer Plugin) are still supported and are added with the name of `PluginRenderer`. At the time of writting the Discord Rich Presence plugin does not work with Chunky 2.4.

## Installation
{: .no_toc }

Clicking `Manage Plugins` within the [Chunky Launcher]({{ site.baseurl }}/docs/userinterface/chunkylauncher.html) will open the `Plugin Manager` and create a `plugins` folder in the install directory. Chunky plugins, which are `.jar` files, should be placed in the `plugins` folder and then Enabled within the `Plugin Manager`.

{% responsive_image path: "assets/images/user_interface/chunky_plugin_manager.png" %}

**Note** - The Denoising Plugin requires additional setup.

---

## Table of contents
{: .no_toc .text-delta }

1. TOC
{:toc}


---
## ChunkyClPlugin
created by Redox

<div class="label-block" markdown="1">
Work In Progress
{: .label .label-yellow }

New release
{: .label .label-purple }
</div>

A WIP OpenCL raytracer for Chunky. Note- May or may not come with spaghettii. Requires Chunky 2.4.0-85-gbcef6ebc or later.

* **[<=2.3]** Not comptaible with other Plugins that replace the render manager. ie Denoising Plugin, ChunkyClPlugin, Ambient Occlusion Plugin, and Depth Buffer Plugin.

[GitHub Repo](https://github.com/alexhliu/ChunkyClPlugin)

[Latest mostly stable build](https://ci.wertarbyte.com/job/ChunkyCL/lastSuccessfulBuild/artifact/ChunkyCL.jar){: .btn }

[Latest development build](https://nightly.link/alexhliu/ChunkyClPlugin/workflows/development/master/ChunkyClPlugin.zip)


---
## Chunky-bloom-plugin
created by aTom3333

<div class="label-block" markdown="1">
Stable
{: .label .label-green }

New release
{: .label .label-purple }
</div>

This is a Chunky plugin that adds a bloom post processing effect.

[GitHub Repo](https://github.com/aTom3333/chunky-bloom-plugin)

[Releases page](https://github.com/aTom3333/chunky-bloom-plugin/releases){: .btn }


---
## Chunky-excel-plugin
created by aTom3333

<div class="label-block" markdown="1">
Stable
{: .label .label-green }

New release
{: .label .label-purple }
</div>

Export renders as ODS such that an image viewer like Excel can render it... Not even joking this plugin is amazing.

[GitHub Repo](https://github.com/aTom3333/chunky-excel-plugin)

[Releases page](https://github.com/aTom3333/chunky-excel-plugin/releases){: .btn }


---
## Chunky-jpegxl-plugin
created by aTom3333

<div class="label-block" markdown="1">
Stable
{: .label .label-green }

Coming soon
{: .label .label-yellow }
</div>

Plugin adds an option to export the render as a JPEG-XL image; A brand-new image format (as of February 2021).

[GitHub Repo](https://github.com/aTom3333/chunky-jpegxl-plugin)


---
## Chunky-MagickExportPlugin
created by ShirleyNeko

<div class="label-block" markdown="1">
Stable
{: .label .label-green }

New release
{: .label .label-purple }
</div>

A WIP plugin that adds more export options, EXR, PNG16, etc, using ImageMagick.

[GitHub Repo](https://github.com/ShirleyNekoDev/Chunky-MagickExportPlugin)

[Releases page](https://github.com/ShirleyNekoDev/Chunky-MagickExportPlugin/releases){: .btn }


---
## Chunky-octree-plugin
created by aTom3333

<div class="label-block" markdown="1">
Stable
{: .label .label-green }

New release
{: .label .label-purple }
</div>

This is a plugin for Chunky that adds more octree implementations with a range of uses and benefits. See the GitHub repo for more information and use however I will list some of the implementations below:

- Compressed Siblings Implementation - Half memory usage vs Packed (default), Cannot be built (ie needs an existing octree), Render times are doubled.

- Disk Implementation - Caches octree to disk (temp directory). While this is extremely slow when it comes to loading and rendering, it does bypass typical chunk limits with RAM. Recommend pairing with Compressed Siblings for rendering.

- Garbage-collected Implementation - Generally faster octree creation/loading times.

- Small-leaf Implementation - Should offer a 33% memory saving Vs Packed at a small performance cost. *This has yet to be tested*

[GitHub Repo](https://github.com/aTom3333/chunky-octree-plugin)

[Releases page](https://github.com/aTom3333/chunky-octree-plugin/releases){: .btn }


---
## Denoising Plugin
created by leMaik

<div class="label-block" markdown="1">
Stable
{: .label .label-green }

New release
{: .label .label-purple }
</div>

{% responsive_image path: "assets/images/installation/plugins/chunky_denoiser_ui.png" %}

<style type="text/css">
.tg  {border-collapse:collapse;border-spacing:0;}
.tg td{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  overflow:hidden;padding:10px 5px;word-break:normal;}
.tg th{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  font-weight:normal;overflow:hidden;padding:10px 5px;word-break:normal;}
.tg .tg-0lax{text-align:left;vertical-align:top}
</style>
<table class="tg">
<thead>
  <tr>
    <th class="tg-0lax">Noisy image</th>
    <th class="tg-0lax">Denosied output</th>
  </tr>
</thead>
<tbody>
  <tr>
    <td class="tg-0lax">{% responsive_image path: "assets/images/installation/plugins/1_plugin_test-512.png" %}</td>
    <td class="tg-0lax">{% responsive_image path: "assets/images/installation/plugins/1_plugin_test-512.denoised.png" %}</td>
  </tr>
</tbody>
</table>

For a description and some examples please see the section on [AI Based Denoising under Advanced Techniques]({{ site.baseurl }}/docs/advanced_techniques/denoising.html#ai-based-denoising--plugins).

* **[<=2.3]** Not comptaible with other Plugins that replace the render manager. ie Denoising Plugin, ChunkyClPlugin, Ambient Occlusion Plugin, and Depth Buffer Plugin.

[GitHub Repo](https://github.com/leMaik/chunky-denoiser)

[Releases page](https://github.com/leMaik/chunky-denoiser/releases){: .btn }

[Chunky 2.4 - 0.4.0-pre.1 pre-release](https://github.com/chunky-dev/chunky-denoiser/releases/tag/0.4.0-pre.1){: .btn }


### Installation

1. Download the (pre-)release denoiser `.jar` file from the GitHub Repo.

		chunky-denoiser-chunky1.jar 	- Chunky 1.X
	
		chunky-denoiser-chunky2.jar 	- Chunky 2.0-2.3
	
		chunky-denoiser.jar 		- Chunky 2.4+
	

2. Download the [Precompiled Intel Open Image Denoise Binary Packages](https://www.openimagedenoise.org/downloads.html) for your OS. ie for Windows it would be eg `oidn-1.4.1.x64.vc14.windows.zip`.

3. Extract the oidn .zip file to a chosen location (ie `C:\Program Files\oidn-1.4.1.x64.vc14.windows\...`)
	
4. Place downloaded denoising plugin `.jar` in Chunky's `plugins` folder as with any plugin and enable in the Plugin manager.

5. After launching Chunky, a new `Denoiser` tab will be found among the render controls. Expand this tab, next to the `Denoiser` there will be a button `...` clicking this will open a file selector. Navigate to the install location and then into `bin` and select `oidnDenoise.exe`. The full path to the Denoiser would be displayed in the text field. For this example it would be: `C:\Program Files\oidn-1.4.1.x64.vc14.windows\bin\oidnDenoise.exe`

6. Profit!

	The Denoising Plugin with render the Normal and Albedo Map before the Noisy image. Once the Target SPP is reached the image will be denoised and saved into snapshots with the extension `*.denoised.*`. You can also find the orginal .pfm files in the scenes directory should you wish to use these for anything.

---
## Discord Rich Presence plugin
created by leMaik

<div class="label-block" markdown="1">
Stable
{: .label .label-green }

upto 2.3 ONLY
{: .label .label-red }
</div>

{% responsive_image path: "assets/images/installation/plugins/chunky_discord.png" %}

{% responsive_image path: "assets/images/installation/plugins/discord_rtp.png" %}

**Compatibility note:** Make sure that this plugin is loaded after other plugins that change the render manager, i.e. use the Down button to move it below it in the plugin list. **Chunky 2.4** is not supported yet.

[GitHub Repo](https://github.com/leMaik/chunky-discord)

[Releases page](https://github.com/leMaik/chunky-discord/releases){: .btn }


---
## *demo* Ambient Occlusion Plugin
created by llbit

<div class="label-block" markdown="1">
Stable
{: .label .label-green }

Prebuilt
{: .label .label-blue }
</div>

Preview
{% responsive_image path: "assets/images/installation/plugins/1_plugin_test-0.png" %}

AO
{% responsive_image path: "assets/images/installation/plugins/1_plugin_test-AO.png" %}

* **[<=2.3]** Not comptaible with other Plugins that replace the render manager. ie Denoising Plugin, ChunkyClPlugin, Ambient Occlusion Plugin, and Depth Buffer Plugin.

[GitHub Repo](https://github.com/llbit/Chunky-AOPlugin)

[Complied Chunky-AOPlugin]({{ site.baseurl }}/assets/downloads/plugins/Chunky-AOPlugin.jar){: .btn }


---
## *demo* Depth Buffer Plugin
created by llbit

<div class="label-block" markdown="1">
Stable
{: .label .label-green }

Prebuilt
{: .label .label-blue }
</div>

Preview
{% responsive_image path: "assets/images/installation/plugins/1_plugin_test-0.png" %}

Depth
{% responsive_image path: "assets/images/installation/plugins/1_plugin_test-depth.png" %}

* **[<=2.3]** Not comptaible with other Plugins that replace the render manager. ie Denoising Plugin, ChunkyClPlugin, Ambient Occlusion Plugin, and Depth Buffer Plugin.

[GitHub Repo](https://github.com/llbit/Chunky-DepthPlugin)

[Complied Chunky-DepthPlugin]({{ site.baseurl }}/assets/downloads/plugins/Chunky-DepthPlugin.jar){: .btn }


---
## Plugin Templates


---
### *demo* Block Plugin Template
created by llbit

<div class="label-block" markdown="1">
Stable
{: .label .label-green }

Manual builds only
{: .label .label-red }
</div>

[GitHub Repo](https://github.com/llbit/Chunky-BlockMod)


---
### *demo* Tab Plugin Template
created by llbit

<div class="label-block" markdown="1">
Stable
{: .label .label-green }

Manual builds only
{: .label .label-red }
</div>

[Github Repo](https://github.com/llbit/Chunky-TabMod)


