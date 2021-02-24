---
title: Render Preview
parent: Render Controls
grand_parent: User Interface
has_children: false
nav_order: 1
---

# Render Preview
{: .no_toc }

## Table of contents
{: .no_toc .text-delta }

1. TOC
{:toc}

---

## Render Preview

{% responsive_image path: "assets/images/user_interface/chunky_preview.png" %}

Once chunks have been selected and loaded they can be viewed in 3D within the Render Preview tab; Chunky should automatically switch to this view once chunks or a scene have been loaded. Depending on a few conditions either a fast flat path-traced preview image of the view into the world will be displayed OR, if either the render is started or there exists a dump file for the scene, a higher quality, and possibility noisy, multi-sample path-traced image will be shown; and updated in real-time as new samples are completed.

Below is an example of the path tracer in action.

{% responsive_image path: "assets/images/user_interface/chunky_preview_render.png" %}

---

### Controls

Camera key bindings (Standard camera projection)


`W` -	move forward (1 unit)

`S` -	move backward (1 unit)

`A` -	strafe left (1 unit)

`D` -	strafe right (1 unit)

`R` -	move up (1 unit)

`F` -	move down (1 unit)

`U` -	~~toggle fullscreen mode~~

`K`	-	~~move forward x100~~ - move forward (1 unit)

`J`	-	~~move backward x100~~ - move backward (1 unit)



Modifier keys

`Shift` - 0.1x

`Ctrl` - 100x

---

### Right click menu

{% responsive_image path: "assets/images/user_interface/chunky_preview_rightclick.png" %}

`Set target` - Default targetting is center view, this changes the target to a location on screen. Useful for `Autofocus`.

`Show Guides` - Enables thirds guidelines (overlay) to help frame up shots.

`Canvas scale` - Default is Fit to Screen with fixed scale options between `25%` and `400%`.

### Target details

{% responsive_image path: "assets/images/user_interface/chunky_preview_target.png" %}

The Target details box shows up in the bottom left hand corner of the preview tab when the target changes; mouse dragging or via `Set Target`. The three lines provide the following information:

Subject Distance in metres.

Block and state of target (not including entities).

Position of target.