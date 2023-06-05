local null_ls = require('null-ls')

local formatting = null_ls.builtins.formatting
local diagnostics = null_ls.builtins.diagnostics

local sources = {
    -- SQL
    diagnostics.sqlfluff.with({ extra_args = { "--dialect", "postgres" } }),
    formatting.sqlfluff.with({ extra_args = { "--dialect", "postgres" } }),

    -- Shell
    formatting.shfmt,
    diagnostics.shellcheck,

    -- Markdown
    formatting.markdownlint,
    diagnostics.markdownlint,

    -- JSON
    formatting.jq,

    -- JavaScript
    formatting.prettier,
    diagnostics.eslint,

    -- Rust
    formatting.rustfmt,
}

null_ls.setup({
    sources = sources
})
