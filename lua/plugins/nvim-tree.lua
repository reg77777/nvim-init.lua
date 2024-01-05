return {
    "nvim-tree/nvim-tree.lua",
    config = function ()
        vim.g.loaded_netrw = 1
        vim.g.loaded_netrwPlugin = 1
        vim.opt.termguicolors = true


        -- 常時起動
        local function open_nvim_tree()
            require("nvim-tree.api").tree.open()
        end

        vim.api.nvim_create_autocmd({"VimEnter"},{callback=open_nvim_tree})


        require("nvim-tree").setup({
            sort = {
                sorter = "case_sensitive",
            },
            view = {
                width = 20,
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
