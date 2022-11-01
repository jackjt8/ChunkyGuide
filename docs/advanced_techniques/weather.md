---
title: Weather
parent: Advanced Techniques
has_children: false
nav_order: 6
---

# Weather
{: .no_toc }

## Table of contents
{: .no_toc .text-delta }

1. TOC
{:toc}

---

## Snow

Credit to MalignantLugnut on discord.

The method outlined here is directly taken from comments made by MalignantLugnut on discord. All images shown in this article are taken from comments made by MalignantLugnut.

{% responsive_image path: "assets/images/weather/final.jpg" %}

### Snow layers

The following layers are made by creating an alpha mask of various objects within the scene at varying distances from the camera. This process could probably be done a lot faster if using a depth map produced from the AOV plugin.
The hatched area in the following images is transparent.

Background - Most of this layer is covered due to the distance we want it at.
{% responsive_image path: "assets/images/weather/SnowLayer1.png" %}
{% responsive_image path: "assets/images/weather/background_layer.png" %}


Midground - Most of this layer is visible and only things really close to the camera is blocking the layer.
{% responsive_image path: "assets/images/weather/SnowLayer2.png" %}
{% responsive_image path: "assets/images/weather/middle_layer.png" %}
{% responsive_image path: "assets/images/weather/middle_layer2.png" %}


Foreground - Snow in this layer covers everything and is not blocked by anything. It should be noted that the lines visible in the image are due to a botched copy/paste to extend the snow layer. I would recommend use of a titling filter. The lines are not visible in the final render so it was noted at the time that this is likely a non-issue.
{% responsive_image path: "assets/images/weather/SnowLayer3.png" %}
{% responsive_image path: "assets/images/weather/front_layer.png" %}

### Adding it all together

Here is the one with the background snow. See how the front building, the middle buildings, the Christmas tree and the reindeer and sleigh are clear? That's because they are positioned in FRONT of where that snow should show up.
{% responsive_image path: "assets/images/weather/f_1.png" %}

Next closest Layer, The tree and center buildings are now behind the snow, but the closest building and some of the candy canes are closer still, so no snow on them.
{% responsive_image path: "assets/images/weather/f_2.png" %}

Next Layer, pretty much everything but a portion of the closest building is behind the snow.
{% responsive_image path: "assets/images/weather/f_3.png" %}

And the final snow layer just blankets the whole image.
{% responsive_image path: "assets/images/weather/f_4.png" %}

---

## Rain

Credit to MalignantLugnut on discord.

The method used to produce the following image was not fully detailed but it can be assumed that it is the same as the one used from Snow above just with a layered rain texture. 

{% responsive_image path: "assets/images/weather/rain.png" %}

One aspect that is not shown in MalignantLugnut's work are puddles. One such solution to this is to mix in different blocks to floors in game which then could then have the `Specular` value changed in Chunky. Blocks with `Specular` become reflective and with a bit of tuning the result can look pretty good. Below is an example render of mine that showcases puddles and other wet surfaces. I should note that this was rendered back in Chunky 1.4.X and that we now have `Metalness` and `Smoothness` which would further aid in the production of wet surfaces.

{% responsive_image path: "assets/images/weather/HP_24-256_DN.png" %}

