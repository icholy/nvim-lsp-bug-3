# Steps

* `go install golang.org/x/tools/gopls@latest`
* `nvim --clean -u init.lua test.go`
* `:!echo " " >> test.go`
* `:lua vim.lsp.buf.format()`
