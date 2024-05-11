return {
	"echasnovski/mini.comment",
	verison = "*",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		require("mini.comment").setup()
	end,
}
