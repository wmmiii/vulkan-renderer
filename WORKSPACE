workspace(name = "com_github_wmmiii_vulkan_renderer")

new_http_archive(
    name = "glfw",
    build_file = "glfw.BUILD",
    sha256 = "4d2843310c02da0c6a810222484941732c98f031a703a2d181dac542ce8c0b02",
    strip_prefix = "glfw-58cc4b2c5c2c9a245e09451437dd6f5af4d60c84",
    url = "https://github.com/glfw/glfw/archive/58cc4b2c5c2c9a245e09451437dd6f5af4d60c84.zip",
)

new_http_archive(
    name = "glm",
    build_file = "glm.BUILD",
    sha256 = "f07704907b0316d97c24413be901368b8af4fde5fcd5358d8cd39c2bd4c3dac0",
    strip_prefix = "glm-0afc784511ccd10cd0ede233a44ed8e2757ba1e4",
    url = "https://github.com/g-truc/glm/archive/0afc784511ccd10cd0ede233a44ed8e2757ba1e4.zip",
)

new_http_archive(
    name = "stb",
    build_file = "stb.BUILD",
    strip_prefix = "stb-e6afb9cbae4064da8c3e69af3ff5c4629579c1d2",
    url = "https://github.com/nothings/stb/archive/e6afb9cbae4064da8c3e69af3ff5c4629579c1d2.zip",
)

new_http_archive(
    name = "tinyobjloader",
    build_file = "tinyobjloader.BUILD",
    strip_prefix = "tinyobjloader-fd06fa49e4e3f4811df4ee566a0ea41832eb0cca",
    url = "https://github.com/syoyo/tinyobjloader/archive/fd06fa49e4e3f4811df4ee566a0ea41832eb0cca.zip",
)

new_http_archive(
    name = "chaletmodel",
    build_file_content = "exports_files([\"chalet.obj\"],visibility = [\"//visibility:public\"],)",
    url = "https://vulkan-tutorial.com/resources/chalet.obj.zip",
)

http_file(
    name = "chalettexture",
    url = "https://vulkan-tutorial.com/resources/chalet.jpg",
)

load("@com_github_wmmiii_vulkan_renderer//vulkan:repository_rule.bzl", "vulkan_dependencies")

vulkan_dependencies(
    name = "com_lunarg_sdk_vulkan",
)
