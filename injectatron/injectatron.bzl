
def _impl(ctx):
    input = ctx.file.src
    output = ctx.actions.declare_file(ctx.label.name + ".h")
    variable = ctx.attr.variable
    args = [input.path, output.path, variable]
    
    ctx.actions.run(
        outputs = [output],
        inputs = [input, ctx.file._injectatron_binary],
        arguments = args,
        progress_message = "INJECTATRONING",
        executable = ctx.executable._injectatron_binary,
    )

injectatron = rule(
    implementation = _impl,
    attrs = {
        "variable": attr.string(mandatory=True),
        "src": attr.label(mandatory=True, single_file=True, allow_files=True),
        "_injectatron_binary": attr.label(executable=True, cfg="host",
                                          allow_files=True, single_file=True,
                                          default=Label("//injectatron:injectatron_binary")),
                                
    },
    outputs = {"h": "%{name}.h"},
)
