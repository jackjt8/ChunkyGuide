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

[Download ChunkyLauncher.jar](https://chunkyupdate.lemaik.de/ChunkyLauncher.jar){: .btn }

The Chunky Launcher is a Java application that handles updating Chunky, version selection, Plugins, and various settings. You can start the Launcher by double clicking on the donloaded Jar file, or by typing the following command into a terminal/command prompt from the appropriate directory.

`java -jar ChunkyLauncher.jar`

![](img/installation/chunky_first_time_setup.png)

The first time you start Chunky Launcher you will be asked to pick a settings directory for Chunky. I personally do not use the recommended Home Directory install location. Instead I like using Program or Working Directory such that I can keep multiple seperate installations of Chunky. The reason I do this will become clear with some of the advanced topics this guide will cover later.

![](img/installation/chunky_launcher.png)

After making this selection the Chunky Launcher will be shown. Please hit `Check for update` to show any available updates and then `Update to New Version` to get Chunky Launcher to download required files. Once done hit `Launch Chunky` to use the downloaded version. Or `Close` and use the `Launch` option within Chunky Launcher.

![](img/installation/chunky_update_available.png)

Note - If no update is found or the download of the update fails you may need to enable `Download snapshots` from the advanced section of the Launcher.

---

## Chunky Launcher

![](img/installation/chunky_launcher.png)

`Version select` - Drop down list which allows you to pick a downloaded Chunky version.

`Check for update` - Checks for updates on chosen update channel.

`Memory limit (MiB)` - Default is 1024 MiB but it is highly recommended that you raise this value to better reflect the amount of memory in your system. Please take into account that the OS and other applications will also require some memory so don't over set this. If you cannot raise this past 1500 MiB double check your Java installation is 64 bit.

### Advanced Settings

![](img/installation/chunky_launcher_advanced.png)

`Update Site` - Changes source for updates.

- `http://chunkyupdate.llbit.se/` should be used to obtain Chunky 1.X for Minecraft 1.12.

- `http://chunkyupdate2.llbit.se/` is for llbit's Chunky 2.0 for Minecraft 1.13 however you will need to enable snapshots to get the latest version, `2.0beta6`, else you will be stuck with an older version.

- `http://chunkyupdate.lemaik.de/` is for leMaik's Chunky 2.1 which offers improved Minecraft 1.13 support, over llbit's Chunky 2.0, in addtion to 1.14, 1.15, and 1.16 snapshot support.

`Enable debug console` & `Verbose logging` - The debug console is a seperate window that runs when you launch Chunky. As the name implies it is useful for debugging issues with Chunky and combined with Verbose logging, which enables addtional debug information, can be helpful in fixing bugs and crashes.

`Download snapshots` - Snapshots are nightly/alpha/beta builds of Chunky, depending on the update site used, and may be unstable.

`Manage plugins` - The Plugin manager can be used to manage installed plugins.

![](img/installation/chunky_plugin_manager.png)

