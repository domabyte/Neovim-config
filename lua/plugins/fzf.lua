return {
	{
		"junegunn/fzf",
		run = function()
			vim.fn["fzf#install"]()
		end,
	},
	{
		"junegunn/fzf.vim",
		config = function()
			vim.api.nvim_set_keymap("n", "<leader>f", ":Files<CR>", {
				noremap = true,
				silent = true,
			})
			vim.api.nvim_set_keymap("n", "<leader>b", ":Buffers<CR>", {
				noremap = true,
				silent = true,
			})
			vim.api.nvim_set_keymap("n", "<leader>fh", ":History<CR>", {
				noremap = true,
				silent = true,
			})
			vim.api.nvim_set_keymap("n", "<leader>k", ":Ag<Space>", {
				noremap = true,
				silent = true,
			})
		end,
	},
}
