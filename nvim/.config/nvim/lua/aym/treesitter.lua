require 'nvim-treesitter.configs'.setup {
    ensure_installed = { "go", "typescript", "javascript", "lua", "vim", "sql", "templ" },
    ignore_install = { "phpdoc" },
    sync_install = false,
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
    },
    rainbow = {
        enable = true,
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

local treesitter_parser_config = require "nvim-treesitter.parsers".get_parser_configs()
treesitter_parser_config.templ = {
    install_info = {
        url = "https://github.com/vrischmann/tree-sitter-templ.git",
        files = { "src/parser.c", "src/scanner.c" },
        branch = "master",
    },
}

vim.treesitter.language.register('templ', 'templ')
