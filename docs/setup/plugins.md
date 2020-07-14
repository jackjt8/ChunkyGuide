---
title: Plugins
parent: User Interface
has_children: false
nav_order: 2
---

# Plugins
{: .no_toc }

## Installation
{: .no_toc }
Upon opening the `Plugin Manager` within the `Chunky Launcher` a `Plugins` folder will be created in the install directory. Chunky plugins, which are `.jar` files, should be placed in the `Plugins` folder and then enabled within the `Plugin Manager`.

---

## Table of contents
{: .no_toc .text-delta }

1. TOC
{:toc}

---
## Denoising Plugin
created by leMaik

{% responsive_image path: "assets/images/installation/plugins/chunky_denoiser_ui.png" %}

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
    <th class="tg-0lax">Noisy image</th>
    <th class="tg-0lax">Denosied output</th>
  </tr>
</thead>
<tbody>
  <tr>
    <td class="tg-0lax">{% responsive_image path: "assets/images/installation/plugins/1_plugin_test-512.png" %}</td>
    <td class="tg-0lax">{% responsive_image path: "assets/images/installation/plugins/1_plugin_test-512.denoised.png" %}</td>
  </tr>
</tbody>
</table>

For a description and some examples please see the section on [AI Based Denoising under Advanced Techniques]({{ site.baseurl }}/docs/advanced_techniques/denoising.html#ai-based-denoising--plugins).

[GitHub Repo](https://github.com/leMaik/chunky-denoiser)

[Releases page](https://github.com/leMaik/chunky-denoiser/releases){: .btn }


---
## Discord Rich Presence plugin
created by leMaik

{% responsive_image path: "assets/images/installation/plugins/chunky_discord.png" %}

{% responsive_image path: "assets/images/installation/plugins/discord_rtp.png" %}

Unreleased.

---
## Chunky-octree-plugin
created by aTom3333

This is a plugin for Chunky that adds more octree implementations such as Compressed Siblings which, while it does almost half memory usage, cannot be built & results in slower render times. See the GitHub repo for more information and use.

[GitHub Repo](https://github.com/leMaik/chunky-denoiser)

[Releases page]((https://github.com/aTom3333/chunky-octree-plugin/releases/tag/v0.1.0){: .btn }

---
## *demo* Ambient Occlusion Plugin
created by llbit

Preview
{% responsive_image path: "assets/images/installation/plugins/1_plugin_test-0.png" %}

AO
{% responsive_image path: "assets/images/installation/plugins/1_plugin_test-AO.png" %}

[GitHub Repo](https://github.com/llbit/Chunky-AOPlugin)

[Complied Chunky-AOPlugin]({{ site.baseurl }}/assets/downloads/plugins/Chunky-AOPlugin.jar){: .btn }


---
## *demo* Depth Buffer Plugin
created by llbit

Preview
{% responsive_image path: "assets/images/installation/plugins/1_plugin_test-0.png" %}

Depth
{% responsive_image path: "assets/images/installation/plugins/1_plugin_test-depth.png" %}

[GitHub Repo](https://github.com/llbit/Chunky-DepthPlugin)

[Complied Chunky-DepthPlugin]({{ site.baseurl }}/assets/downloads/plugins/Chunky-DepthPlugin.jar){: .btn }


---
## Plugin Templates


---
### *demo* Block Plugin Template
created by llbit

[GitHub Repo](https://github.com/llbit/Chunky-BlockMod)


---
### *demo* Tab Plugin Template
created by llbit

[Github Repo](https://github.com/llbit/Chunky-TabMod)


