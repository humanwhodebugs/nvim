-- General Settings
vim.opt.laststatus = 3 -- Disable statusline
vim.opt.cmdheight = 0 -- Hide command line when not in use
vim.opt.showmode = false -- Disable mode display (e.g. -- INSERT --)
vim.opt.ruler = false -- Disable cursor position display (row/column)
vim.opt.statusline = "" -- Clear statusline
vim.opt.signcolumn = "number" -- Show sign column on number line

-- UI Enhancements
vim.opt.number = true -- Show absolute line numbers
vim.opt.numberwidth = 2 -- Width between sign column and number
vim.opt.relativenumber = false -- Show relative line numbers
vim.opt.cursorline = false -- Highlight current line
vim.opt.termguicolors = true -- Enable true color support
vim.opt.scrolloff = 4 -- Keep 4 lines above/below cursor
vim.opt.sidescrolloff = 4 -- Keep 4 columns to the left/right of cursor
vim.opt.wrap = false -- Disable auto wrap

-- Performance Tweaks
vim.opt.updatetime = 250 -- Faster UI update (default is 4000ms)
vim.opt.timeoutlen = 500 -- Faster key sequence timeout
vim.opt.lazyredraw = false -- Always redraw screen (disable lazy redraw)
vim.opt.redrawtime = 1000 -- Max time to redraw screen (useful for large files)

-- Search Settings
vim.opt.hlsearch = true -- Highlight search results
vim.opt.incsearch = true -- Show results while typing
vim.opt.ignorecase = true -- Case-insensitive search
vim.opt.smartcase = true -- Case-sensitive if uppercase letters are used

-- Indentation & Formatting
vim.opt.tabstop = 2 -- Set tab width to 2 spaces
vim.opt.shiftwidth = 2 -- Set indentation width to 2 spaces
vim.opt.expandtab = true -- Use spaces instead of tabs
vim.opt.softtabstop = 2 -- Set the number of spaces to treat as a tab stop

-- Clipboard & Mouse
vim.opt.clipboard = "unnamedplus" -- Use system clipboard
vim.opt.mouse = "a" -- Enable mouse support in all modes

-- File & Backup Settings
vim.opt.swapfile = false -- Disable swap file
vim.opt.backup = false -- Disable backup file
vim.opt.undofile = true -- Enable persistent undo

-- Splits & Windows
vim.opt.splitright = true -- Vertical splits open to the right
vim.opt.splitbelow = true -- Horizontal splits open below

-- Better Completion Experience
vim.opt.completeopt = { "menuone", "noselect" } -- Better completion options
