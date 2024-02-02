local opt = vim.opt
local keymap = vim.keymap

opt.scrolloff = 12
opt.relativenumber = true
opt.autochdir = true


keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "<C-u>", "<C-u>zz")
