---
title: GIMP
parent: Advanced Techniques
has_children: false
nav_order: 3
---

# GNU Image Manipulation Program - A quick rundown
{: .no_toc }

## Table of contents
{: .no_toc .text-delta }

1. TOC
{:toc}

---

## Other

---

## Filtering

With the chosen layer selected over in the `Layers window`. You can apply various `Filters` to it by accessing the menu from the `Menu Bar`.

{% responsive_image path: "assets/images/gimp/gimp_filters.jpg" %}

### Blur

#### Gaussian blur

_Performs an averaging of neighboring pixels with the normal distribution as weighting_

This is the most basic blur filter available and really quick. Has the option to change blur size in X and Y independently.

{% responsive_image path: "assets/images/gimp/gimp_gaussian_blur.jpg" %}

---

<a name="sgb"></a>
#### Selective Gaussian blur

_Blur neighboring pixels, but only in low contrast areas_

This filter is more advanced and lets you set a threshold so that only similar pixels are blurred together. Should help retain sharp edges while reducing grain. This filter is much slower than Gaussian blur but this probably won't amount to much addtional processing time unless working with a high resolution image. Unfortunately you cannot control blur in X&Y independently instead it is controlled by a Blur radius.

{% responsive_image path: "assets/images/gimp/gimp_selective_gaussian_blur.jpg" %}