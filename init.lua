vim.lsp.set_log_level('debug')

local gopls = vim.lsp.start_client({ name = "gopls", cmd = { "gopls", "serve" } })
local dummy = vim.lsp.start_client({ name = "dummy", cmd = { "dummylsp" } })

vim.api.nvim_create_autocmd("FileType", {
	pattern = { "go" },
	callback = function()
		vim.lsp.buf_attach_client(0, gopls)
		vim.lsp.buf_attach_client(0, dummy)
	end
})
