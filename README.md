# Steps

* `go install golang.org/x/tools/gopls@latest`
* `nvim --clean -u init test.go`
* `./repro.sh` (in a separate shell)
* `:lua vim.lsp.buf.format()`
