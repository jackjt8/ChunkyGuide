---
title: FAQ / Troubleshooting
has_children: true
nav_order: 6
---

# FAQ / Troubleshooting
{: .no_toc }

## Table of contents
{: .no_toc .text-delta }

1. TOC
{:toc}

---

## FAQ

TODO [Read llbit's one for now](https://chunky.llbit.se/faq.html)

---

## Troubleshooting

---

### Chunky does not Launch

[See here](https://jackjt8.github.io/ChunkyGuide/docs/setup/java.html#double-clicking-chunkylauncherjar-doesnt-work-on-windows).

---

### Cannot allocate more than 2GB of RAM?

If Java is installed to `C:\Program Files (x86)\Java\...` this is a 32 bit installation. It is highly recommended to remove this and [install 64 bit Java](https://jackjt8.github.io/ChunkyGuide/docs/setup/java.html#java-downloads).

---

### Exception in thread "main" java.lang.NoClassDefFoundError: javafx/stage/Stage

[More info and potential fixes](https://jackjt8.github.io/ChunkyGuide/docs/setup/java.html#no-class-def-found-error---aka-missing-javafx)

---

### Black blocks with a red X

If Chunky cannot find a Minecraft installation to load textures from a missing texture texture will be shown.

`Options --> Edit resource packs --> Add`

Navigate to `.../.minecraft/versions/` open the corresponding version folder, ie `1.14.4`, and then select the .jar file, ie 1.14.4.jar, and hit `Open`, & `Apply`. Alternatively, navigate a Minecraft Resource Pack stored in a .zip file and `Open` and `Apply` that.

You may need to use `Scene --> Reload chunks` for this to work.

