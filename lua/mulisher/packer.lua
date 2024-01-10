-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use {'wbthomason/packer.nvim'}

    --Search
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.5',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    use {
        "ThePrimeagen/harpoon", branch = "harpoon2",
        requires = { {"nvim-lua/plenary.nvim"} }
    }
    --Undo
    use {"mbbill/undotree"}


    use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
    --LSP, autocomplete etc.
    use { 'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
        requires = {
          --- Uncomment these if you want to manage LSP servers from neovim
          {'williamboman/mason.nvim'},
          {'williamboman/mason-lspconfig.nvim'},

          -- LSP Support
          {'neovim/nvim-lspconfig'},
          -- Autocompletion
          {'hrsh7th/nvim-cmp'},
          {'hrsh7th/cmp-nvim-lsp'},
          {'L3MON4D3/LuaSnip'},
        }
    }
    --GIT
    use {"tpope/vim-fugitive"}

    --Look and Feel
    use {"ellisonleao/gruvbox.nvim"}
    use {"vim-airline/vim-airline"}
    use {"vim-airline/vim-airline-themes"}
    use {'norcalli/nvim-colorizer.lua'}
    use {'lukas-reineke/indent-blankline.nvim'}
    use {"HiPhish/nvim-ts-rainbow2"}

    end)