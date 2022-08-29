vim.api.nvim_set_keymap("n", "<leader>pv", "<cmd>Ex<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>pe", "<cmd>e#<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>pf", "<cmd>lua require('configs.custom_functions').formatfile()<CR>", {noremap = true, silent = true})
