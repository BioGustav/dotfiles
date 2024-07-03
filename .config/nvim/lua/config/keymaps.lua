-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local keymap = vim.keymap

-- move lines
keymap.set("n", "<C-Down>", ":m .+1<CR>==")
keymap.set("n", "<C-Up>", ":m .-2<CR>==")
keymap.set("i", "<C-Down>", "<Esc>:m .+1<CR>==gi")
keymap.set("i", "<C-Up>", "<Esc>:m .-2<CR>==gi")
keymap.set("v", "<C-Down>", ":m '>+1<CR>gv=gv")
keymap.set("v", "<C-Up>", ":m '<-2<CR>gv=gv")

-- mark lines
keymap.set("n", "<S-Up>", "V<Up>")
keymap.set("n", "<S-Down>", "V<Down>")
keymap.set("v", "<S-Up>", "<Up>")
keymap.set("v", "<S-Down>", "<Down>")
keymap.set("i", "<S-Up>", "<C-C>v<Up>")
keymap.set("i", "<S-Down>", "<C-C>v<Down>")

-- mark characters
keymap.set("n", "<S-Left>", "v<Left>")
keymap.set("n", "<S-Right>", "v<Right>")
keymap.set("v", "<S-Left>", "<Left>")
keymap.set("v", "<S-Right>", "<Right>")
keymap.set("i", "<S-Left>", "<C-C>v")
keymap.set("i", "<S-Right>", "<C-C><Right>v")

-- save file
keymap.set("n", "<C-S>", ":update<CR>")
keymap.set("v", "<C-S>", "<C-C>:update<CR>")
keymap.set("i", "<C-S>", "<C-C>:update<CR>")

-- open file explorer
keymap.set("n", "<leader>pv", vim.cmd.Ex)
