return {
	{
		"tpope/vim-eunuch",
		config = function()
			vim.cmd("cnoreabbrev rename Rename")
		end,
	},
	{
		"scrooloose/nerdtree",
		config = function()
			vim.api.nvim_set_keymap("n", "<leader>nt", ":NERDTreeToggle<CR>", {
				noremap = true,
				silent = true,
			})
		end,
	},
}
