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

Take a canvas with the following properties: `w`x`h` with a fov defined as `f`

Example: 960x540 (16/9) @ 70 FoV

{% responsive_image path: "assets/images/lenseshift/2x2_truth.png" %}

### Subdivision by half

To calculate the required lense shift values to render four smaller canvases with a [`w`/2 x `h`/2] size with a `f`/2 FoV, given it's relation to canvas height, only the ratio between the `w` & `h` is required to be calulated:

``` x = +/- 1/2 * w/h ```

&

``` y = +/- 1/2 ```

This gives us the following lense shift combinations:

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

[-0.5w/h,+1/2] [0.5w/h,+1/2]

[-0.5w/h,-1/2] [0.5w/h,-1/2]
