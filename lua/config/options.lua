-- OPTIONS & SETTINGS

-- Indentation
vim.opt.tabstop = 2 -- 1 tab = 2 spaces
vim.opt.shiftwidth = 2 -- Indentation width
vim.opt.expandtab = true -- Convert tabs to spaces
vim.opt.smartindent = true -- Smart auto-indentation

-- UI Enhancements
vim.opt.number = true -- Show line numbers
vim.opt.relativenumber = true -- Relative line numbers for easy movement
vim.opt.wrap = true -- Enable word wrap
vim.opt.scrolloff = 8 -- Keep cursor centered with 8 lines above/below
vim.opt.sidescrolloff = 8 -- Keep cursor centered horizontally
vim.opt.cursorline = true -- Highlight the current line
vim.opt.signcolumn = "yes" -- Always show sign column
vim.opt.termguicolors = true -- Enable 24-bit color support
vim.opt.showmode = false -- Hide default mode display (handled by status bar)
vim.opt.splitright = true -- Open vertical splits to the right
vim.opt.splitbelow = true -- Open horizontal splits below
vim.opt.cmdheight = 0 -- Hide command-line when not in use (NeoVim 0.8+)

-- Searching
vim.opt.ignorecase = true -- Case-insensitive searching
vim.opt.smartcase = true -- Case-sensitive if uppercase letters are used
vim.opt.incsearch = true -- Show matches while typing

-- Performance
vim.opt.updatetime = 300 -- Faster completion (default is 4000ms)
vim.opt.timeoutlen = 500 -- Faster key timeout
vim.opt.lazyredraw = false -- Improve UI responsiveness
vim.opt.ttyfast = true -- Faster rendering

-- Folding
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
vim.opt.foldenable = false -- Don't auto-fold files on open

-- Backup & Swap (Disable for better performance)
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undofile = true -- Persistent undo

-- Clipboard & Mouse Support
vim.opt.clipboard = "unnamedplus" -- Use system clipboard
vim.opt.mouse = "a" -- Enable mouse support in all modes

-- Terminal Behavior (For my i3)
vim.opt.hidden = true -- Allow switching buffers without saving
vim.opt.autoread = true -- Auto reload files if changed externally

-- File Encoding
vim.opt.fileencoding = "utf-8" -- Default encoding

-- Completion Optimizations
vim.opt.completeopt = { "menuone", "noselect" }

-- Diagnostic UI (LSP)
vim.diagnostic.config({
  virtual_text = true, -- Show inline errors
  signs = true, -- Show signs in sign column
  update_in_insert = false,
  float = { border = "rounded" }, -- Use rounded borders for floating diagnostics
})

-- Extra: Improve JSON & JavaScript/TypeScript Experience
vim.g.markdown_fenced_languages = { "javascript", "typescript", "json" }

-- Extra: Disable certain built-in plugins for faster startup
local disabled_built_ins = {
  "gzip",
  "matchit",
  "matchparen",
  "netrwPlugin",
  "tarPlugin",
  "tohtml",
  "tutor",
  "zipPlugin",
}
for _, plugin in pairs(disabled_built_ins) do
  vim.g["loaded_" .. plugin] = 1
end
