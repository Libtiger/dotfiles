return {
	"folke/persistence.nvim",
	event = "BufReadPre", -- this will only start session saving when an actual file was opened
	opts = {
		-- add any custom options here
	},
	config = function()
		require("persistence").setup({
			dir = vim.fn.expand(vim.fn.stdpath("state") .. "/sessions/"), -- directory where session files are saved
			options = { "buffers", "curdir", "tabpages", "winsize" }, -- sessionoptions used for saving
			pre_save = nil, -- a function to call before saving the session
			save_empty = false, -- don't save if there are no open file buffers
		})
		-- restore the session for the current directory
		vim.api.nvim_set_keymap("n", "<leader>wr", [[<cmd>lua require("persistence").load()<cr>]], {})

		-- restore the last session
		vim.api.nvim_set_keymap("n", "<leader>wr", [[<cmd>lua require("persistence").load({ last = true })<cr>]], {})
	end,
}
