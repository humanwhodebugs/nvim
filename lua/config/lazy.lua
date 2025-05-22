-- Define Lazy.nvim installation path
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

-- Auto-install Lazy.nvim if it's not already installed
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })

  -- Exit Neovim if the cloning process fails
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

-- Add Lazy.nvim to the beginning of the runtime path
vim.opt.rtp:prepend(lazypath)

-- Setup Lazy.nvim with custom configuration
require("lazy").setup({
  spec = {
    { import = "plugins" }, -- Load plugins defined in the plugins folder
  },
  defaults = {
    lazy = true, -- Enable lazy loading for all plugins by default
    version = false, -- Always use the latest commit of each plugin
  },
  install = { colorscheme = { "catppuccin" } }, -- Set default colorscheme
  checker = {
    enabled = false, -- Disable automatic update checking
  },
  change_detection = {
    enabled = true,
    notify = false, -- Disable notifications for config changes
  },
  performance = {
    cache = {
      enabled = true, -- Enable caching to improve performance
      gc = 100, -- Trigger garbage collection more aggressively
    },
    reset_packpath = true, -- Reset 'packpath' to avoid conflicts
    rtp = {
      disabled_plugins = { -- Disable unused built-in Vim plugins for performance
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
    border = "single", -- Use single line borders for Lazy UI
    title = " Lazy Plugin Manager ", -- Set custom title for Lazy UI
    wrap = true,
    pills = true,
    backdrop = 0,
    icons = {
      cmd = " ",
      config = "",
      debug = "● ",
      event = " ",
      favorite = " ",
      ft = " ",
      init = " ",
      import = " ",
      keys = " ",
      lazy = "󰒲 ",
      loaded = "●",
      not_loaded = "○",
      plugin = " ",
      runtime = " ",
      require = "󰢱 ",
      source = " ",
      start = " ",
      task = "✔ ",
      list = {
        "●",
        "➜",
        "★",
        "‒",
      },
    },
  },
  debug = false, -- Disable Lazy's debug mode for better performance
})
