DEPS = [
    "//src/shaders:shaders",
    "@com_lunarg_sdk_vulkan//:vulkan_repository",
    "@glfw",
    "@glm",
    "@stb",
    "@tinyobjloader",
]

DATA = [
    "@chaletmodel//:chalet.obj",
    "@chalettexture//file",
]

cc_binary(
    name = "main",
    srcs = ["main.cpp"],
    defines = ["NDEBUG"],
    copts = ["-O3"],
    deps = DEPS,
    data = DATA,
)

cc_binary(
    name = "debug",
    srcs = ["main.cpp"],
    copts = ["-O3"],
    deps = DEPS,
    data = DATA,
)
