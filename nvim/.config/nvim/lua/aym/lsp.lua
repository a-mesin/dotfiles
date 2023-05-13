require("neodev").setup({})

local lsp = require('lsp-zero')

lsp.preset('recommended')

lsp.ensure_installed({
    'gopls',
})

local cmp = require('cmp')
local cmp_mappings = lsp.defaults.cmp_mappings({
    ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
    ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
    ['<C-y>'] = cmp.mapping.confirm({ select = true }),
    ['<C-Space>'] = cmp.mapping.complete(),
})

cmp_mappings['<Tab>'] = nil
cmp_mappings['<S-Tab>'] = nil

lsp.setup_nvim_cmp({
    mapping = cmp_mappings
})

lsp.set_preferences({
    suggest_lsp_servers = false,
    sign_icons = {
        error = 'E',
        warn = 'W',
        hint = 'H',
        info = 'I'
    }
})

lsp.on_attach(function(_, bufnr)
    local opts = { buffer = bufnr, remap = false }
    lsp.buffer_autoformat()

    local wk = require('which-key')
    wk.register({
        l = {
            name = "LSP",
            d = {
                '<cmd>Telescope lsp_definitions<cr>',
                'Go to definition'
            },
            r = {
                '<cmd>Telescope lsp_references<cr>',
                'References'
            },
            k = {
                '<cmd>lua vim.lsp.buf.hover()<cr>',
                'Hover'
            },
            wd = {
                '<cmd>Telescope diagnostics<cr>',
                'Diagnostics'
            },
            ws = {
                '<cmd>Telescope lsp_dynamic_workspace_symbols<cr>',
                'Symbols'
            },
            a = {
                '<cmd>lua vim.lsp.buf.code_action()<cr>',
                'Code Action'
            },
            rn = {
                '<cmd> lua vim.lsp.buf.rename()<cr>',
                'Rename'
            }
        }

    }, { prefix = '<leader>', buffer = bufnr, remap = false })

    vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
end)

lsp.setup()
