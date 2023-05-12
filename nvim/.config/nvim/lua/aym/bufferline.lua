local highlights = require("nord").bufferline.highlights({
    italic = true,
    bold = true,
    fill = "#181c24",
})

require('bufferline').setup({
    options = {
        separator_style = 'slant',
        always_show_bufferline = false,
        diagnostics = 'nvim_lsp',
        show_buffer_close_icons = false,
        offsets = {
            {
                filetype = 'neo-tree',
                text = 'Neo-tree',
                highlight = 'Directory',
                text_align = 'left',
            }
        },
    },
    highlights = highlights,
})
