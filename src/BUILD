cc_binary(
    name = "main",
    srcs = ["main.cpp"],
    defines = ["NDEBUG"],
    deps = ["@glfw", "@glm", "@com_lunarg_sdk_vulkan//:vulkan_repository", "//src/shaders:shaders"],
)

cc_binary(
    name = "debug",
    srcs = ["main.cpp"],
    deps = ["@glfw", "@glm", "@com_lunarg_sdk_vulkan//:vulkan_repository", "//src/shaders:shaders"],
)