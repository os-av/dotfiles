-- Packer installation
local fn = vim.fn
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
	PACKER_BOOTSTRAP = fn.system {
		"git",
		"clone",
		"--depth",
		"1",
		"https://github.com/wbthomason/packer.nvim",
		install_path,
	}
	print "Installing packer, reopen Neovim"
	vim.cmd [[packadd packer.nvim]]
end

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'
	use {
  		'nvim-telescope/telescope.nvim', tag = '0.1.1',
		-- or                          , branch = '0.1.x',
  		requires = { {'nvim-lua/plenary.nvim'} 
		}
	}
	use 'nanotech/jellybeans.vim' -- Colorscheme
	use ('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
	use 'tpope/vim-fugitive'
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
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }
    use 'lukas-reineke/indent-blankline.nvim'
    use 'preservim/nerdtree'
    use 'jistr/vim-nerdtree-tabs'
    use 'EdenEast/nightfox.nvim'
    use {
        'nvim-tree/nvim-tree.lua',
        requires = {
            'nvim-tree/nvim-web-devicons', -- optional, for file icons
        },
    }
end)
