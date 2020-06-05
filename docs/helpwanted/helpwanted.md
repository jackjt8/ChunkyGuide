---
title: Help Wanted
has_children: true
nav_order: 4
---

# Current things that need to be tested
{: .no_toc }

## Table of contents
{: .no_toc .text-delta }

1. TOC
{:toc}

---

My plan is to allow anyone to view and comment on the documents below. However, if possible, I will manually grant people with edit permissions. This is to avoid any possible griefing since this is an open website.

## UI elements vs Text fields

While it is known that UI elements have set ranges which we can bypass by entering values into the corresponding Text Field


[Google Sheets](https://docs.google.com/spreadsheets/d/1fB3Q1JCaSUM3yKJzXHkiPb_PFtIOczlWlvZLlQjs1nI/edit?usp=sharing){: .btn }

## Explore different tile-width sizes for potential speedups.

In the ChunkyLauncher, under advanced, you can find Chunky options where you can provide arguments to change more advanced settings. The particular one we are looking at here is `-tile-width x` which modifies the frame subdivision size per worker thread. Alternatively you can call this option and render via commandline using the following:

```
java -jar ChunyLauncher.jar -tile-width x
java -jar ChunkyLauncher.jar -render scene
```

In my limited testing of a scene that takes approximately 17 minutes I found that a tile-width of 16 seemed to provide a 3.5% boost to rendering speed over default. While this is a minimal improvement it would add up over time. A value of 256 or greater resulted in a significant reduction in rendering performance.

*Notes- Testing was performed on leMaik 1.4.5-231, 1920x1080, to a target of 256 SPP.*

## Chunky AI Denoiser Training

Would training Intel's Open Image Denoise with Chunky data provide any meaningful improvement to denoising results? No clue. But given they only used as few as 20 different scenes from some renderers it certainly gives us some hope!

[Provide data here](https://github.com/jackjt8/chunky_aidn_training){: .btn }

