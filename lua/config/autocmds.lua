-- Highlight text when yanking (copying)
vim.api.nvim_create_autocmd("TextYankPost", {
  pattern = "*",
  callback = function()
    vim.highlight.on_yank({ timeout = 150 }) -- Reduced timeout for better responsiveness
  end,
})

-- Auto reload Neovim config when saving files inside the config directory
vim.api.nvim_create_autocmd("BufWritePost", {
  pattern = vim.fn.expand("~") .. "/.config/nvim/lua/*.lua", -- Use expand for better path handling
  command = "source <afile>",
})

-- Automatically trim trailing whitespace before saving
vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*",
  command = [[silent! %s/\s\+$//e]], -- Added "silent!" to suppress errors in read-only files
})
