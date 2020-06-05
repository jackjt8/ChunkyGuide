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

