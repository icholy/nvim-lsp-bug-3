vim.lsp.set_log_level('debug')

local gopls = vim.lsp.start_client({ name = "gopls", cmd = { "gopls", "serve" } })
local dummy = vim.lsp.start_client({ name = "dummy", cmd = { "dummylsp" } })

vim.api.nvim_create_autocmd("FileType", {
	pattern = { "go" },
	callback = function()
		local bufnr = vim.api.nvim_get_current_buf()
		vim.lsp.buf_attach_client(bufnr, gopls)
		vim.lsp.buf_attach_client(bufnr, dummy)
	end
})
