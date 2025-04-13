-- ToggleTerm: Open terminal in different modes
vim.keymap.set("n", "<leader>ft", "<cmd>ToggleTerm direction=float<CR>", { desc = "Open Floating Terminal" }) -- Map <leader>ft to open a floating terminal
vim.keymap.set("n", "<leader>th", "<cmd>ToggleTerm direction=horizontal<CR>", { desc = "Open Horizontal Terminal" }) -- Map <leader>th to open a horizontal terminal
vim.keymap.set("n", "<leader>tv", "<cmd>ToggleTerm direction=vertical<CR>", { desc = "Open Vertical Terminal" }) -- Map <leader>tv to open a vertical terminal

-- Neo-tree
vim.keymap.set("n", "<leader>e", "<cmd>Neotree toggle<CR>", { desc = "Toggle Neo-tree" }) -- Map <leader>e to toggle Neo-tree file explorer

-- Terminal Mode: Exit insert mode with Escape
vim.api.nvim_set_keymap("t", "<Esc>", "<C-\\><C-n>", { noremap = true, silent = true }) -- In terminal mode, use <Esc> to exit to normal mode

-- Remap 'jk' to Escape in Insert Mode for faster exit
vim.api.nvim_set_keymap("i", "jk", "<Esc>", { noremap = true, silent = true }) -- In insert mode, use 'jk' to exit to normal mode

-- Telescope (Snacks): Open recent files with enhanced UI
vim.keymap.set("n", "<leader>r", function() -- Map <leader>r to open recent files
  vim.cmd("lua Snacks.dashboard.pick('oldfiles')") -- Use Snacks dashboard to pick recent files
end, { desc = "Telescope (Snacks)" }) -- Description for keymap

-- Snacks Notification History
vim.keymap.set("n", "<leader>n", function() -- Map <leader>n to open notification history
  vim.cmd("lua Snacks.notifier.show_history()") -- Use Snacks to show notification history
end, { desc = "Telescope (Snacks)" }) -- Description for keymap

-- Prevent 'x' and 'd' from copying deleted text to the default register
vim.api.nvim_set_keymap("n", "x", '"_x', { noremap = true, silent = true }) -- Use 'x' without copying deleted character to default register
-- vim.api.nvim_set_keymap("n", "d", '"_d', { noremap = true, silent = true }) -- (Optional) Use 'd' without copying deleted text to default register
-- vim.api.nvim_set_keymap("v", "d", '"_d', { noremap = true, silent = true }) -- (Optional) Use 'd' in visual mode without copying to default register

-- Delete current buffer (close buffer)
vim.api.nvim_set_keymap("n", "<leader>d", ":bd<CR>", { noremap = true, silent = true }) -- Map <leader>d to close the current buffer

-- Disable escape key in Insert mode
vim.keymap.set("i", "<Esc>", "<NOP>", { noremap = true, silent = true }) -- Disable <Esc> key in insert mode

-- Disable arrow keys in Normal mode
vim.keymap.set("n", "<Up>", "<NOP>", { noremap = true, silent = true }) -- Disable Up arrow in normal mode
vim.keymap.set("n", "<Down>", "<NOP>", { noremap = true, silent = true }) -- Disable Down arrow in normal mode
vim.keymap.set("n", "<Left>", "<NOP>", { noremap = true, silent = true }) -- Disable Left arrow in normal mode
vim.keymap.set("n", "<Right>", "<NOP>", { noremap = true, silent = true }) -- Disable Right arrow in normal mode

-- Disable arrow keys in Insert mode
-- vim.keymap.set("i", "<Up>", "<NOP>", { noremap = true, silent = true }) -- (Optional) Disable Up arrow in insert mode
-- vim.keymap.set("i", "<Down>", "<NOP>", { noremap = true, silent = true }) -- (Optional) Disable Down arrow in insert mode
-- vim.keymap.set("i", "<Left>", "<NOP>", { noremap = true, silent = true }) -- (Optional) Disable Left arrow in insert mode
-- vim.keymap.set("i", "<Right>", "<NOP>", { noremap = true, silent = true }) -- (Optional) Disable Right arrow in insert mode

-- Disable arrow keys in Visual mode
vim.keymap.set("v", "<Up>", "<NOP>", { noremap = true, silent = true }) -- Disable Up arrow in visual mode
vim.keymap.set("v", "<Down>", "<NOP>", { noremap = true, silent = true }) -- Disable Down arrow in visual mode
vim.keymap.set("v", "<Left>", "<NOP>", { noremap = true, silent = true }) -- Disable Left arrow in visual mode
vim.keymap.set("v", "<Right>", "<NOP>", { noremap = true, silent = true }) -- Disable Right arrow in visual mode

-- Disable arrow keys in Terminal mode
-- vim.keymap.set("t", "<Up>", "<NOP>", { noremap = true, silent = true }) -- (Optional) Disable Up arrow in terminal mode
-- vim.keymap.set("t", "<Down>", "<NOP>", { noremap = true, silent = true }) -- (Optional) Disable Down arrow in terminal mode
-- vim.keymap.set("t", "<Left>", "<NOP>", { noremap = true, silent = true }) -- (Optional) Disable Left arrow in terminal mode
-- vim.keymap.set("t", "<Right>", "<NOP>", { noremap = true, silent = true }) -- (Optional) Disable Right arrow in terminal mode

-- Navigate between buffers (left and right)
vim.api.nvim_set_keymap("n", "<S-h>", ":bprev<CR>", { noremap = true, silent = true }) -- Go to previous buffer with Shift+h
vim.api.nvim_set_keymap("n", "<S-l>", ":bnext<CR>", { noremap = true, silent = true }) -- Go to next buffer with Shift+l

-- Navigate between windows using Ctrl + h/j/k/l
vim.api.nvim_set_keymap("n", "<C-h>", "<C-w>h", { noremap = true, silent = true }) -- Move to the window on the left with Ctrl+h
vim.api.nvim_set_keymap("n", "<C-j>", "<C-w>j", { noremap = true, silent = true }) -- Move to the window below with Ctrl+j
vim.api.nvim_set_keymap("n", "<C-k>", "<C-w>k", { noremap = true, silent = true }) -- Move to the window above with Ctrl+k
vim.api.nvim_set_keymap("n", "<C-l>", "<C-w>l", { noremap = true, silent = true }) -- Move to the window on the right with Ctrl+l
