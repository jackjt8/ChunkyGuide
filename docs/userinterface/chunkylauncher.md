---
title: Chunky Launcher
parent: User Interface
has_children: false
nav_order: 1
---

# Chunky Launcher
{: .no_toc }

## Table of contents
{: .no_toc .text-delta }

1. TOC
{:toc}

---

## Chunky Launcher

{% responsive_image path: "assets/images/user_interface/chunky_launcher.png" %}

`Version select` - Drop down list which allows you to pick a downloaded Chunky version.

`Check for update` - Checks for updates on chosen update channel.

`Memory limit (MiB)` - Default is 1024 MiB but it is highly recommended that you raise this value to better reflect the amount of memory in your system. Please take into account that the OS and other applications will also require some memory so don't over set this. If you cannot raise this past 2000 MiB double check your Java installation is 64 bit.

---

## Advanced Settings

{% responsive_image path: "assets/images/user_interface/chunky_launcher_advanced.png" %}

`Update Site` - Changes source for updates.

- `http://chunkyupdate.llbit.se/` should be used to obtain Chunky 1.X for Minecraft 1.12.

- `http://chunkyupdate2.llbit.se/` is for llbit's Chunky 2.0 for Minecraft 1.13 however you will need to enable snapshots to get the latest version, `2.0beta6`, else you will be stuck with an older version.

- `http://chunkyupdate.lemaik.de/` is for leMaik's Chunky 2.1 which offers improved Minecraft 1.13 support, over llbit's Chunky 2.0, in addtion to 1.14, 1.15, and 1.16 snapshot support.

`Java Runtime` - Allows you to see and change the Runtime used for Chunky. Does not change the runtime used for the Launcher.

`Java options` - [See below for the list of Java options]({{ site.baseurl }}/docs/userinterface/chunkylauncher.html#java-options)

`Chunky options` - [See below for the list of Chunky options]({{ site.baseurl }}/docs/userinterface/chunkylauncher.html#chunky-options)

`Enable debug console` & `Verbose logging` - The debug console is a seperate window that runs when you launch Chunky. As the name implies it is useful for debugging issues with Chunky and combined with Verbose logging, which enables addtional debug information, can be helpful in fixing bugs and crashes.

`Download snapshots` - Snapshots are nightly/alpha/beta builds of Chunky, depending on the update site used, and may be unstable.

{% responsive_image path: "assets/images/user_interface/chunky_plugin_manager.png" %}

`Manage plugins` - The Plugin manager can be used to manage installed plugins. For a list of available plugins and their function, please refer to the [Pluings page]({{ site.baseurl }}/docs/setup/plugins.html).

---

### Java options

- `-Dprism.order=sw` - Should the Chunky Launcher or Chunky windo appear blank when started this is caused by an issue with the JavaFX hardware renderer for Windows. The only known solution is to add the listed Java command/option. 

- `-DlogLevel` - ERROR, WARNING, INFO - Default is WARNING which will mean Chunky shows warnings for missing items. ERROR should disable missing item warnings.

- `-Dchunky.useLegacyOctree=true` - Disables new octree [see PR #604](https://github.com/llbit/chunky/pull/604). If you run into any issues with the new octree this will fix it. Please also report the issue on GitHub.

---

### Chunky options

- `-tile-width <NUM>` - Modifies the frame subdivision size per worker thread. Can potentially provide a boost to render speed or, if set too high, reduce render speeds. It is recommended to use a tile-width of 16 as this seems to be optimal. [More information / testing]({{ site.baseurl }}/docs/helpwanted/helpwanted.html#explore-different-tile-width-sizes-for-potential-speedups).

---

## Older versions of Chunky

Unfortunately, while the Chunky Launcher does allows you to select any installed version; it only allows newer versions of Chunky to be downloaded. This may cause an issue if you wish to render a Minecraft 1.12 world which requires Chunky 1.X if you have say Chunky 2.2 downloaded.

As a work around to this issue I will be providing copies of older Chunky versions in .zip files which can be extracted into your Chunky directory. This should allow the Launchers `Version Select` to then see and use these older versions.

### For Minecraft 1.2.1 - 1.12.2 (Anvil world format)

[Chunky 1.4.5 zip]({{ site.baseurl }}/assets/downloads/chunky/chunky_1.4.5.zip){: .btn }

[Chunky 1.4.6_beta2 zip]({{ site.baseurl }}/assets/downloads/plugins/chunky_1.4.6b2.zip){: .btn }

### For Minecraft 1.13 (new world format?)

Chunky 2.0_beta6 --- Superseded by Chunky 2.2 which supports 1.13 - 1.16~+.
