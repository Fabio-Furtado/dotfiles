local plugins = {}

function plugins.load()
return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- When a file is opened, this will switch the vim workspace to the project's root
    use 'airblade/vim-rooter'

    -- git support
    use 'lewis6991/gitsigns.nvim'

    -- highlights yanked region
    use 'machakann/vim-highlightedyank'

    -- treesitter provides better syntax highlight
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }

    -- Telescope
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
    use 'nvim-telescope/telescope-file-browser.nvim'
    use 'kyazdani42/nvim-web-devicons'

    -- Configurations for Nvim LSP, DAP and Linters
    use 'williamboman/mason.nvim'
    use 'williamboman/mason-lspconfig.nvim'
    use 'jayp0521/mason-nvim-dap.nvim'
    use 'neovim/nvim-lspconfig'
    use 'mfussenegger/nvim-dap'
    use 'rcarriga/nvim-dap-ui'
    use 'theHamsta/nvim-dap-virtual-text' -- inline values
    use 'mfussenegger/nvim-dap-python'
    use 'j-hui/fidget.nvim' -- feedback while I wait for rust-analyzer

    -- lsp auto-completion
    use 'hrsh7th/nvim-cmp' -- the completion engine
    use 'hrsh7th/cmp-buffer' -- words from the curr buffer
    use 'hrsh7th/cmp-path' -- path auto-completion
    use 'hrsh7th/cmp-nvim-lsp' -- lsp
    use 'hrsh7th/cmp-nvim-lua' -- nvim lua api
    use 'L3MON4D3/LuaSnip' -- snippets engine
    use 'saadparwaiz1/cmp_luasnip' -- the luasnip driver for cmp

    use 'windwp/nvim-autopairs' -- auto-close pairs

    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }

    -- proper tabs
    use {
        'akinsho/bufferline.nvim',
        tag = 'v3.*',
        requires = 'kyazdani42/nvim-web-devicons'
    }

    -- netrw icons
    use 'prichrd/netrw.nvim'

    -- themes
    use 'Mofiqul/vscode.nvim'
    use 'folke/tokyonight.nvim'
    use {
        'catppuccin/nvim',
        as = 'catppuccin',
    }
    use({
        'rose-pine/neovim',
        as = 'rose-pine',
    })
    use 'vimpostor/vim-lumen' -- auto dark mode
end)
end

return plugins

