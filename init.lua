vim.opt.helplang='ja','en'
vim.o.clipboard = vim.o.clipboard .. 'unnamedplus'
vim.o.syntax = true

require('lazy-nvim')
require('option')
require('key')

--vim.cmd[[colorscheme molokai]]
