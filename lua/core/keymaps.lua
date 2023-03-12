vim.g.mapleader = " "

local keymap = vim.keymap

-- ---------- insert mode ---------- ---
keymap.set("i", "jk", "<ESC>")
keymap.set("i", "<C-h>", "<Left>")
keymap.set("i", "<C-j>", "<Down>")
keymap.set("i", "<C-k>", "<Up>")
keymap.set("i", "<C-l>", "<Right>")
keymap.set("i", "<C-a>", "<Home>")
keymap.set("i", "<C-e>", "<End>")
keymap.set("i", "<C-d>", "<Delete>")
keymap.set("i", ";;<Cr>", "<Esc>A:<Cr>")
keymap.set("i", ";<Cr>", "<Esc>A;<Cr>")
keymap.set("i", ";'", "<Esc>viw<Esc>a\"<Esc>hbi\"<Esc>lEa")
keymap.set("i", "';", "<Esc>viw<Esc>a'<Esc>hbi'<Esc>lEa")

-- ---------- view mode ---------- ---
-- single row or multi row move
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")
keymap.set("v", "<leader>j", "<C-d>")
keymap.set("v", "<leader>k", "<C-u>")
keymap.set("v", "H", "^")
keymap.set("v", "L", "$")
keymap.set("v", "v", "<Esc>")

-- ---------- normal mode ---------- ---
-- window
keymap.set("n", "<leader>sv", "<C-w>v") -- vertical add window
keymap.set("n", "<leader>sh", "<C-w>s") -- horizental add window
keymap.set("n", "<C-a>", "ggvG$")
keymap.set("n", "U", "<C-r>")

-- cancel highlight
keymap.set("n", "<leader>nh", ":nohl<CR>")

-- switch buffer
keymap.set("n", "<C-L>", ":bnext<CR>")
keymap.set("n", "<C-H>", ":bprevious<CR>")

-- ---------- plugin ---------- ---
-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")

-- float terminal
keymap.set("n", "<leader>t", ":FloatermNew<CR>")
