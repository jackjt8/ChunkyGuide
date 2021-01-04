---
title: Cubic Chunks
parent: Advanced Techniques
has_children: false
nav_order: 4
---

# Cubic Chunks?
{: .no_toc }

## Table of contents
{: .no_toc .text-delta }

1. TOC
{:toc}

---

## No native support... but a work around

Should you wish to render a Cubic Chunks world with Chunky you would first need to convert the world to a Vanilla Minecraft Anvil (upto 1.12). To do this there is a provided [standalone Cubic Chunks Converter](https://github.com/OpenCubicChunks/CubicChunksConverter) which will export the Cubic Chunks world into multiple 0-255 block slices in the vanilla Anvil format.

You would then render layer 0-255, layer 256-512 while applying a +256 to the cameras height/y position, layer 513-768 : +256y, etc. seperately, using the recommended parallel camera projection, and composite these in an application like GIMP. The use of alternative projection modes may require addtional math and/or lense shifting to correctly composite them. Addtional features images like the depth map may prove useful.

(This method has not been tested. If someone has world for me to test I would be happy to do so)
