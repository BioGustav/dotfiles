-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local opt = vim.opt

opt.relativenumber = false
opt.softtabstop = 2
opt.shiftwidth = 2
opt.list = true
opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }
