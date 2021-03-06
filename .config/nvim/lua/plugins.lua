return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    -- Colorscheme section
    -- use { "ellisonleao/gruvbox.nvim" }
    use("folke/tokyonight.nvim")
    -- use {
    --     "EdenEast/nightfox.nvim",
    --     run = ":NightfoxCompile",
    --     config = function ()
    --         require('nightfox').setup({
    --              options = {
    --                     -- Compiled file's destination location
    --                     transparent = true,    -- Disable setting background
    --                     terminal_colors = true, -- Set terminal colors (vim.g.terminal_color_*) used in `:terminal`
    --                     dim_inactive = false
    --                 }
    --             }
    --         )
    --     end
    -- }
    use { "tanvirtin/monokai.nvim" }
    -- Plugins
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ":TSUpdate",
        event = "BufWinEnter",
        config = "require('treesitter-config')"
    }
    use {
        'Pocco81/AutoSave.nvim',
        config = "require('autosave-config')"
    }
    use {
        'nvim-lualine/lualine.nvim',
        config = "require('lualine-config')",
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }
    use {
        'akinsho/bufferline.nvim',
        requires = 'kyazdani42/nvim-web-devicons',
        event = "BufWinEnter",
        config = "require('bufferline-config')"
    }
    use {
        'kyazdani42/nvim-tree.lua',
        requires = 'kyazdani42/nvim-web-devicons',
        cmd = "NvimTreeToggle",
        config = "require('nvim-tree-config')"
    }
    use { 'mbbill/undotree' }
    use { 'windwp/nvim-ts-autotag', event = "InsertEnter", after = "nvim-treesitter" }
    use { 'p00f/nvim-ts-rainbow', after = "nvim-treesitter" }
    use { 'windwp/nvim-autopairs', config = "require('autopairs-config')", after = "nvim-cmp" }
    use { 'folke/which-key.nvim', config = "require('whichkey-config')" }
    use {
        'nvim-telescope/telescope.nvim',
        requires = { { 'nvim-lua/plenary.nvim' }, { "kdheepak/lazygit.nvim" } },
        cmd = "Telescope",
        config = function()
            require('telescope-config')
        end,
    }
    use {
        'ThePrimeagen/harpoon',
        requires = {
            { 'nvim-lua/plenary.nvim' }
        },
        config = function()
            require('harpoon-config')
        end,
    }
    use({
        "kylechui/nvim-surround",
        config = function()
            require("nvim-surround").setup({
                -- Configuration here, or leave empty to use defaults
            })
        end
    })
    use { 'neovim/nvim-lspconfig', config = "require('lsp')" }
    use { 'hrsh7th/cmp-nvim-lsp' }
    use { 'hrsh7th/cmp-buffer' }
    use { 'hrsh7th/cmp-path' }
    use { 'hrsh7th/nvim-cmp' }
    use { 'hrsh7th/cmp-vsnip' }
    use { 'sindrets/diffview.nvim'}
    use { 'kdheepak/lazygit.nvim', config = "require('lazygit-config')" }
    use {
        'TimUntersberger/neogit',
        requires = {
            { 'nvim-lua/plenary.nvim' },
            { 'sindrets/diffview.nvim' }
        },
        config = "require('neogit-config')"
    }
    use { 'folke/todo-comments.nvim', config = "require('todo-config')" }
    use { 'numToStr/Comment.nvim', config = "require('comment-config')" }
    use { 'hrsh7th/vim-vsnip' }
    use { 'rafamadriz/friendly-snippets' }
    use { 'sheerun/vim-polyglot' }
    use { 'onsails/lspkind-nvim' }
    use { 'norcalli/nvim-colorizer.lua', config = "require('colorizer-config')", event = "BufRead" }
    use {
        'lewis6991/gitsigns.nvim',
        requires = { 'nvim-lua/plenary.nvim' },
        config = function()
            require('gitsigns').setup { current_line_blame = true }
        end
    }
    use {
        "lukas-reineke/indent-blankline.nvim",
        config = "require('blankline-config')",
        event = "BufRead"
    }
    use { "akinsho/toggleterm.nvim", config = "require('toggleterm-config')" }
    use { 'tami5/lspsaga.nvim', config = "require('lspsaga-config')" }
    use { 'williamboman/nvim-lsp-installer' }
    use { 'jose-elias-alvarez/null-ls.nvim', config = "require('null-ls-config')" }
    use { "jose-elias-alvarez/nvim-lsp-ts-utils"}
    use { "folke/zen-mode.nvim", config = "require('zen-mode-config')" }
    use { "folke/twilight.nvim", config = "require('twilight-config')", after = "nvim-treesitter" }
    use { 'machakann/vim-highlightedyank', config = "vim.cmd('highlight Normal guibg=none')" }

    -- JavaScript
    use { 'posva/vim-vue', config = "require('vue-config')" }
    use { 'othree/javascript-libraries-syntax.vim' }
end)
