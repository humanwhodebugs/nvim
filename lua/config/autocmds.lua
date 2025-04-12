-- Auto-load the `toggleterm` plugin when entering a buffer with specific file types
-- vim.api.nvim_create_autocmd("BufEnter", {
--   pattern = { "*.js", "*.jsx", "*.ts", "*.tsx" },
--   command = "lua pcall(require, 'toggleterm')", -- Use `pcall` to prevent errors if `toggleterm` is not installed
-- })

-- Highlight text when yanking (copying) to provide visual feedback
vim.api.nvim_create_autocmd("TextYankPost", {
	pattern = "*",
	callback = function()
		vim.highlight.on_yank({ timeout = 150 }) -- Reduced timeout for better responsiveness
	end,
})

-- Automatically reload Neovim config when saving files inside the config directory
vim.api.nvim_create_autocmd("BufWritePost", {
	pattern = vim.fn.expand("~") .. "/.config/nvim/lua/*.lua", -- Use `expand` for better path handling
	command = "source <afile>", -- Reloads the config file after saving
})

-- Automatically trim trailing whitespace before saving a file
vim.api.nvim_create_autocmd("BufWritePre", {
	pattern = "*",
	command = [[silent! %s/\s\+$//e]], -- Added `silent!` to suppress errors in read-only files
})
