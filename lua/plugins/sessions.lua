return {
  "rmagatti/auto-session",
  dependencies = { "rmagatti/session-lens" },
  config = function()
    require("auto-session").setup({
      auto_session_suppress_dirs = { "~/", "~/Projects", "~/Downloads", "~/Files", "/" },
      session_lens = {
        buftypes_to_ignore = {},
        load_on_setup  = true,
        theme_conf     = { border = true },
        previewer      = false,
      },
    })

    vim.keymap.set("n", "<leader>ls", require("session-lens").search_session, {
      noremap = true,
      silent = true,
    })
  end,
}
