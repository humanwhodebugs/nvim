-- Automatically trim trailing whitespace before saving a file
vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*", -- Apply to all files
  command = [[silent! %s/\s\+$//e]], -- Remove trailing whitespace silently, ignoring errors
})

-- Highlight text when yanking (copying) to provide visual feedback
vim.api.nvim_create_autocmd("TextYankPost", {
  pattern = "*", -- Apply to all files

  -- Define the callback function to execute
  callback = function()
    vim.highlight.on_yank({ timeout = 150 })
  end,
})

-- LSP & Diagnostics
vim.diagnostic.config({
  -- Enable diagnostics sign in signcolumn (with icons)
  signs = {
    enable = false,

    text = {
      [vim.diagnostic.severity.ERROR] = " ●",
      [vim.diagnostic.severity.WARN] = " ●",
      [vim.diagnostic.severity.INFO] = " ●",
      [vim.diagnostic.severity.HINT] = " ●",
    },
  },

  virtual_text = false,
  update_in_insert = false,
  float = { border = "single" },
})
