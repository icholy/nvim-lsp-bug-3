# Steps

* `go install golang.org/x/tools/gopls@latest`
* `go install github.com/icholy/dummylsp@latest`
* `nvim --clean -u init.lua test.go`
* `:!echo " " >> test.go`
* `:lua vim.lsp.buf.format()`
