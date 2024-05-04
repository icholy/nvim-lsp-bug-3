vim.o.packpath = ".";

vim.cmd.packadd("nvim-lspconfig")

local lspconfig = require("lspconfig")

lspconfig.gopls.setup({})
lspconfig.gopls2.setup({})
