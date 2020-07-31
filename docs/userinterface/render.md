---
title: Render Controls
parent: User Interface
has_children: false
nav_order: 3
---

# Render Controls
{: .no_toc }

## Table of contents
{: .no_toc .text-delta }

1. TOC
{:toc}

---

## General

{% responsive_image path: "assets/images/user_interface/chunky_render_general.png" %}

`Scene(name)` - Input field for the current scene's name (Press enter to apply).
`Save scene` - Saves current scene.
`Load scene` - Opens the `Select 3D Scene` dialog.
`Save current frame` - Saves the current frame of the Render.
`Copy current frame` - Copies the current frame of the render to the clipboard.

### Select 3D Scene

{% responsive_image path: "assets/images/user_interface/chunky_select3dscene.png" %}

Provides a list of all detected scenes in the Scenes directory.

`Delete` - Deletes the currently selected scene (with a confirmation prompt).
`Export` - Exports the currently selected scene as a .zip file to a custom location.
`Cancel` - Closes the `Select 3D Scene` dialog
`Load selected scene`

## Render controls

### Scene

{% responsive_image path: "assets/images/user_interface/chunky_render_scene.png" %}

`Open scene directory` - Opens current scene's directory on disk.
`Export settings` - Allows you to export scene settings on a per section basis.
`Import settings` - Import .json files.
`Restore default settings` - Restores settings to default.
`Load selected chunks` - Loads currently selected chunks.
`Reload chunks` - Reloads currently selected chunks.

`Canvas size` - (WxH) Drop down has a few presets.
`Set default` - Sets current canvas size as default.
`x0.5`, `x1.5`, `x2` - Modifies the canvas size by the amount. ie Wx0.5,Hx0.5

`Load players`
`Enable biome colors`
`Save dump once every` - Recommended to save often as to not loose any progress on renders if the worst occurs. But not too often as this process does take time.
`Save snapshot for each dump`
`Y min clip` - Default 0; Setting this will cut off blocks below which can speed up renders.
`Y max clip` - Default 256; Setting this will cut off blocks above which can speed up renders.

### Lighting

{% responsive_image path: "assets/images/user_interface/chunky_render_lighting.png" %}

`Sky light` - Default 1.
`Enable emitters` - Toggles emitters on/off.
`Emitter intensity` - Default 13.
`Enable sunlight` - Toggles whether or not sunlight should be traced.
`Draw sun` - Hides the sun texture in the sky.
`Sun intensity` - Default 1.25.
`Sun azimuth`
`Sun altitude`
`Sun color`

### Sky & Fog

### Water

### Camera

### Entities

### Materials

### Postprocessing

### Advanced

### Help
