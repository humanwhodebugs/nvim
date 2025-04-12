-- ToggleTerm: Open terminal in different modes
vim.keymap.set("n", "<leader>ft", "<cmd>ToggleTerm direction=float<CR>", { desc = "Open Floating Terminal" })
vim.keymap.set("n", "<leader>th", "<cmd>ToggleTerm direction=horizontal<CR>", { desc = "Open Horizontal Terminal" })
vim.keymap.set("n", "<leader>tv", "<cmd>ToggleTerm direction=vertical<CR>", { desc = "Open Vertical Terminal" })

-- Neo-tree
vim.keymap.set("n", "<leader>e", "<cmd>Neotree toggle<CR>", { desc = "Toggle Neo-tree" })

-- Terminal Mode: Exit insert mode with Escape
vim.api.nvim_set_keymap("t", "<Esc>", "<C-\\><C-n>", { noremap = true, silent = true })

-- Remap 'jk' to Escape in Insert Mode for faster exit
vim.api.nvim_set_keymap("i", "jk", "<Esc>", { noremap = true, silent = true })

-- Telescope (Snacks): Open recent files with enhanced UI
vim.keymap.set("n", "<leader>r", function()
	vim.cmd("lua Snacks.dashboard.pick('oldfiles')")
end, { desc = "Telescope (Snacks)" })

-- Snacks Notification History
vim.keymap.set("n", "<leader>n", function()
	vim.cmd("lua Snacks.notifier.show_history()")
end, { desc = "Telescope (Snacks)" })

-- Prevent 'x' and 'd' from copying deleted text to the default register
vim.api.nvim_set_keymap("n", "x", '"_x', { noremap = true, silent = true }) -- Delete a single character without storing it
-- vim.api.nvim_set_keymap("n", "d", '"_d', { noremap = true, silent = true }) -- Delete text without saving it to the register
-- vim.api.nvim_set_keymap("v", "d", '"_d', { noremap = true, silent = true }) -- Delete text in Visual mode without saving it

-- Delete current buffer (close buffer)
vim.api.nvim_set_keymap("n", "<leader>d", ":bd<CR>", { noremap = true, silent = true })

-- Disable escape key in Insert mode
vim.keymap.set("i", "<Esc>", "<NOP>", { noremap = true, silent = true })

-- Disable arrow keys in Normal mode
vim.keymap.set("n", "<Up>", "<NOP>", { noremap = true, silent = true })
vim.keymap.set("n", "<Down>", "<NOP>", { noremap = true, silent = true })
vim.keymap.set("n", "<Left>", "<NOP>", { noremap = true, silent = true })
vim.keymap.set("n", "<Right>", "<NOP>", { noremap = true, silent = true })

-- Disable arrow keys in Insert mode
-- vim.keymap.set("i", "<Up>", "<NOP>", { noremap = true, silent = true })
-- vim.keymap.set("i", "<Down>", "<NOP>", { noremap = true, silent = true })
-- vim.keymap.set("i", "<Left>", "<NOP>", { noremap = true, silent = true })
-- vim.keymap.set("i", "<Right>", "<NOP>", { noremap = true, silent = true })

-- Disable arrow keys in Visual mode
vim.keymap.set("v", "<Up>", "<NOP>", { noremap = true, silent = true })
vim.keymap.set("v", "<Down>", "<NOP>", { noremap = true, silent = true })
vim.keymap.set("v", "<Left>", "<NOP>", { noremap = true, silent = true })
vim.keymap.set("v", "<Right>", "<NOP>", { noremap = true, silent = true })

-- Disable arrow keys in Terminal mode
-- vim.keymap.set("t", "<Up>", "<NOP>", { noremap = true, silent = true })
-- vim.keymap.set("t", "<Down>", "<NOP>", { noremap = true, silent = true })
-- vim.keymap.set("t", "<Left>", "<NOP>", { noremap = true, silent = true })
-- vim.keymap.set("t", "<Right>", "<NOP>", { noremap = true, silent = true })

-- Pindah Buffer Kiri dan Kanan
vim.api.nvim_set_keymap("n", "<S-h>", ":bprev<CR>", { noremap = true, silent = true }) -- Pindah ke buffer sebelumnya
vim.api.nvim_set_keymap("n", "<S-l>", ":bnext<CR>", { noremap = true, silent = true }) -- Pindah ke buffer berikutnya

-- Pindah Window dengan Ctrl + h/j/k/l
vim.api.nvim_set_keymap("n", "<C-h>", "<C-w>h", { noremap = true, silent = true }) -- Pindah ke window kiri
vim.api.nvim_set_keymap("n", "<C-j>", "<C-w>j", { noremap = true, silent = true }) -- Pindah ke window bawah
vim.api.nvim_set_keymap("n", "<C-k>", "<C-w>k", { noremap = true, silent = true }) -- Pindah ke window atas
vim.api.nvim_set_keymap("n", "<C-l>", "<C-w>l", { noremap = true, silent = true }) -- Pindah ke window kanan
