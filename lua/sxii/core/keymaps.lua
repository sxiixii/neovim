local keymap = vim.keymap

vim.g.mapleader = " "

-- NeoTree
keymap.set("n", "<leader>e", ":Neotree left reveal<CR>")

-- Navigation
keymap.set("n", "<c-k>", ":wincmd k<CR>")
keymap.set("n", "<c-j>", ":wincmd j<CR>")
keymap.set("n", "<c-h>", ":wincmd h<CR>")
keymap.set("n", "<c-l>", ":wincmd l<CR>")
keymap.set("n", "<leader>/", ":CommentToggle<CR>")

-- window management
keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s") -- split window horizontally
keymap.set("n", "<leader>sx", ":close<CR>") -- close current split window

-- Other
keymap.set("n", "<leader>w", ":w<CR>")
keymap.set("n", "<leader>nh", ":nohl<CR>")
keymap.set("i", "jj", "<Esc>")

-- Tabs
keymap.set("n", "<Tab>", ":BufferLineCycleNext<CR>")
keymap.set("n", "<s-Tab>", ":BufferLineCyclePrev<CR>")
keymap.set("n", "<leader>x", ":BufferLineCloseOthers<CR>")

-- Terminal
keymap.set("n", "<leader>tf", ":ToggleTerm direction=float<CR>")

-- restart lsp server (not on youtube nvim video)
keymap.set("n", "<leader>rs", ":LspRestart<CR>")
