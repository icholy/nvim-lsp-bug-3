# Steps

* `go install golang.org/x/tools/gopls@latest`
* `nvim --clean -u init.lua test.go`
* `:!echo " package test" > test.go`
* `:lua vim.lsp.buf.format()`
* `:lua vim.lsp.buf.format()`
