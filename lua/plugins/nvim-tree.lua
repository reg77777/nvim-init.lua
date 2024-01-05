return {
    "nvim-tree/nvim-tree.lua",
    config = function ()
        vim.g.loaded_netrw = 1
        vim.g.loaded_netrwPlugin = 1
        vim.opt.termguicolors = true

        vim.keymap.set('n','tt','<Cmd>NvimTreeToggle<CR>')
        vim.keymap.set('n','td','<Cmd>bd<CR>')


        require("nvim-tree").setup({
            sort = {
                sorter = "case_sensitive",
            },
            view = {
                width = 30,
            },
            renderer = {
                group_empty = true,
            },
            filters = {
                dotfiles = true,
            },
        })
    end
}
