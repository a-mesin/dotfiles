local wk = require('which-key')
local default_options = { silent = true }
wk.register({
    c = {
        name = 'Go',
        a = { '<cmd>GoCodeAction<cr>', 'Code action' },
        e = { '<cmd>GoIfErr<cr>', 'Add if err' },
        db = { '<cmd>GoDebug<cr>', 'Debug' },
        h = {
            name = 'Helper',
            a = { '<cmd>GoAddTag<cr>', 'Add tags to struct' },
            r = { '<cmd>GoRMTag<cr>', 'Remove tags to struct' },
            c = { '<cmd>GoCoverage<cr>', 'Test coverage' },
            g = { '<cmd>GoCmt<cr>', 'Generate comment' },
            v = { '<cmd>GoVet<cr>', 'Go vet' },
            t = { '<cmd>GoModTidy<cr>', 'Go mod tidy' },
            i = { '<cmd>GoModInit<cr>', 'Go mod init' },
        },
        i = { '<cmd>GoToggleInlay<cr>', 'Toggle inlay' },
        l = { '<cmd>GoLint<cr>', 'Run linter' },
        o = { '<cmd>GoPkgOutline<cr>', 'Outline' },
        r = { '<cmd>GoRun<cr>', 'Run' },
        s = { '<cmd>GoFillStruct<cr>', 'Autofill struct' },
        t = {
            name = 'Tests',
            r = { '<cmd>GoTest<cr>', 'Run tests' },
            a = { '<cmd>GoAlt!<cr>', 'Open alt file' },
            s = { '<cmd>GoAltS!<cr>', 'Open alt file in split' },
            v = { '<cmd>GoAltV!<cr>', 'Open alt file in vertical split' },
            u = { '<cmd>GoTestFunc<cr>', 'Run test for current func' },
            f = { '<cmd>GoTestFile<cr>', 'Run test for current file' },
        },
        x = {
            name = 'Code Lens',
            l = { '<cmd>GoCodeLenAct<cr>', 'Toggle Lens' },
            a = { '<cmd>GoCodeAction<cr>', 'Code Action' },
        },
    },
}, { prefix = '<leader>', mode = 'n', default_options })

wk.register({
    c = {
        name = 'Coding',
        j = { '<cmd>"<,">GoJson2Struct<cr>', 'Json to struct' },
        a = { '<cmd>GoCodeAction<cr>', 'Code Action' },
    },
}, { prefix = '<leader>', mode = 'v', default_options })
