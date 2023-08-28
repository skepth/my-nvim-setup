require("skepthlocal")

-- set <leader> to space.
vim.g.mapleader = " "

-- set relative numbers
vim.opt.relativenumber = true

-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- run rustfmt on autosave.
vim.g.rustfmt_autosave = 1

-- show diagnostic info from lsp in pop up windows
vim.o.updatetime = 250
vim.cmd [[autocmd! CursorHold,CursorHoldI * lua vim.diagnostic.open_float(nil, {focus=false})]]
