-- Set <leader> key to Space
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Set encoding
vim.opt.encoding = "utf-8"
vim.opt.fileencoding = "utf-8"
vim.opt.fileencodings = { "utf-8", "ucs-bom", "latin1" }

-- Load lazy.nvim and other core components
require("config.lazy")
require("config.options")
require("config.keymaps")
require("config.autocmds")

-- Set colorscheme to Catppuccin
vim.cmd.colorscheme("catppuccin")
