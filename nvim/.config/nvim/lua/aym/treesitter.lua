require 'nvim-treesitter.configs'.setup {
    ensure_installed = { "go", "typescript", "javascript", "lua", "vim", "sql", "hurl" },
    auto_install = true,
    ignore_install = { "phpdoc" },
    sync_install = false,
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
    },
    rainbow = {
        extended_mode = false,
        colors = {
            "#f1fa8c",
            "#50fa7b",
            "#bd93f9",
            "#ff79c6",
            "#ffb86c",
            "#8be9fd",
            "#ff5555"
        }
    }
}
