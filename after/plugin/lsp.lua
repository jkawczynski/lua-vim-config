local lsp = require('lsp-zero').preset({
  name = 'recommended',
  set_lsp_keymaps = true,
  manage_nvim_cmp = true,
  suggest_lsp_servers = false,
})
lsp.ensure_installed({
    'tsserver',
    'eslint',
    'rust_analyzer',
})
-- (Optional) Configure lua language server for neovim
lsp.nvim_workspace()

lsp.setup()
