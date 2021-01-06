---
title: Lense Shift
parent: Advanced Techniques
has_children: false
nav_order: 5
---

# Lense Shift
{: .no_toc }

## Table of contents
{: .no_toc .text-delta }

1. TOC
{:toc}

---

## Canvas subdivision for non parallel projections

Take a canvas with the following properties: `W`x`H` with a fov defined as `F`

Example: 960x540 (16/9) @ 70 FoV

{% responsive_image path: "assets/images/lenseshift/2x2_truth.png" %}

### Subdivision by half

To calculate the required lense shift values to render two smaller canvases (side-by-side) with a [`W`/2 x H] = [w x h] size, given it's relation to canvas height, only the ratio between the `w` & `h` of the sub-canvas is required to be calulated

``` x = +/- 1/2 * w/h ```

No FoV change required.

This gives us the following two lense shift combinations:

Examples at 480x540 @ 70 FoV

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
    <th class="tg-0lax">[-0.5w/h,0]</th>
    <th class="tg-0lax">[0.5w/h,0]</th>
  </tr>
</thead>
<tbody>
  <tr>
    <td class="tg-0lax">{% responsive_image path: "assets/images/lenseshift/2x1_n.png" %}</td>
    <td class="tg-0lax">{% responsive_image path: "assets/images/lenseshift/2x1_p.png" %}</td>
  </tr>
</tbody>
</table>

---

### Subdivision by quarters

To calculate the required lense shift values to render four smaller canvases with a [`W`/2 x `H`/2] = [w x h] size with a `F`/2 = f FoV, given it's relation to canvas height, only the ratio between the `w` & `h` of the sub-canvas is required to be calulated:

``` x = +/- 1/2 * w/h ```

&

``` y = +/- 1/2 ```

This gives us the following lense shift combinations:

Examples at 480x270 @ 35 FoV

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
    <th class="tg-0lax">[-0.5w/h,+1/2]</th>
    <th class="tg-0lax">[0.5w/h,+1/2]</th>
  </tr>
</thead>
<tbody>
  <tr>
    <td class="tg-0lax">{% responsive_image path: "assets/images/lenseshift/2x2_np.png" %}</td>
    <td class="tg-0lax">{% responsive_image path: "assets/images/lenseshift/2x2_pp.png" %}</td>
  </tr>
  <tr>
    <td class="tg-0lax">[-0.5w/h,-1/2]</td>
    <td class="tg-0lax">[0.5w/h,-1/2]</td>
  </tr>
  <tr>
    <td class="tg-0lax">{% responsive_image path: "assets/images/lenseshift/2x2_nn.png" %}</td>
    <td class="tg-0lax">{% responsive_image path: "assets/images/lenseshift/2x2_pn.png" %}</td>
  </tr>
</tbody>
</table>

---

### Ninth part subdivision

To calculate the required lense shift values to render nine smaller canvases with a [`W`/3 x `H`/3] = [w x h] size with a **`F`/3**? = f FoV, given it's relation to canvas height, only the ratio between the `w` & `h` of the sub-canvas is required to be calulated:

WIP

### Sixteenth part subdivision

To calculate the required lense shift values to render sixteen smaller canvases with a [`W`/4 x `H`/4] = [w x h] size with a **`F`/4**? = f FoV, given it's relation to canvas height, only the ratio between the `w` & `h` of the sub-canvas is required to be calulated:

WIP
