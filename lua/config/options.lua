-- General Settings
vim.opt.encoding = "utf-8"
vim.opt.fileencoding = "utf-8"

-- UI Enhancements
vim.opt.number = true -- Show line numbers
vim.opt.relativenumber = true -- Show relative line numbers
vim.opt.cursorline = true -- Highlight the current line
vim.opt.termguicolors = true -- Enable 24-bit colors
vim.opt.scrolloff = 4 -- Keep at least 4 lines above/below cursor
vim.opt.sidescrolloff = 4 -- Keep at least 4 columns left/right of cursor

-- Performance Tweaks
vim.opt.updatetime = 300 -- Faster UI response
vim.opt.timeoutlen = 500 -- Reduce time waiting for key sequences
vim.opt.lazyredraw = false -- Prevent unnecessary redraws
vim.opt.redrawtime = 1000 -- Improve performance when opening large files

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

-- LSP & Diagnostics
vim.diagnostic.config({
  virtual_text = false, -- Disable inline virtual text
  signs = true, -- Enable diagnostic signs
  update_in_insert = false, -- Don't update diagnostics while typing
  float = { border = "rounded" }, -- Use rounded borders for floating windows
})
