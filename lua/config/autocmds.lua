-- Highlight text when yanking (copying) to provide visual feedback
vim.api.nvim_create_autocmd("TextYankPost", { -- Create an autocmd that triggers after text is yanked
  pattern = "*", -- Apply to all files
  callback = function() -- Define the callback function to execute
    vim.highlight.on_yank({ timeout = 150 }) -- Highlight yanked text with a short timeout (150ms)
  end, -- End of callback function
}) -- End of autocmd definition for TextYankPost

-- Automatically trim trailing whitespace before saving a file
vim.api.nvim_create_autocmd("BufWritePre", { -- Create an autocmd that triggers before writing a buffer
  pattern = "*", -- Apply to all files
  command = [[silent! %s/\s\+$//e]], -- Remove trailing whitespace silently, ignoring errors
}) -- End of autocmd definition for BufWritePre

-- LSP & Diagnostics
vim.diagnostic.config({
  -- Enable diagnostics sign in signcolumn (with icons)
  signs = {
    text = {
      [vim.diagnostic.severity.ERROR] = " 󰅚",
      [vim.diagnostic.severity.WARN] = " ⚠",
      [vim.diagnostic.severity.INFO] = " ℹ",
      [vim.diagnostic.severity.HINT] = " 󰌶",
    },
  },
  virtual_text = true, -- Enable virtual text for diagnostics
  update_in_insert = false, -- Don't update diagnostics while typing
  float = { border = "single" }, -- Use single borders for floating windows
})
