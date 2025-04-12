-- General Settings
-- vim.opt.fileencoding = "utf-8"

vim.o.laststatus = 0 -- Sembunyikan statusline
vim.o.cmdheight = 0 -- Sembunyikan command line saat tidak aktif (Neovim 0.9+)

-- UI Enhancements
vim.opt.number = true -- Show line numbers
vim.opt.relativenumber = true -- Show relative line numbers
vim.opt.cursorline = true -- Highlight the current line
vim.opt.termguicolors = true -- Enable 24-bit colors
vim.opt.scrolloff = 4 -- Keep at least 4 lines above/below cursor
vim.opt.sidescrolloff = 4 -- Keep at least 4 columns left/right of cursor
vim.opt.signcolumn = "yes" -- Always show sign column (LSP, Git, dll.)

-- Performance Tweaks
vim.opt.updatetime = 250 -- Faster UI response (default 4000ms)
vim.opt.timeoutlen = 500 -- Reduce time waiting for key sequences
vim.opt.lazyredraw = true -- Prevent unnecessary redraws
vim.opt.redrawtime = 1000 -- Prevent lag when opening large files

-- Search Settings
vim.opt.hlsearch = true -- Highlight search results
vim.opt.incsearch = true -- Incremental search
vim.opt.ignorecase = true -- Ignore case when searching
vim.opt.smartcase = true -- Enable smart case search

-- Indentation & Formatting
vim.opt.tabstop = 2 -- 1 tab = 2 spaces
vim.opt.shiftwidth = 2 -- Indent level = 2 spaces
vim.opt.expandtab = true -- Convert tabs to spaces
vim.opt.smartindent = true -- Enable smart indentation
vim.opt.autoindent = true -- Maintain indentation on new lines

-- Folding Settings
vim.opt.foldmethod = "expr" -- Use Treesitter for folding
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
vim.opt.foldenable = false -- Start with folds open

-- Clipboard & Mouse
vim.opt.clipboard = "unnamedplus" -- Use system clipboard
vim.opt.mouse = "a" -- Enable mouse support in all modes

-- File & Backup Settings
vim.opt.swapfile = false -- Disable swap file
vim.opt.backup = false -- Disable backup file
vim.opt.undofile = true -- Enable undo history

-- Splits & Windows
vim.opt.splitright = true -- New split opens to the right
vim.opt.splitbelow = true -- New split opens below

-- Better Completion Experience
vim.opt.completeopt = { "menuone", "noselect" } -- Better completion menu

-- LSP & Diagnostics
vim.diagnostic.config({
	virtual_text = true, -- Disable inline virtual text
	signs = false, -- Enable diagnostic signs
	update_in_insert = false, -- Don't update diagnostics while typing
	float = { border = "rounded" }, -- Use rounded borders for floating windows
})

-- Noice Plugin Configuration
-- require("noice").setup({
--   cmdline = {
--    view = "cmdline", -- Use a dedicated command-line view for better visibility
--  },
-- })
