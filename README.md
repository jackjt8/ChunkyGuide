<p align="center">
  <img width="100" src="https://raw.githubusercontent.com/llbit/chunky-docs/master/images/logo.png" alt="Chunky logo">
</p>
<h1 align="center">jackjt8's Guide to Chunky </h1>


<div align="center">Chunky is a Minecraft rendering tool that uses Path Tracing to create realistic images of your Minecraft worlds.</div>



<h2 align="center">About Me</h2>

<div align="center">
I have been using Chunky for well over 6 years by this point. Over the years I have learnt so much and I feel it's time to put everything in writing. This guide is my 6 years of knowledge combined with developments and ideas from within the community since it's inception.
</div>

---

<div align="center">
Just in case anyone wants to see my work, you can find all of it in this <a href="https://drive.google.com/drive/folders/0B_SPuj2L5KJSSmpwOVlFWlJtWE0?usp=sharing">Google Drive folder</a>.
</div>

---
Site build instructions (windows)

Install [`ImageMagick 6.9.6 Q16-HDRI-dll`](http://ftp.icm.edu.pl/packages/ImageMagick/binaries/?C=M;O=D) with `system path` and `development headers and libraries for C and C++`. 

Check `convert -version` (non-admin).

Install rmagick using `gem install rmagick --platform=ruby -- --with-opt-lib="c:/path_to_image_magick/lib" --with-opt-include="c:/path_to_image_magick/include"`