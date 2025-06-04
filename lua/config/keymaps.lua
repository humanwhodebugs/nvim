-- LSP Code Action: Trigger code action (e.g., fix, refactor, etc.)
vim.api.nvim_set_keymap("n", "<leader>ca", "<Cmd>lua vim.lsp.buf.code_action()<CR>", { noremap = true, silent = true })

-- TERMINAL MANAGEMENT (ToggleTerm)
vim.keymap.set("n", "<leader>tf", "<cmd>ToggleTerm direction=float<CR>", { desc = "Open Floating Terminal" })
vim.keymap.set("n", "<leader>th", "<cmd>ToggleTerm direction=horizontal<CR>", { desc = "Open Horizontal Terminal" })
vim.keymap.set("n", "<leader>tv", "<cmd>ToggleTerm direction=vertical<CR>", { desc = "Open Vertical Terminal" })

-- Dedicated terminals
vim.keymap.set("n", "<leader>t1", function()
  require("toggleterm.terminal").Terminal:new({ count = 1 }):toggle()
end, { desc = "Toggle Terminal 1" })

vim.keymap.set("n", "<leader>t2", function()
  require("toggleterm.terminal").Terminal:new({ count = 2 }):toggle()
end, { desc = "Toggle Terminal 2" })

vim.keymap.set("n", "<leader>t3", function()
  require("toggleterm.terminal").Terminal:new({ count = 3 }):toggle()
end, { desc = "Toggle Terminal 3" })

-- Exit terminal mode using Escape
vim.api.nvim_set_keymap("t", "<Esc>", "<C-\\><C-n>", { noremap = true, silent = true })

-- FILE EXPLORER (Neo-tree)
vim.keymap.set("n", "<leader>e", "<cmd>Neotree toggle<CR>", { desc = "Toggle Neo-tree" })

-- TELESCOPE / SNACKS INTEGRATION
vim.keymap.set("n", "<leader>r", function()
  vim.cmd("lua Snacks.dashboard.pick('oldfiles')")
end, { desc = "Open recent files (Snacks)" })

vim.keymap.set("n", "<leader>n", function()
  vim.cmd("lua Snacks.notifier.show_history()")
end, { desc = "Show notification history (Snacks)" })

-- BUFFER MANAGEMENT
vim.keymap.set("n", "<leader>d", "<cmd>bdelete!<CR>", { desc = "Delete Current Buffer" }) -- Delete current buffer

-- Split window
vim.keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split Vertical" }) -- Vertical split
vim.keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split Horizontal" }) -- Horizontal split

-- Navigate between buffers
vim.api.nvim_set_keymap("n", "<S-h>", ":bprev<CR>", { noremap = true, silent = true }) -- Previous buffer
vim.api.nvim_set_keymap("n", "<S-l>", ":bnext<CR>", { noremap = true, silent = true }) -- Next buffer

-- Resize windows using Ctrl + h/j/k/l
vim.keymap.set("n", "<C-Left>", "<Cmd>vertical resize -2<CR>", { desc = "Resize split ←" })
vim.keymap.set("n", "<C-Right>", "<Cmd>vertical resize +2<CR>", { desc = "Resize split →" })
vim.keymap.set("n", "<C-Down>", "<Cmd>resize +2<CR>", { desc = "Resize split ↓" })
vim.keymap.set("n", "<C-Up>", "<Cmd>resize -2<CR>", { desc = "Resize split ↑" })

-- WINDOW NAVIGATION
vim.api.nvim_set_keymap("n", "<C-h>", "<C-w>h", { noremap = true, silent = true }) -- Move to left window
vim.api.nvim_set_keymap("n", "<C-j>", "<C-w>j", { noremap = true, silent = true }) -- Move to bottom window
vim.api.nvim_set_keymap("n", "<C-k>", "<C-w>k", { noremap = true, silent = true }) -- Move to top window
vim.api.nvim_set_keymap("n", "<C-l>", "<C-w>l", { noremap = true, silent = true }) -- Move to right window

-- Clear search highlighting when pressing Esc in normal mode
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>", { noremap = true, silent = true })

-- INSERT MODE SHORTCUTS
vim.api.nvim_set_keymap("i", "jk", "<Esc>", { noremap = true, silent = true }) -- Exit insert mode with 'jk'
vim.keymap.set("i", "<Esc>", "<NOP>", { noremap = true, silent = true }) -- Disable Escape in insert mode

-- DELETE BEHAVIOR
vim.api.nvim_set_keymap("n", "x", '"_x', { noremap = true, silent = true }) -- Don't yank on 'x'
-- vim.api.nvim_set_keymap("n", "d", '"_d', { noremap = true, silent = true }) -- Don't yank on 'd'
-- vim.api.nvim_set_keymap("v", "d", '"_d', { noremap = true, silent = true }) -- Don't yank on 'd' (visual mode)

-- Copy Everything
vim.keymap.set("n", "<C-a>", "gg<S-v>G", { noremap = true, silent = true })

-- Save on normal mode
vim.keymap.set("n", "<C-s>", ":w<CR>", { noremap = true, silent = true })

-- DISABLE ARROW KEYS

-- Normal mode
vim.keymap.set("n", "<Up>", "<NOP>", { noremap = true, silent = true })
vim.keymap.set("n", "<Down>", "<NOP>", { noremap = true, silent = true })
vim.keymap.set("n", "<Left>", "<NOP>", { noremap = true, silent = true })
vim.keymap.set("n", "<Right>", "<NOP>", { noremap = true, silent = true })

-- Visual mode
vim.keymap.set("v", "<Up>", "<NOP>", { noremap = true, silent = true })
vim.keymap.set("v", "<Down>", "<NOP>", { noremap = true, silent = true })
vim.keymap.set("v", "<Left>", "<NOP>", { noremap = true, silent = true })
vim.keymap.set("v", "<Right>", "<NOP>", { noremap = true, silent = true })

-- Optional: Insert and Terminal mode (commented out)
-- vim.keymap.set("i", "<Up>", "<NOP>", { noremap = true, silent = true })
-- vim.keymap.set("i", "<Down>", "<NOP>", { noremap = true, silent = true })
-- vim.keymap.set("i", "<Left>", "<NOP>", { noremap = true, silent = true })
-- vim.keymap.set("i", "<Right>", "<NOP>", { noremap = true, silent = true })

-- vim.keymap.set("t", "<Up>", "<NOP>", { noremap = true, silent = true })
-- vim.keymap.set("t", "<Down>", "<NOP>", { noremap = true, silent = true })
-- vim.keymap.set("t", "<Left>", "<NOP>", { noremap = true, silent = true })
-- vim.keymap.set("t", "<Right>", "<NOP>", { noremap = true, silent = true })
