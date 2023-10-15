require("neodev").setup({})

local lsp = require('lsp-zero').preset({})

lsp.ensure_installed({
    'gopls'
})

lsp.on_attach(function(_, bufnr)
    local opts = { buffer = bufnr, remap = false }
    lsp.buffer_autoformat()
    lsp.default_keymaps(opts)

    vim.keymap.set("n", "<leader>fwd", '<cmd>Telescope diagnostics<cr>', opts)
    vim.keymap.set("n", "<leader>fws", '<cmd>Telescope lsp_dynamic_workspace_symbols<cr>', opts)
    vim.keymap.set("n", "<leader>ca", '<cmd>lua vim.lsp.buf.code_action()<cr>', opts)
    vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
    vim.keymap.set("n", "<leader>rn", function() vim.lsp.buf.rename() end, opts)
end)

lsp.setup()

require("lspconfig").tailwindcss.setup({
    filetypes = {
        'templ',
        'gohtml',
        'html',
        'markdown',
        'javascript',
        'vue',
    },
    init_options = {
        userLanguages = {
            templ = "html"
        }
    }
})

local cmp = require('cmp')
require("luasnip.loaders.from_vscode").lazy_load()

cmp.setup({
    sources = {
        { name = "path" },
        { name = "nvim_lsp" },
        { name = "nvim_lua" },
        { name = "buffer",  keyword_length = 3 },
        { name = "luasnip", keyword_length = 2 },
    },
    mapping = {
        ["<C-Space>"] = cmp.mapping.complete({}),
    }
})
