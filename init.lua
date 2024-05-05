vim.o.packpath = ".";

vim.cmd.packadd("nvim-lspconfig")

local lspconfig = require("lspconfig")

lspconfig.gopls.setup({})

-- we don't want this LSP to do anything, but we need 2 attached
-- for the bug to trigger
lspconfig.gopls2.setup({
	capabilities = {},
	on_attach = function (client)
		client.server_capabilities = {}
	end
})
