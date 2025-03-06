-- Auto commands (autocmds.lua)

-- Auto format on save
local format_group = vim.api.nvim_create_augroup("AutoFormat", { clear = true })
vim.api.nvim_create_autocmd("BufWritePre", {
  group = format_group,
  pattern = { "*.js", "*.jsx", "*.ts", "*.tsx", "*.json", "*.css", "*.scss", "*.html", "*.md" },
  callback = function()
    vim.lsp.buf.format()
  end,
})

-- Highlight text when on "yank" mode
vim.api.nvim_create_autocmd("TextYankPost", {
  pattern = "*",
  callback = function()
    vim.highlight.on_yank({ timeout = 200 })
  end,
})

-- Auto reload config when there's change on .lua file
vim.api.nvim_create_autocmd("BufWritePost", {
  pattern = { "*.lua" },
  command = "source <afile>",
})
