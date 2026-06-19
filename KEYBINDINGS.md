# Neovim Keybindings Reference

## Window Navigation (`vim-options.lua`)
| Key | Action |
|-----|--------|
| `<C-k>` | Move to window above |
| `<C-j>` | Move to window below |
| `<C-h>` | Move to window left |
| `<C-l>` | Move to window right |
| `<leader>h` | Clear search highlight |

## File Navigation
| Key | Action | Plugin |
|-----|--------|--------|
| `<C-p>` | Find files | snacks / telescope |
| `<leader>fg` | Live grep | snacks / telescope |
| `<leader><leader>` | Recent files | snacks / telescope |
| `<leader>fb` | Buffers list | snacks |
| `<leader>f` | Files (fzf) | fzf |
| `<leader>b` | Buffers (fzf) | fzf |
| `<leader>fh` | File history | fzf |
| `<leader>k` | Ag search | fzf |
| `<C-f>` | File tree (right) | neo-tree |
| `<C-a>` | Buffer tree (float) | neo-tree |
| `<leader>nr` | Rename file | neo-tree |
| `<C-n>` | File explorer | snacks / nvim-tree |
| `-` | Float file browser | oil |

## LSP (`lsp-config.lua`)
| Key | Action |
|-----|--------|
| `K` | Hover docs |
| `<leader>gd` | Go to definition |
| `<leader>gr` | Go to references |
| `<leader>ca` | Code action |
| `<leader>gf` | Format buffer |
| `<space>rn` | Rename symbol |

## Git (`git-stuffs.lua`)
| Key | Action |
|-----|--------|
| `<leader>gp` | Preview hunk |
| `<leader>gt` | Toggle line blame |
| `<leader>lg` | Open Lazygit |
| `<leader>gl` | Lazygit log (current file) |

## Debugging (`debugging.lua`)
| Key | Action |
|-----|--------|
| `<leader>dt` | Toggle breakpoint |
| `<leader>dc` | Continue |

## Testing (`vim-test.lua`)
| Key | Action |
|-----|--------|
| `<leader>t` | Test nearest |
| `<leader>T` | Test file |
| `<leader>a` | Test suite |
| `<leader>l` | Test last |
| `<leader>tv` | Test visit |

## Sessions (`sessions.lua`)
| Key | Action |
|-----|--------|
| `<leader>ls` | Search / restore session |

## Editing
| Key | Action | Plugin |
|-----|--------|--------|
| `gcc` | Toggle comment (normal) | comments |
| `gc` | Toggle comment (visual) | comments |
| `<leader>fm` | Format & write | formatter |

## Scratch / AI
| Key | Action | Plugin |
|-----|--------|--------|
| `<leader>sf` | Toggle scratch buffer | snacks |
| `<leader>S` | Pick scratch buffer | snacks |
| `<leader>aa` | Toggle Avante AI sidebar | avante |
| `<leader>ar` | Refresh AI response | avante |
| `<leader>ae` | Edit selection with AI (visual) | avante |
| `<leader>aA` | Ask AI without sidebar | avante |

## Misc
| Key | Action | Plugin |
|-----|--------|--------|
| `<F8>` | Toggle tagbar | tagbar |

## Notes
- `<C-p>`, `<leader>fg`, `<leader><leader>`, `<C-n>`: bound by both Snacks and Telescope/nvim-tree — last loaded plugin wins
