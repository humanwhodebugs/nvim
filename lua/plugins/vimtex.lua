return {
  {
    "lervag/vimtex", -- Modern Vim and neovim filetype plugin for LaTeX files
    lazy = false, -- Load this plugin immediately, not lazily

    init = function()
      vim.g.vimtex_view_method = "zathura"
    end,
  },
}
