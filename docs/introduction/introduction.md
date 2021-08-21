---
title: Introduction
has_children: false
nav_order: 2
---

# Introduction to Chunky
{: .no_toc }

## Table of contents
{: .no_toc .text-delta }

1. TOC
{:toc}

---

## Path Tracing

[Probably best you just read llbit's page on this one](https://chunky.llbit.se/path_tracing.html).

## Emitter Sampling Strategy (ESS)

With every intersection the sun is sampled adding its contribution to the ray without the need for random sampling; which is one of the main reasons why the convergence of scenes lit by the sun (and sky) occurs quickly. Emitters on the other hand need to be directly hit for them to contribute which has a lower probability of occuring; espically with smaller emitters like torches.

ESS enables similar sampling to which the sun uses and, in theory, should lead to faster convergence.

However, whereas there is only a single sun present in the scene, there can be multiple emitters and those at distances where they will not contribute much to the image- For this we have the emittergrid which holds the positions of emitters within cells. When sampling we would only consider emitters within the cell at the intersection and adjacent cells; That way the cost of processing the addtional samples is minimalised.

With ESS ONE only a single emitter is sampled per intersection and cell(+adj) & for ALL every emitter in the cell(+adj) is sampled per intersection. Sampling emitters increases the rendering cost but reduces the required samples. ESS:ONE tends to be very similar to ESS:NONE with ESS:ALL being the "slowest" but potentially fastest to converge- ALL also tends to result in much brighter images than NONE/ONE so a reduction in exposure or emittance value is required to compensate for this.

The emitter grid (cell) size changes the size of the cells which can impact how many emitters would need to be sampled per intersection, potentially improving performance, however this could lead to issues such as light cut-off if set too low.

