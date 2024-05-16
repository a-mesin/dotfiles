local null_ls = require('null-ls')

local formatting = null_ls.builtins.formatting
local diagnostics = null_ls.builtins.diagnostics

local sources = {
    -- SQL
    diagnostics.sqlfluff.with({ extra_args = { "--dialect", "postgres" } }),
    formatting.sqlfluff.with({ extra_args = { "--dialect", "postgres" } }),

    -- Shell
    formatting.shfmt,
    require("none-ls-shellcheck.diagnostics"),

    -- Markdown
    formatting.markdownlint,
    diagnostics.markdownlint,

    -- JSON
    require("none-ls.formatting.jq"),

    -- JavaScript
    formatting.prettier.with {
        filetypes = { 'html', 'javascript', 'typescript', 'css', 'scss', 'json', 'markdown', 'typescriptreact', 'js' }
    },
    require("none-ls.diagnostics.eslint_d"),

    -- Rust
    require('none-ls.formatting.rustfmt'),

    -- Kotlin
    diagnostics.ktlint,
    formatting.ktlint,
}

null_ls.setup({
    sources = sources
})
