cc_binary(
    name = "main",
    srcs = ["main.cpp"],
    defines = ["NDEBUG"],
    copts = ["-O3"],
    deps = ["@glfw", "@glm", "@com_lunarg_sdk_vulkan//:vulkan_repository", "//src/shaders:shaders", "@stb", "@tinyobjloader"],
    data = ["@chaletmodel//:chalet.obj", "@chalettexture//file"],
)

cc_binary(
    name = "debug",
    srcs = ["main.cpp"],
    copts = ["-O3"],
    deps = ["@glfw", "@glm", "@com_lunarg_sdk_vulkan//:vulkan_repository", "//src/shaders:shaders", "@stb", "@tinyobjloader"],
    data = ["@chaletmodel//:chalet.obj", "@chalettexture//file"],
)
