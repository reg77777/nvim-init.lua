return {
    "akinsho/bufferline.nvim",
    config = function ()
        vim.keymap.set('n','<C-h>','<Cmd>bprev<CR>',{noremap=true,silent=true})
        vim.keymap.set('n','<C-l>','<Cmd>bnext<CR>',{noremap=true,silent=true})
        require("bufferline").setup{}
    end
}
