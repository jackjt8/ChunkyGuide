---
title: Automation
parent: Advanced Techniques
has_children: false
nav_order: 2
---

# Automating Chunky - Scripting basics
{: .no_toc }

## Table of contents
{: .no_toc .text-delta }

1. TOC
{:toc}

---

## Batch Rendering

This section of the guide covers scripts which can be used to automate the Rendering of multiple scenes without any user input.

### `.bat`ch Rendering (Windows)

This batch script looks for a txt file called queue.txt located in the same directory as this .bat script & ChunkyLauncher.jar.

```
@ECHO off

SET queue=queue.txt
SET /A sppTarget=1024
SET /A dumpFrequency=256
SET outputMode=PFM

FOR /F %%a IN (%queue%) DO (
	ECHO Rendering %%a
	java -jar ChunkyLauncher.jar -set sppTarget %sppTarget% %%a
	java -jar ChunkyLauncher.jar -set dumpFrequency %dumpFrequency% %%s
	java -jar ChunkyLauncher.jar -set outputMode %outputMode% %%a
	java -jar ChunkyLauncher.jar -render %%a -threads 8
)
PAUSE
```

---

### Python3 batch rendering script

Same concept as before. Just need a queue.txt file to list all the scenes and then you need to run the Python script.

```
"""
AutoChunky v1.0.2
Written by colebob9
Coded in Python 3
Released under the MIT license
Source code repo: https://github.com/colebob9/AutoChunky
"""
import shlex
import subprocess
import time


# Config
chunkyPath = "ChunkyLauncher.jar"
threads = 4
# End config


# Title
print("AutoChunky v1.0.2")
print("Written by colebob9")
print("Source Code on GitHub.com/colebob9/AutoChunky")

# Checking queue file
print("Reading queue file...")
print('')
f = open("queue.txt")
queueList = f.readlines()
queueList = [s.rstrip() for s in queueList] # stripping off \n
f.close()
print("Currently queued scenes:")
print(queueList)
print('')

# Queue and render command
for r in queueList:
        print('')
        print("Now rendering: " + r)
        print('')
        subprocess.call(shlex.split("java -jar %s -render %s -threads %s" % (chunkyPath, r, threads)))
        print('waiting for 2')
        time.sleep(2) 

exit
```
---

## Batch "manual" denoising

Used a batch rendering script or otherwise and have a load of noisy images that need denoising? This is the place for you!

### `.bat`ch "manual" denoising

This is a very old script of mine which I used around the time AI base denoisers first came out mainly to denoise the outputs of my interpolation scripts (at 16 SPP they are very noisy). This `.bat` script needs to be located in the same directory as the images to denoise.

```
SET FILE_EXTENSION=png
SET PATH_TO_DENOISER=C:\Denoiser_v2.1
SET OUTPUT_PREFIX=denoised_

for /r %%v in (*.%FILE_EXTENSION%) do %PATH_TO_DENOISER%\Denoiser.exe -i "%%~nv.%FILE_EXTENSION%" -o "%OUTPUT_PREFIX%%%~nv.%FILE_EXTENSION%"

cmd /k
```

---

### Drag'n'drop `.bat`ch denoising

Once setup with the correct paths to the denoiser, drag and drop multiple noisy .png or .pfm files onto this .bat script for it to auto detect related .albedo and .normal feature images and denoise them... hopefully.

[GitHub](https://github.com/jackjt8/win_batch_DN)

---

### Python3 based batch denoising?

Nothing yet. Maybe someone should make something and it'll be linked here.

