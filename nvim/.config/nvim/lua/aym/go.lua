local g = vim.g

g.go_highlight_fields = 1
g.go_highlight_functions = 1
g.go_highlight_function_calls = 1
g.go_highlight_extra_types = 1
g.go_highlight_operators = 1

g.go_fmt_autosave = 1
g.go_fmt_command = "goimports"

g.go_metalinter_autosave = 1
g.go_metalinter_autosave_enabled = { 'vet', 'errcheck', 'staticcheck' }
g.go_metalinter_command = 'golangci-lint'

