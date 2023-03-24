vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  -- colorscheme

  use({ 'rose-pine/neovim', as = 'rose-pine' })

  -- treesitter
  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

  -- harpoon
  use ('ThePrimeagen/harpoon')

  -- Undotree
  use ('mbbill/undotree')

  -- Git itnegration
  use ('tpope/vim-fugitive')

  -- telescope
  use {
      'nvim-telescope/telescope.nvim',
      tag = '0.1.0',
      requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- filetree
  use ('nvim-tree/nvim-tree.lua')
  use ('nvim-tree/nvim-web-devicons')

  -- LSP Zero
  --
  use {
  'VonHeikemen/lsp-zero.nvim',
  branch = 'v1.x',
  requires = {
    -- LSP Support
    {'neovim/nvim-lspconfig'},             -- Required
    {'williamboman/mason.nvim'},           -- Optional
    {'williamboman/mason-lspconfig.nvim'}, -- Optional

    -- Autocompletion
    {'hrsh7th/nvim-cmp'},         -- Required
    {'hrsh7th/cmp-nvim-lsp'},     -- Required
    {'hrsh7th/cmp-buffer'},       -- Optional
    {'hrsh7th/cmp-path'},         -- Optional
    {'saadparwaiz1/cmp_luasnip'}, -- Optional
    {'hrsh7th/cmp-nvim-lua'},     -- Optional

    -- Snippets
    {'L3MON4D3/LuaSnip'},             -- Required
    {'rafamadriz/friendly-snippets'}, -- Optional
  }
}




end)
