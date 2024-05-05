# Steps

* `go install golang.org/x/tools/gopls@latest`
* `go install github.com/icholy/dummylsp@latest`
* `nvim --clean -u init test.go`
* `:!echo " package test" > test.go`
* `:lua vim.lsp.buf.format()`
