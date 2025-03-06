local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
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
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  spec = {
    { "LazyVim/LazyVim", import = "lazyvim.plugins", priority = 1000 },
    { import = "plugins" },
  },
  defaults = {
    lazy = true, -- Semua plugin kecuali core LazyVim akan lazy-load
    version = false, -- Selalu pakai versi terbaru dari Git
  },
  checker = {
    enabled = false, -- Cek update plugin secara otomatis
  },
  change_detection = {
    enabled = true,
    notify = false, -- Tidak perlu notifikasi saat ada perubahan
  },
  performance = {
    cache = {
      enabled = true,
      gc = 100, -- Bersihkan memori lebih agresif
    },
    reset_packpath = true, -- Reset packpath agar lebih bersih
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
    border = "rounded", -- UI dengan border yang lebih rapi
    title = " Lazy Plugin Manager ",
  },
  debug = false, -- Matikan debug agar lebih ringan
})
