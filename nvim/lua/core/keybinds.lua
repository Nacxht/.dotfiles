-- Leader Key
vim.g.mapleader = " "
vim.g.maplocalleader = " "
local keymap = vim.keymap

-- Window split
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split vertical" })
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split horizontal" })
keymap.set("n", "<leader>wq", "<C-w>q", { desc = "Close active split" })

-- Window split navigation
keymap.set("n", "<C-h>", "<C-w>h", { desc = "Move to the left window" })
keymap.set("n", "<C-j>", "<C-w>j", { desc = "Move to the bottom window" })
keymap.set("n", "<C-k>", "<C-w>k", { desc = "Move to the top window" })
keymap.set("n", "<C-l>", "<C-w>l", { desc = "Move to the right window" })

-- Resizing Window
keymap.set("n", "<C-Up>", ":resize -2<CR>", { desc = "Decrease the height of the window" })
keymap.set("n", "<C-Down>", ":resize +2<CR>", { desc = "Increase the height of the window" })
keymap.set("n", "<C-Left>", ":vertical resize -2<CR>", { desc = "Decrease the width of the window"})
keymap.set("n", "<C-Right>", ":vertical resize +2<CR>", { desc = "Increase the width of the window" })

-- Visual Mode: Moving lines
keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move the text block upwards" })
keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move the text block downward" })

-- Centering Cursor While Scrolling
keymap.set("n", "<C-d>","<C-d>zz")
keymap.set("n", "<C-u>", "<C-u>zz")
keymap.set("n", "n", "nzzzv")
keymap.set("n", "N", "Nzzzv")

-- Fix Register Hijacking
keymap.set("x", "<leader>p", [["_dP]], { desc = "Paste without overwriting register" })

-- Buffer/File Management
keymap.set("n", "<leader>bn", ":bnext<CR>", { desc = "Next buffer" })
keymap.set("n", "<leader>bp", ":bprev<CR>", { desc = "Previous buffer" })
keymap.set("n", "<leader>bd", ":bdelete<CR", { desc = "Close buffler/file" })

-- Telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Search file" })
keymap.set("n", "<leader>fg", "<cmd>Telescope live_grep<cr>", { desc = "Search text" })

-- LSP keybinds
keymap.set("n", "K", vim.lsp.buf.hover, { desc = "Show documentations" })
keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "Go to definition" })
keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "Code action" })
