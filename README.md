# Steps

* `npm i`
* `nvim --clean -u init test.js`
* `./repro.sh` (in a separate shell)
* `:lua vim.lsp.buf.format()`
