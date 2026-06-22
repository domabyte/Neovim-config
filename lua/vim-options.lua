vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.g.mapleader = " "

vim.opt.swapfile = false

-- Navigate vim panes better
vim.keymap.set('n', '<c-k>', ':wincmd k<CR>')
vim.keymap.set('n', '<c-j>', ':wincmd j<CR>')
vim.keymap.set('n', '<c-h>', ':wincmd h<CR>')
vim.keymap.set('n', '<c-l>', ':wincmd l<CR>')

vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')
vim.wo.number = true

-- System clipboard integration (macOS pbcopy/pbpaste)
vim.opt.clipboard = 'unnamedplus'

-- Clipboard keybindings (explicit register access)
local map = vim.keymap.set

-- Yank/copy to system clipboard
map({'n', 'v'}, '<leader>y', '"+y',  { desc = 'Yank to system clipboard' })
map({'n', 'v'}, '<leader>Y', '"+Y',  { desc = 'Yank line to system clipboard' })

-- Paste from system clipboard
map('n',        '<leader>p', '"+p',  { desc = 'Paste from system clipboard' })
map('n',        '<leader>P', '"+P',  { desc = 'Paste before from system clipboard' })
map('v',        '<leader>p', '"+p',  { desc = 'Paste from system clipboard (visual)' })

-- Delete/cut to system clipboard
map({'n', 'v'}, '<leader>d', '"+d',  { desc = 'Delete to system clipboard' })
map({'n', 'v'}, '<leader>D', '"+D',  { desc = 'Delete line to system clipboard' })
