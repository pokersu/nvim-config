vim.g.mapleader = " "

local keymap = vim.keymap

-- ---------- insert mode ---------- ---
keymap.set("i", "jk", "<ESC>")

-- ---------- view mode ---------- ---
-- single row or multi row move
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- ---------- normal mode ---------- ---
-- window
keymap.set("n", "<leader>sv", "<C-w>v") -- vertical add window
keymap.set("n", "<leader>sh", "<C-w>s") -- horizental add window

-- cancel highlight
keymap.set("n", "<leader>nh", ":nohl<CR>")

-- switch buffer
keymap.set("n", "<C-L>", ":bnext<CR>")
keymap.set("n", "<C-H>", ":bprevious<CR>")

-- ---------- plugin ---------- ---
-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")
