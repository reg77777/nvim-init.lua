vim.keymap.set('i', 'jj', '<ESC>')
vim.keymap.set('i', 'kk', '<ESC>')
vim.keymap.set('i', '(', '()<LEFT>')
vim.keymap.set('i', '[', '[]<LEFT>')
vim.keymap.set('i', '{', '{}<LEFT>')
vim.keymap.set('i', '\"', '\"\"<LEFT>')
vim.keymap.set('i', '\'', '\'\'<LEFT>')
vim.keymap.set('i', '<C-l>', '<RIGHT>')
vim.keymap.set('i', '<C-h>', '<LEFT>')
vim.keymap.set('n', '<C-]>', '<Cmd>:lua vim.lsp.buf.definition()<CR>')
-- vim.keymap.set('n','<C-h>',':vsp<CR>')
-- vim.keymap.set('n','<C-k>',':split<CR>')


vim.api.nvim_create_autocmd({ "BufWritePre" }, {
    pattern = { "*" },
    command = "lua vim.lsp.buf.format()",
})
