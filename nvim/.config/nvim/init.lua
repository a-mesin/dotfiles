local init = function()
        require('options')
        require('mappings')
        require('plugins')
        require('theme')
        require('lsp')
        require('go')
end

init()
