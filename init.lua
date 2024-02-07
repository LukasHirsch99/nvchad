local opt = vim.opt
local keymap = vim.keymap
local go = vim.go

opt.scrolloff = 12
opt.relativenumber = true
opt.autochdir = true

vim.opt.foldmethod = "indent"
vim.opt.foldenable = false

keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "<C-u>", "<C-u>zz")
