-- Define Lazy.nvim installation path
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

-- Auto-install Lazy.nvim if not found
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })

  -- Exit if cloning fails
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end

-- Prepend Lazy.nvim to runtime path
vim.opt.rtp:prepend(lazypath)

-- Configure Lazy.nvim
require("lazy").setup({
  spec = {
    { "LazyVim/LazyVim", import = "lazyvim.plugins", priority = 1000 }, -- Load core LazyVim plugins first
    { import = "plugins" }, -- Load additional plugins from the plugins folder
  },
  defaults = {
    lazy = true, -- Enable lazy-loading for all plugins except core
    version = false, -- Always use the latest Git version
  },
  checker = {
    enabled = false, -- Disable automatic plugin update checking
  },
  change_detection = {
    enabled = true,
    notify = false, -- Disable notifications when files change
  },
  performance = {
    cache = {
      enabled = true,
      gc = 100, -- More aggressive memory cleanup
    },
    reset_packpath = true, -- Reset packpath for a cleaner setup
    rtp = {
      disabled_plugins = { -- Disable built-in plugins for better performance
        "gzip",
        "tarPlugin",
        "tohtml",
        "tutor",
        "zipPlugin",
        "matchit",
        "matchparen",
        "netrwPlugin",
        "rplugin",
        "spellfile",
        "shada",
        "vimball",
      },
    },
  },
  ui = {
    border = "single", -- Use rounded borders for a cleaner UI
    title = " Lazy Plugin Manager ", -- Custom title for the UI
  },
  debug = false, -- Disable debugging for better performance
})
