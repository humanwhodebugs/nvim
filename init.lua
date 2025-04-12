-- Set <leader> key to Space
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Load lazy.nvim and other core components
require("config.lazy")
require("config.options")
require("config.keymaps")
require("config.autocmds")

-- Set colorscheme to Catppuccin
vim.cmd.colorscheme("catppuccin")
