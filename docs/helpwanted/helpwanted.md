---
title: Help Wanted
has_children: true
nav_order: 6
---

# Current things that need to be tested
{: .no_toc }

## Table of contents
{: .no_toc .text-delta }

1. TOC
{:toc}

---

## UI elements vs Text fields

While it is known that UI elements have set ranges which we can bypass by entering values into the corresponding Text Field. Anyone is able to view and comment this document, but I do intend to manually grant edit permissions.

[Google Sheets](https://docs.google.com/spreadsheets/d/1fB3Q1JCaSUM3yKJzXHkiPb_PFtIOczlWlvZLlQjs1nI/edit?usp=sharing){: .btn }

---

## Explore different tile-width sizes for potential speedups

In the ChunkyLauncher, under advanced, you can find Chunky options where you can provide arguments to change more advanced settings. The particular one we are looking at here is `-tile-width x` which modifies the frame subdivision size per worker thread. Alternatively you can call this option and render via commandline using the following:

```
java -jar ChunyLauncher.jar -tile-width x
java -jar ChunkyLauncher.jar -render scene
```

In my limited testing of a scene that takes approximately 17 minutes I found that a tile-width of 16 seemed to provide a 3.5% boost to rendering speed over default. While this is a minimal improvement it would add up over time. A value of 256 or greater resulted in a significant reduction in rendering performance.

When providing results please let me know the CPU model, Chunky version, resolution, and SPP target in addtional to providing data regarding tile-width values tested and the time in seconds. Just.. send me a spreadsheet or something.

*Notes- Testing was performed on an i7-9750H, leMaik 1.4.5-231, 1920x1080, to a target of 256 SPP.*

---

## Chunky AI Denoiser Training

Would training Intel's Open Image Denoise with Chunky data provide any meaningful improvement to denoising results? No clue. But given they only used as few as 20 different scenes from some renderers it certainly gives us some hope!

If you want to help out there is more information over at my GitHub Repo where you can provide your own data.

[Chunky AI Training Data](https://github.com/jackjt8/chunky_aidn_training){: .btn }

---

## GitHub Issues

Confirming bugs, providing steps to reproduce them, or maybe even fixing them yourself are all really helpful. Maybe.. Try it out...

[Chunky GitHub Issues](https://github.com/llbit/chunky/issues){: .btn }
