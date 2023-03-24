vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.opt.termguicolors = true

require("nvim-tree").setup({
    view = {
        float = {
            enable = true,
            open_win_config = {
                width = 80,
                height = 50,
                col = 50,
                row = 10,
            }
        }
    }
})
