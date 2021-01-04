---
title: Java
parent: Installation
has_children: false
nav_order: 1
---

# Java
{: .no_toc }

## Table of contents
{: .no_toc .text-delta }

1. TOC
{:toc}

---

As stated in Installation, Chunky requires Java 8 update 40 or later (with JavaFX) and it is recommended that you use the 64 bit Java version if you have a 64 bit OS.

## Java Downloads

[Oracle Java 8 (including JavaFX)](https://www.java.com/en/download/manual.jsp)

---

## No Class Def Found Error - aka missing JavaFX

```
Exception in thread "main" java.lang.NoClassDefFoundError: javafx/stage/Stage
        at se.llbit.chunky.launcher.ChunkyLauncher.firstTimeSetup(ChunkyLauncher.java:274)
        at se.llbit.chunky.launcher.ChunkyLauncher.main(ChunkyLauncher.java:192)
Caused by: java.lang.ClassNotFoundException: javafx.stage.Stage
        at java.base/jdk.internal.loader.BuiltinClassLoader.loadClass(BuiltinClassLoader.java:581)
        at java.base/jdk.internal.loader.ClassLoaders$AppClassLoader.loadClass(ClassLoaders.java:178)
        at java.base/java.lang.ClassLoader.loadClass(ClassLoader.java:521)
        ... 2 more
```

JavaFX/OpenJFX are often the short straw and unfortunately Chunky needs them. Below are a few solutions.

---

### OpenJDK 8 OpenJFX fix on Ubuntu

Below is a script you can run on Ubuntu to obtain and retain a working OpenJFX. *credit - UNuX#1985 - 11/07/2019*


```
#!/bin/bash
su
apt install openjdk-8-jre
mkdir -p /tmp/chunky-deps-tmp
cd /tmp/chunky-deps-tmp
wget https://launchpadlibrarian.net/363521276/libopenjfx-jni_8u161-b12-1ubuntu2_amd64.deb
wget https://launchpadlibrarian.net/363521272/libopenjfx-java_8u161-b12-1ubuntu2_all.deb
wget https://launchpadlibrarian.net/363521275/openjfx_8u161-b12-1ubuntu2_amd64.deb
dpkg -i *.deb
apt-mark hold openjfx libopenjfx-java libopenjfx-jni
```

---

### OpenJDK 8 OpenJFX fix on Windows

On Windows, OpenJDK does not come with OpenJFX and is does not, at the time of writing, have an official source. Instead you will need to find a pre-compiled build though I would not recommend this.

---

### What about Java 11?

If you wish to run Chunky on Java 11 you will need to add `--module-path` and `--add-modules` in the Launcher under `Advanced` field `Java options` directly to the relevant modules.

For more information, [please see issue #523](https://github.com/llbit/chunky/issues/523).

---

#### OpenJDK 11 OpenJFX on Windows

1. Install OpenJDK of your choice.

2. Download the [OpenJFX Windows SDK from gluonhq](https://gluonhq.com/products/javafx/), extract, and copy the `Bin` and `Lib` folder into the OpenJDK install directory; Typcially, this would be something like `C:\Program Files\AdoptOpenJDK\jdk-11.0.8.10-hotspot` where you should see existing `Bin` and `Lib` folders.

3. In the `Lib` folder found in your OpenJDK install directory, find and delete `jrt-fs.jar` otherwise you may run into an error when attempting to launch Chunky - `java.lang.LayerInstantiationException: Package jdk.internal.jimage in both module java.base and module jrt.fs`.

4. Launch ChunkyLauncher.jar via command line using `java --module-path "path\to\openjdk\lib" --add-modules=javafx.controls,javafx.base,javafx.graphics,javafx.fxml -jar "path\to\chunkylauncher\chunkylauncher.jar"`

    ie

    `java --module-path "C:\Program Files\AdoptOpenJDK\jdk-11.0.8.10-hotspot\lib" --add-modules=javafx.controls,javafx.base,javafx.graphics,javafx.fxml -jar D:\Programs\Chunky_293\chunkylauncher.jar`

5. Inside ChunkyLauncher, under Advanced Settings add the same `--module-path` and `--add-modules` options to the `Java options` field. 

    ie

    `--module-path "C:\Program Files\AdoptOpenJDK\jdk-11.0.8.10-hotspot\lib" --add-modules=javafx.controls,javafx.base,javafx.graphics,javafx.fxml`

---

## Double clicking ChunkyLauncher.jar doesn't work on Windows?

A common issue with Java on Windows is that jar files may not be correctly associated with Java.

This can be fixed by either uninstalling and reinstalling Java or through using an application like [Jarfix](https://johann.loefflmann.net/en/software/jarfix/index.html).

---

## Batch script to launch (Windows)

Don't want to have to type out commands each time you want to launch Chunky? Well in comes Batch scripts!

Create a `.txt` file and enter the following lines, adjusting them where necessary to match the commands you need, then save the file as a `.bat` file in the same directory as ChunkyLauncher.jar.

*Java 8 example*

```
cd /d %~dp0
java -jar ChunkyLauncher.jar --launcher
pause
```

*AdoptOpenJDK\jdk-11 example*

```
cd /d %~dp0
java --module-path "C:\Program Files\AdoptOpenJDK\jdk-11.0.8.10-hotspot\lib" --add-modules=javafx.controls,javafx.base,javafx.graphics,javafx.fxml -jar ChunkyLauncher.jar --launcher
pause
```

You can then right click the .bat file and create a shortcut which can be place on the desktop, pinned to the taskbar, etc.

For more advanced scripts please see the section on [Automation]({{ site.baseurl }}/docs/advanced_techniques/automation.html)
