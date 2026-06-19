return {
	"mhartington/formatter.nvim",
	config = function()
		local config = require("formatter")

		config.setup({
			logging = true,
			log_level = vim.log.levels.WARN,
			filetype = {
				javascript = { require("formatter.filetypes.javascript").prettier },
				typescript = { require("formatter.filetypes.typescript").prettier },
				json = { require("formatter.filetypes.json").prettier },
				python = { require("formatter.filetypes.python").black },
				sh = { require("formatter.filetypes.sh").shfmt },
			},
		})
		vim.keymap.set("n", "<leader>fm", ":FormatWrite<CR>", {
			noremap = true,
			silent = true,
		})
	end,
}
