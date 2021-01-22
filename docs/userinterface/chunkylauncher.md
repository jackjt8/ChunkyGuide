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

- `-DlogLevel=INFO` - `ERROR`,`WARNING`, `INFO` - Default is WARNING which will mean Chunky shows warnings for missing items. ERROR should disable missing item warnings.

- `-Dchunky.mapLoaderThreads=3` - Controls how many threads should be used for loading the Map View. Default is 3. Raising this value can improve Map load times at the cost of increased CPU usage when the map is being drawn.

WIP PBR builds of Chunky have addtional options

- `-Dchunky.pbr.emittance=labpbr` - `labpbr`, `oldpbr` - Tells Chunky which format the emittance map is in.

- `-Dchunky.pbr.specular=labpbr` - `labpbr`, `oldpbr` - Tells Chunky which format the specular map is in.

---

### Chunky options

- `-tile-width <NUM>` - Modifies the frame subdivision size per worker thread. Can potentially provide a boost to render speed or, if set too high, reduce render speeds. It is recommended to use a tile-width of 16 as this seems to be optimal. [More information / testing]({{ site.baseurl }}/docs/helpwanted/helpwanted.html#explore-different-tile-width-sizes-for-potential-speedups).

- `-spp-per-pass <NUM>` - The spp-per-pass defines how many samples a certain tile should be render to before moving onto the next tile. The default value of 1 would mean each tile would be sampled to the same SPP before incrementing further. This means that not only will the Preview Window display the most up-to-date SPP but we are able to stop the render upon it completing queued samples for the pass. Raising the spp-per-pass breaks a lot of GUI functionality however, due to a multitude of factors, rendering performance is improved. Recommended that you only use this option for headless operation.

---

## Older versions of Chunky

Unfortunately, while the Chunky Launcher does allows you to select any installed version; it only allows newer versions of Chunky to be downloaded. This may cause an issue if you wish to render a Minecraft 1.12 world which requires Chunky 1.X if you have say Chunky 2.2 downloaded.

As a work around to this issue I will be providing copies of older Chunky versions in .zip files which can be extracted into your Chunky directory. This should allow the Launchers `Version Select` to then see and use these older versions.

### For Minecraft 1.2.1 - 1.12.2 (Anvil world format)

[Chunky 1.4.5 zip]({{ site.baseurl }}/assets/downloads/chunky/chunky_1.4.5.zip){: .btn }

[Chunky 1.4.6_beta2 zip]({{ site.baseurl }}/assets/downloads/plugins/chunky_1.4.6b2.zip){: .btn }

### For Minecraft 1.13 (new world format?)

Chunky 2.0_beta6 --- Superseded by Chunky 2.2 which supports 1.13 - 1.16~+.

---

## Bypassing the ChunkyLauncher (ie directly running Chunky-Core)

The ChunkyLauncher will only display and run Chunky versions which have a valid version .json located within `chunky.home\versions\`. Valid .json files need to have a correct md5 hash and file size else you will get an integrity issue stopping that version from launching.

To bypass the ChunkyLauncher and these checks you can directly launch `chunky-cores` you can directly invoke java with `-classpath` ensuring you add all required.

ie `java -Xmx4G -classpath ...\lib\chunky-core-2.3.0-56-g4419bd7e.jar;...\lib\fastutil-8.4.4.jar;...\lib\commons-math3-3.2.jar`

Additional arguments may be required or preferred such as specifying Chunky Home using `-Dchunky.home` or adding JavaFX modules.

### View command used to launch Chunky on Windows

Launch a version of Chunky via the launcer. Open Task Manager and under `processes` find the JRE/JDK process for that Chunky version. Right click and `Go to Details`. From here, right click the top of the table and `Select Columns`, scroll down to and enable `Command Line`. Then, assuming the java.exe process is still selected, press `ctrl+c`. Paste into any document.  From here we can extract and modify the command freely.

Example of what you can extract from Task Manager:

```
Name	PID	Status	Username	CPU	Memory (active private working set)	Command line	UAC virtualisation
java.exe	7540	Running	<username>	00 	421,008 K	**"C:\Program Files\AdoptOpenJDK\jdk-11.0.9.101-hotspot\bin\java.exe" -Xmx4096m -Dchunky.home=D:\Programs\Chunky_293 --module-path "C:\Program Files\openjfx\lib" --add-modules javafx.controls,javafx.fxml -classpath D:\Programs\Chunky_293\lib\chunky-core-2.3.0-56-g4419bd7e.jar;D:\Programs\Chunky_293\lib\fastutil-8.4.4.jar;D:\Programs\Chunky_293\lib\commons-math3-3.2.jar -DlogLevel=INFO se.llbit.chunky.main.Chunky -tile-width 16**	Disabled
```
