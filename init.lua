
vim.api.nvim_create_autocmd("FileType", {
	pattern = { "go" },
	callback = function()
		local bufnr = vim.api.nvim_get_current_buf()
		vim.lsp.buf_attach_client(bufnr, vim.lsp.start_client({
			name = "gopls",
			cmd = { "gopls", "serve" },
		}))
		vim.lsp.buf_attach_client(bufnr, vim.lsp.start_client({
			name = "dummy",
			cmd = { "dummylsp" },
		}))
		return true
	end
})
