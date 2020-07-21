---
title: Map View
parent: User Interface
has_children: false
nav_order: 2
---

# Map View
{: .no_toc }

## Table of contents
{: .no_toc .text-delta }

1. TOC
{:toc}

---

## Map

{% responsive_image path: "assets/images/user_interface/chunky_map.png" %}

Chunky displays an overhead view of your world within the center panel under the `Map` tab, highlighted in red in the above image, and should be the default view when you launch Chunky. While this view can be used for mapping purposes it's primary use is for making chunk selections for renders much easier. There are two available modes for the Map; At (map) Scale 13 or greater you will be shown individual blocks and for a Scale of 12 or under you will be displayed a biome view. 

### Controls

- `Left click` and `drag` to move the viewport (also see [Map View Tab]([Map View]({{ site.baseurl }}/docs/userinterface/map.html#map-view-tab)))
- `Left click` to select/deselect a Chunk (at Scale 16 or higher) or a Region (at Scale 15 or lower)
- `Shift` + `Left click` and `drag` to create a draggable chunk selection. Note - Shift does not need to be held continuously only Left click does; On release selection of Chunks is made.
- `Mouse wheel` to change Map Scale (also see [Map View Tab]([Map View]({{ site.baseurl }}/docs/userinterface/map.html#map-view-tab)))
- `Right click` to open a menu with some Selection and Render related options

---

<style type="text/css">
.tg  {border-collapse:collapse;border-spacing:0;}
.tg td{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  overflow:hidden;padding:10px 5px;word-break:normal;}
.tg th{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  font-weight:normal;overflow:hidden;padding:10px 5px;word-break:normal;}
.tg .tg-0pky{border-color:inherit;text-align:left;vertical-align:top}
.tg .tg-0lax{text-align:left;vertical-align:top}
</style>
<table class="tg">
<thead>
  <tr>
    <th class="tg-0pky">{% responsive_image path: "assets/images/user_interface/chunky_map_chunk_selection0.png" %} Prior to left clicking an outline of the highlighted Chunk will be shown.</th>
    <th class="tg-0pky">{% responsive_image path: "assets/images/user_interface/chunky_map_chunk_selection1.png" %} After left clicking the outline will be filled in and Selected.</th>
  </tr>
</thead>
<tbody>
  <tr>
    <td class="tg-0pky">{% responsive_image path: "assets/images/user_interface/chunky_map_region_selection0.png" %} Prior to left clicking an outline of the highlighted Region will be shown.</td>
    <td class="tg-0pky">{% responsive_image path: "assets/images/user_interface/chunky_map_region_selection1.png" %} After left clicking the Region outline will be filled in and Selected.</td>
  </tr>
  <tr>
    <td class="tg-0lax">{% responsive_image path: "assets/images/user_interface/chunky_map_draggable_selection.png" %} Draggable selection</td>
    <td class="tg-0lax">{% responsive_image path: "assets/images/user_interface/chunky_map_rightclick.png" %} Right click menu</td>
  </tr>
</tbody>
</table>

---

{% responsive_image path: "assets/images/user_interface/chunky_map_biome.png" %}

Biome view

---

#### Right click menu

The right click menu provides some selection and render related controls.

- New scene from selection - Create a new 3d scene from selection
- Clear selection - Clear selection
- Move camera here - Moves camera to coordinates of right click
- Select camera-visible chunks - Selects chunks visible to 3d camera and within the Maps current viewport.

{% responsive_image path: "assets/images/user_interface/chunky_map_camera.png" %}

---

## Map View Tab

{% responsive_image path: "assets/images/user_interface/chunky_mapviewtab.png" %}

- Current World - Displays the currently selected Minecraft world
- Change World - Opens prompt to select a Minecraft world

{% responsive_image path: "assets/images/user_interface/chunky_select_world.png" %}

- Reload - Reloads currently selected Minecraft world
- Dimension - Currently selected dimension is highlighted
- Scale - Controls map Scale
- Coordinates - Provides X,Z coordinates of the Maps view
- track player - Centers Maps view on players position
- track camera - Centers Maps view on 3D Cameras position

---

## Chunks Tab

{% responsive_image path: "assets/images/user_interface/chunky_chunkstab.png" %}

- Clear selection - Clears current selection
- Delete selected chunks - WARNING - Delets currently selected chunks; have a backup
- Export chunks to ZIP - Exports selected chunks to a .ZIP archive
- Export view to PNG - Exports current map view to a .PNG image

---

## Options Tab

{% responsive_image path: "assets/images/user_interface/chunky_optionstab.png" %}

- Edit resource packs - Allows you to select a Resource Pack or Minecraft .jar for textures.
- Single color textures - Averages block textures into single color.
- Show launcher when starting Chunky
- Open Scene Directory
- Change Scene Directory

---

### Resource Packs

{% responsive_image path: "assets/images/user_interface/chunky_resource_packs0.png" %}

1. `Add`

2. Select either a .ZIP or a minecraft .jar (found within .minecraft/versions/x/x.jar)

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
    <th class="tg-0lax">{% responsive_image path: "assets/images/user_interface/chunky_resource_packs_szip.png" %}</th>
    <th class="tg-0lax">{% responsive_image path: "assets/images/user_interface/chunky_resource_packs_sjar.png" %}</th>
  </tr>
</thead>
</table>

3. `Left Click` a resource pack in the list and use `Up`/`Down` to move resource packs. Packs higher in the list will have their textures take priority over those below, including the latest Minecraft .jar which should be loaded regardless.

{% responsive_image path: "assets/images/user_interface/chunky_resource_packs_order.png" %}

4. `Apply`

(5.) You may need to to hit `Reload` under the Map View Tab and/or `Reload Chunks` if you have an active render; This should be done automatically...

---

## About Tab

{% responsive_image path: "assets/images/user_interface/chunky_abouttab.png" %}

Has a few useful links and Chunky's credits!

