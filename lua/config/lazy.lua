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
    { import = "plugins" },
  },

  defaults = {
    lazy = false,
    version = false,
  },

  install = { colorscheme = { "catppuccin" } },

  checker = {
    enabled = false,
  },

  change_detection = {
    enabled = true,
    notify = false,
  },

  performance = {
    cache = {
      enabled = true,
      gc = 100,
    },

    reset_packpath = true,

    rtp = {
      disabled_plugins = {
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
    border = "single",
    title = " Lazy Plugin Manager ",
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
  debug = false,
})
