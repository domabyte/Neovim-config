return {
	{
		"preservim/tagbar",
		config = function()
			vim.g.tagbar_autofocus = true
			vim.api.nvim_set_keymap("n", "<F8>", ":TagbarToggle<CR>", {
				noremap = true,
				silent = true,
			})
		end,
	},
}
