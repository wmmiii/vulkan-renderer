load("@com_github_wmmiii_vulkan_renderer//vulkan:glsl_compile.bzl", "glsl_compile")
load("@com_github_wmmiii_vulkan_renderer//injectatron:injectatron.bzl", "injectatron")

cc_library(
    name = "shaders",
    hdrs = [":vertex_shader", ":fragment_shader"],
    includes = ["./"],
    linkstatic = True,
    visibility = ["//visibility:public"],
)

injectatron(
    name = "vertex_shader",
    variable = "VERTEX_SHADER",
    src = "//src/shaders:vertex",
)

injectatron(
    name = "fragment_shader",
    variable = "FRAG_SHADER",
    src = "//src/shaders:frag",
)

glsl_compile(
    name = "frag",
    src = "shader.frag",
    compiler = "@com_lunarg_sdk_vulkan//:VulkanSDK/1.0.68.0/x86_64/bin/glslangValidator",
    out = "frag.spv",
)

glsl_compile(
    name = "vertex",
    src = "shader.vert",
    compiler = "@com_lunarg_sdk_vulkan//:VulkanSDK/1.0.68.0/x86_64/bin/glslangValidator",
    out = "vertex.spv",
)