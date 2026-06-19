return {
	{
		"tpope/vim-commentary",
		config = function()
			vim.keymap.set("n", "gcc", ":Commentary<CR>", {
				noremap = true,
				silent = true,
			})
			vim.keymap.set("x", "gc", ":Commentary<CR>", {
				noremap = true,
				silent = true,
			})
		end,
	},
}
