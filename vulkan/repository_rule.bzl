def _impl(ctx):
    ctx.download_and_extract(
      url = "https://sdk.lunarg.com/sdk/download/1.1.82.1/linux/vulkansdk-linux-x86_64-1.1.82.1.tar.gz?u=",
      output = 'vulkan_sdk',
      type = "tar.gz",
      sha256 = "9f6ff7e86aef4e4d6d95d8fab23f7734e0c02c2febd0113dc29b8e78cd48743b",
    )

    ctx.file("WORKSPACE", content="""
workspace(name = "com_lunarg_sdk_vulkan")
""")

    ctx.file("BUILD.bazel", content="""
cc_library(
    name = "vulkan_repository",
    srcs = ["vulkan_sdk/1.1.82.1/x86_64/lib/libvulkan.so.1"],
    hdrs = glob(["vulkan_sdk/1.1.82.1/x86_64/include/**"]),
    visibility = ["//visibility:public"],
    strip_include_prefix = "vulkan_sdk/1.1.82.1/x86_64/include",
)

exports_files(["vulkan_sdk/1.1.82.1/x86_64/bin/glslangValidator"])
""")

vulkan_dependencies = repository_rule(
    local = False,
    implementation = _impl,
)