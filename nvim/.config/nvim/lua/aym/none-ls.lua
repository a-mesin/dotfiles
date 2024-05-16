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
    formatting.prettier.with {
        filetypes = { 'html', 'javascript', 'typescript', 'css', 'scss', 'json', 'markdown', 'typescriptreact', 'js' }
    },
    diagnostics.eslint,

    -- Rust
    formatting.rustfmt,

    -- Kotlin
    diagnostics.ktlint,
    formatting.ktlint,
}

null_ls.setup({
    sources = sources
})
