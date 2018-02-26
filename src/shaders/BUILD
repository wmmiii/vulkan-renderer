load("@com_github_wmmiii_vulkan_renderer//vulkan:glsl_compile.bzl", "glsl_compile")

glsl_compile(
    name = "frag",
    src = "shader.frag",
    compiler = "@com_lunarg_sdk_vulkan//:VulkanSDK/1.0.68.0/x86_64/bin/glslangValidator",
    out = "frag.spv",
    visibility = ["//visibility:public"],
)

glsl_compile(
    name = "vertex",
    src = "shader.vert",
    compiler = "@com_lunarg_sdk_vulkan//:VulkanSDK/1.0.68.0/x86_64/bin/glslangValidator",
    out = "vertex.spv",
    visibility = ["//visibility:public"],
)