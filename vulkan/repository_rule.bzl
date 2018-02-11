def _impl(ctx):
    ctx.download(
      "https://sdk.lunarg.com/sdk/download/1.0.68.0/linux/vulkansdk-linux-x86_64-1.0.68.0.run?Human=true",
      output='vulkansdk-linux-x86_64-1.0.68.0.run',
      sha256="b08ac6dadb00843a82924349cb9e59910dc6d7efc19f2316367528ed493e26e7",
      executable=True,
    )

    ctx.execute(["bash", "vulkansdk-linux-x86_64-1.0.68.0.run"])

    ctx.file("WORKSPACE", content="""
workspace(name = "vulkan")
""")

    ctx.file("BUILD.bazel", content="""
cc_library(
    name = "vulkan",
    srcs = ["VulkanSDK/1.0.68.0/x86_64/lib/libvulkan.so.1"],
    hdrs = glob(["VulkanSDK/1.0.68.0/x86_64/include/**"]),
    visibility = ["//visibility:public"],
    strip_include_prefix = "VulkanSDK/1.0.68.0/x86_64/include",
)
""")

vulkan = repository_rule(
    local = False,
    implementation = _impl,
)