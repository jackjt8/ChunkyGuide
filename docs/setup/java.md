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

Recommended OpenJDK:
[AdoptOpenJDK 8 (LTS) HotSpot](https://adoptopenjdk.net/)

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

On Windows, OpenJDK does not come with OpenJFX and is does not, at the time of writing, have an official source. Instead you will need to find a pre-compiled build like below.

[pre-compiled OpenJFX 8u172-b11](https://github.com/SkyLandTW/OpenJFX-binary-windows/releases){: .btn }

---

### What about Java 11?

If you wish to run Chunky on Java 11 you will need to add `--module-path` and `--add-modules` in the Launcher under `Advanced` field `Java options` directly to the relevant modules.

For more information, [please see issue #523](https://github.com/llbit/chunky/issues/523).

---

## Double clicking ChunkyLauncher.jar doesn't work on Windows?

A common issue with Java on Windows is that jar files may not be correctly associated with Java.

This can be fixed by either uninstalling and reinstalling Java or through using an application like [Jarfix](https://johann.loefflmann.net/en/software/jarfix/index.html).
