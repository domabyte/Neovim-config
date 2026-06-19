# Neovim Config

Personal Neovim setup running on Arch Linux (Omarchy). Uses [lazy.nvim](https://github.com/folke/lazy.nvim) for plugin management.

## Table of Contents

- [Installation](#installation)
- [Dependencies](#dependencies)
- [Plugins](#plugins)
- [Keybindings](#keybindings)
- [Mason Setup](#mason-setup)

---

## Installation

### Arch Linux

```bash
# Install Neovim
sudo pacman -S neovim

# Clone this config
git clone https://github.com/domabyte/Neovim-config.git ~/.config/nvim

# Open Neovim — lazy.nvim will auto-install all plugins on first launch
nvim
```

### Other Linux (Ubuntu/Debian)

```bash
# Install Neovim (latest)
wget https://github.com/neovim/neovim/releases/latest/download/nvim-linux-x86_64.tar.gz
tar xzvf nvim-linux-x86_64.tar.gz
echo 'alias nvim="~/nvim-linux-x86_64/bin/nvim"' >> ~/.bash_aliases
source ~/.bash_aliases

mkdir -p ~/.config/nvim
git clone https://github.com/domabyte/Neovim-config.git ~/.config/nvim
nvim
```

---

## Dependencies

Install these for full formatter, debugger, and search support.

### Arch Linux

```bash
sudo pacman -S go shfmt python-black the_silver_searcher ctags
```

### Ubuntu/Debian

```bash
sudo apt install -y golang-go shfmt black silversearcher-ag exuberant-ctags
```

---

## Plugins

### UI & Theme
| Plugin | Description |
|--------|-------------|
| `catppuccin/nvim` | Catppuccin color theme |
| `goolord/alpha-nvim` | Dashboard / start screen |
| `nvim-lualine/lualine.nvim` | Status line |
| `folke/snacks.nvim` | Swiss-army: picker, explorer, lazygit, notifier, scratch buffers |

### File Navigation
| Plugin | Description |
|--------|-------------|
| `nvim-telescope/telescope.nvim` | Fuzzy finder with UI select extension |
| `junegunn/fzf` + `junegunn/fzf.vim` | FZF-powered file/buffer/history search |
| `nvim-neo-tree/neo-tree.nvim` | File tree explorer |
| `scrooloose/nerdtree` | Classic file tree (via nvim-tree.lua) |
| `stevearc/oil.nvim` | Edit filesystem like a buffer |

### LSP & Completion
| Plugin | Description |
|--------|-------------|
| `williamboman/mason.nvim` | LSP/linter/formatter installer |
| `neovim/nvim-lspconfig` | LSP client configuration |
| `hrsh7th/nvim-cmp` | Autocompletion engine |
| `L3MON4D3/LuaSnip` | Snippet engine with VSCode snippet support |
| `nvimtools/none-ls.nvim` | Inject formatters/linters into LSP |

### AI & Copilot
| Plugin | Description |
|--------|-------------|
| `yetone/avante.nvim` | Claude AI sidebar (chat, edit, refactor) |
| `github/copilot.vim` | GitHub Copilot inline suggestions |

### Git
| Plugin | Description |
|--------|-------------|
| `tpope/vim-fugitive` | Git commands inside Neovim |
| `lewis6991/gitsigns.nvim` | Hunk preview, blame, diff signs in gutter |

### Editing & Formatting
| Plugin | Description |
|--------|-------------|
| `tpope/vim-commentary` | Toggle line/selection comments |
| `windwp/nvim-autopairs` | Auto-close brackets, quotes, etc. |
| `mhartington/formatter.nvim` | File formatters (prettier, black, shfmt) |
| `nvim-treesitter/nvim-treesitter` | Syntax highlighting & indentation |

### Debugging & Testing
| Plugin | Description |
|--------|-------------|
| `mfussenegger/nvim-dap` | Debug Adapter Protocol client |
| `rcarriga/nvim-dap-ui` | DAP UI (auto-opens on debug start) |
| `vim-test/vim-test` | Run tests for any language |

### Utilities
| Plugin | Description |
|--------|-------------|
| `preservim/tagbar` | Symbol/tag browser sidebar |
| `rmagatti/auto-session` | Automatic session save/restore |
| `christoomey/vim-tmux-navigator` | Seamless Neovim ↔ tmux pane navigation (auto-disabled outside tmux) |
| `tpope/vim-eunuch` | Unix file commands (Rename, Move, Delete…) |
| `swagger-preview` | Open Swagger/OpenAPI specs in browser |

---

## Keybindings

> Leader key is `<Space>`

### Navigation

| Key | Action |
|-----|--------|
| `<C-h/j/k/l>` | Move between splits / tmux panes |
| `<C-p>` | Find files (Snacks) |
| `<Space><Space>` | Recent files |
| `<Space>fb` | Buffer list (Snacks) |
| `<Space>fg` | Live grep across project |
| `<Space>f` | FZF file finder |
| `<Space>b` | FZF buffer list |
| `<Space>fh` | FZF file history |
| `<Space>k` | FZF silver searcher (Ag) |
| `<C-f>` | Neo-tree file tree (right) |
| `<C-a>` | Neo-tree buffer list (float) |
| `<C-n>` | File explorer (Snacks / NERDTree) |
| `-` | Oil float file manager |
| `<Space>nr` | Rename file (Neo-tree) |
| `<Space>ls` | Search & restore sessions |
| `<F8>` | Toggle tagbar |

### LSP

| Key | Action |
|-----|--------|
| `K` | Hover documentation |
| `<Space>gd` | Go to definition |
| `<Space>gr` | Find all references |
| `<Space>ca` | Code actions |
| `<Space>gf` | Format buffer |
| `<Space>rn` | Rename symbol |

### Git

| Key | Action |
|-----|--------|
| `<Space>lg` | Open Lazygit |
| `<Space>gl` | Lazygit log for current file |
| `<Space>gp` | Preview hunk |
| `<Space>gt` | Toggle line blame |

### Debugging

| Key | Action |
|-----|--------|
| `<Space>dt` | Toggle breakpoint |
| `<Space>dc` | Continue / start debugger |

### Testing

| Key | Action |
|-----|--------|
| `<Space>t` | Run nearest test |
| `<Space>T` | Run all tests in file |
| `<Space>a` | Run full test suite |
| `<Space>l` | Re-run last test |
| `<Space>tv` | Visit last test file |

### Editing

| Key | Action |
|-----|--------|
| `gcc` | Toggle comment (line) |
| `gc` (visual) | Toggle comment (selection) |
| `<Space>fm` | Format & write file |

### AI / Copilot

| Key | Action |
|-----|--------|
| `<Space>aa` | Toggle Avante AI sidebar |
| `<Space>ar` | Refresh AI response |
| `<Space>ae` | Edit selection with AI (visual) |
| `<Space>aA` | Ask AI without opening sidebar |
| `Tab` (insert) | Accept Copilot suggestion |
| `<C-]>` | Dismiss Copilot suggestion |
| `<Alt>]` / `<Alt>[` | Next / previous Copilot suggestion |

### Completion

| Key | Action |
|-----|--------|
| `<C-Space>` | Trigger completion |
| `<C-e>` | Abort completion |
| `<Enter>` | Confirm selection |
| `<C-b>` / `<C-f>` | Scroll docs up / down |

### Scratch

| Key | Action |
|-----|--------|
| `<Space>sf` | Toggle scratch buffer |
| `<Space>S` | Pick scratch buffer |

---

## Mason Setup

1. Open Neovim in any project
2. Run `:Mason` in normal mode
3. Install the following:

**LSP** (press `2`, search with `/<name>`, press `i` to install):
- `pyright`, `lua-language-server`, `bash-language-server`
- `css-lsp`, `html-lsp`, `json-lsp`, `typescript-language-server`

**Linters** (press `4`):
- `eslint_d`

**Formatters** (press `5`):
- `black`, `isort`, `prettier`, `stylua`

---

                                            ~ Neovim config by Dikshit Singh (domabyte)
