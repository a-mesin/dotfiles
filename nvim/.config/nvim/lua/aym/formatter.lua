local conform = require("conform")

conform.setup({
    formatters_by_ft = {
        lua = { "stylua" },
        javascript = { "biome" },
        sh = { "shfmt" },
        sql = { "sqlfluff" },
        markdown = { "markdownlint" },
        json = { "jq" },
        rust = { "rustfmt" }
    },
})

conform.formatters.sqlfluff = {
    prepend_args = { "--dialect", "postgres" },
}

vim.api.nvim_create_autocmd("BufWritePre", {
    pattern = "*",
    callback = function(args)
        require("conform").format({ bufnr = args.buf })
    end,
})
