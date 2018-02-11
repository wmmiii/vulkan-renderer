# Vulkan Renderer
[![Build Status](https://travis-ci.org/wmmiii/vulkan-renderer.svg?branch=master)](https://travis-ci.org/wmmiii/vulkan-renderer)

Simple [Vulkan](https://www.khronos.org/vulkan/) renderer based on the tutorial [*Vulkan Tutorial*](https://vulkan-tutorial.com/) and built with [Bazel](https://docs.bazel.build/versions/master/install.html).

**Please note:** At the time of writing this project has only been tested on Ubuntu 17.10 with an GeForce GTX 1080. Windows and OSX builds do not work yet!

## Prerequisites
1. Debian with the following packages
   1. libxcursor-dev
   2. libxrandr-dev
   3. libxinerama-dev
   4. libxi-dev
2. Bazel 0.10.0

```bash
sudo apt install -y bazel libxcursor-dev libxrandr-dev libxinerama-dev libxi-dev
```

## Run
```bash
bazel run //src:main
```
