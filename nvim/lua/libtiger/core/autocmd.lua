local autocmd = vim.api.nvim_create_autocmd

autocmd({ "InsertLeave" }, {
	callback = function()
		vim.fn.execute("silent! write")
		vim.notify("Autosaved!", vim.log.levels.INFO, {})
	end,
})
