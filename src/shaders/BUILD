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
    out = "frag.spv",
)

glsl_compile(
    name = "vertex",
    src = "shader.vert",
    out = "vertex.spv",
)