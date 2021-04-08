---
title: Installation
has_children: true
nav_order: 3
---

# Installing Chunky
{: .no_toc }

## Table of contents
{: .no_toc .text-delta }

1. TOC
{:toc}

---

## Prerequisites - Java

Chunky requires Java 8 update 40 or later (with JavaFX) and we recommend using the 64 bit version if you have a 64 bit OS.

### Java Downloads

[Oracle Java 8 (including JavaFX)](https://www.java.com/en/download/manual.jsp)

Notes

- OpenJDK varients will work but some addtional setup may be required.

- You may run into issues installing Oracle Java on Ubuntu; JavaFX is missing.

- Newer versions of Java, ie Java 9, Java 11, etc., may also require addtional setup.

---

## First time setup

[ChunkyLauncher.jar](https://chunkyupdate.lemaik.de/ChunkyLauncher.jar){: .btn }

The Chunky Launcher is a Java application that handles updating Chunky, version selection, Plugins, and various settings. You can start the Launcher by double clicking on the donloaded Jar file, or by typing the following command into a terminal/command prompt from the appropriate directory.

`java -jar ChunkyLauncher.jar`

{% responsive_image path: "assets/images/installation/chunky_first_time_setup.png" %}

The first time you start Chunky Launcher you will be asked to pick a settings directory for Chunky. I personally do not use the recommended Home Directory install location. Instead I like using Program or Working Directory such that I can keep multiple seperate installations of Chunky. The reason I do this will become clear with some of the advanced topics this guide will cover later.

{% responsive_image path: "assets/images/user_interface/chunky_launcher.png" %}

After making this selection the Chunky Launcher will be shown. Please hit `Check for update` to show any available updates and then `Update to New Version` to get Chunky Launcher to download required files. Once done hit `Launch Chunky` to use the downloaded version. Or `Close` and use the `Launch` option within Chunky Launcher.

{% responsive_image path: "assets/images/installation/chunky_update_available.png" %}

Note - If no update is found or the download of the update fails you may need to enable `Download snapshots` from the advanced section of the Launcher.

For further information on the functionally of the Chunky Launcher, including how to obtain different Chunky versions, please refer to the [User Interface section on the Chunky Launcher]({{ site.baseurl }}/docs/userinterface/chunkylauncher.html).

---

## Older versions of Chunky

Unfortunately, while the Chunky Launcher does allows you to select any installed version, it only allows newer versions of Chunky to be downloaded. This may cause an issue if you wish to render a Minecraft 1.12 world which requires Chunky 1.X if you have say Chunky 2.3 downloaded.

https://jackjt8.github.io/ChunkyGuide/docs/userinterface/chunkylauncher.html#advanced-settings

Opposed to completing the First time setup steps listed above, setting the [Update Site field under Advanced Settings in the Chunky Launcher]({{ site.baseurl }}/docs/userinterface/chunkylauncher.html#advanced-settings) to `http://chunkyupdate.llbit.se/` with the `Download snapshots`checkbox disabled and clicking on `Check for update` should give you a download prompt for Chunky 1.4.5 (mc 1.2.1 - 1.12.2). Enabling `Download snapshots` and checking for updates again should give you Chunky 1.4.6 beta 2 which a few new features and bugs fixes including support for mc 1.13 resource packs ONLY (no support for mc 1.13 worlds). It it then recommended to switch the `Update Site` back to `https://chunkyupdate.lemaik.de/`, disabling `Download snapshots`, and checking and downloading Chunky 2.3.0 or any stable release prior to enabling `Download snapshots`. 

Following these steps should give you Chunky 1.4.5 & 1.4.6b2 for Minecraft <1.12.2 rendering and at least Chunky 2.3.0 (stable) with an experimental Chunky 2.4 build.

If you have already performed the first time setup and cannot download older versions as a work around to this issue I will be providing copies of older Chunky versions in .zip files; which can be extracted into the root of your Chunky directory. This should allow the Launchers `Version Select` to then see and use these older versions.

### For Minecraft 1.2.1 - 1.12.2 (Anvil world format)

[Chunky 1.4.5 zip]({{ site.baseurl }}/assets/downloads/chunky/chunky_1.4.5.zip){: .btn }

[Chunky 1.4.6_beta2 zip]({{ site.baseurl }}/assets/downloads/chunky/chunky_1.4.6b2.zip){: .btn }

### For Minecraft 1.13 (new world format)

Chunky 2.0_beta6 --- Superseded by Chunky 2.3 which supports 1.13 - 1.16~+

[Chunky 2.3.0]({{ site.baseurl }}/assets/downloads/chunky/chunky_2.3.0.zip){: .btn }
