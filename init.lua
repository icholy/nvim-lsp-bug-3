vim.o.packpath = ".";

vim.cmd.packadd("nvim-lspconfig")

local lspconfig = require("lspconfig")

lspconfig.tsserver.setup({})
lspconfig.eslint.setup({})
