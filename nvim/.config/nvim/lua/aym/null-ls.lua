local null_ls = require('null-ls')
local sources = {
    null_ls.builtins.diagnostics.sqlfluff.with({
        extra_args = { "--dialect", "postgres" },
    }),
    null_ls.builtins.formatting.sqlfluff.with({
        extra_args = { "--dialect", "postgres" },
    }),
    null_ls.builtins.formatting.shfmt,
    null_ls.builtins.diagnostics.shellcheck
}

null_ls.setup({
    sources = sources
})
