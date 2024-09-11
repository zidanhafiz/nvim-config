local keymap = vim.keymap.set

-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", {})
keymap("n", "<C-j>", "<C-w>j", {})
keymap("n", "<C-k>", "<C-w>k", {})
keymap("n", "<C-l>", "<C-w>l", {})

-- Resize with arrows
keymap("n", "<C-Up>", ":resize -2<CR>", {})
keymap("n", "<C-Down>", ":resize +2<CR>", {})
keymap("n", "<C-Left>", ":vertical resize -2<CR>", {})
keymap("n", "<C-Right>", ":vertical resize +2<CR>", {})

-- Fast Exit --
keymap("i", "jj", "<ESC>", {})
keymap("i", "JJ", "<ESC>", {})

-- Clear search highlighting with <leader> and c
keymap("n", "<leader>c", ":nohl<CR>")

keymap("v", "<leader>/", "<leader>gc", {})

