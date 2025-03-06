-- Auto commands (autocmds.lua)

-- Highlight text when on "yank" mode
vim.api.nvim_create_autocmd("TextYankPost", {
  pattern = "*",
  callback = function()
    vim.highlight.on_yank({ timeout = 200 })
  end,
})

-- Auto reload config hanya untuk nvim config folder
vim.api.nvim_create_autocmd("BufWritePost", {
  pattern = { "~/.config/nvim/lua/*.lua" },
  command = "source <afile>",
})

-- Auto-trim trailing whitespace saat save
vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*",
  command = [[%s/\s\+$//e]],
})
