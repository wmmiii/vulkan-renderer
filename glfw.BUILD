COMMON_HEADERS = [
    "src/internal.h",
    "src/mappings.h",
    "include/GLFW/glfw3.h",
    "include/GLFW/glfw3native.h",
]

COMMON_SOURCES = [
    "src/context.c",
    "src/init.c",
    "src/input.c",
    "src/monitor.c",
    "src/vulkan.c",
    "src/window.c",
]

X11_HEADERS = [
    "src/x11_platform.h",
    "src/xkb_unicode.h",
    "src/posix_time.h",
    "src/posix_thread.h",
    "src/glx_context.h",
    "src/egl_context.h",
    "src/osmesa_context.h",
    "src/linux_joystick.h",
]

X11_SOURCES = [
    "src/x11_init.c",
    "src/x11_monitor.c",
    "src/x11_window.c",
    "src/xkb_unicode.c",
    "src/posix_time.c",
    "src/posix_thread.c",
    "src/glx_context.c",
    "src/egl_context.c",
    "src/osmesa_context.c",
    "src/linux_joystick.c",
]

cc_library(
    name = "glfw",
    srcs = COMMON_SOURCES + X11_SOURCES,
    hdrs = COMMON_HEADERS + X11_HEADERS,
    deps = ["@vulkan//:vulkan"],
    includes = ["include"],
    visibility = ["//visibility:public"],
    defines = ["_GLFW_X11=1"],
    linkopts = ["-ldl", "-lX11", "-lpthread"],
)