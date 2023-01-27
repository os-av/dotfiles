local fn = vim.fn

-- Packer installation
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
	print "installing packer, reopen nvim"
	vim.cmd [[packadd packer.nvim]]
end

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'
    use 'nanotech/jellybeans.vim' -- Colorscheme
	use 'chriskempson/base16-vim'
    use 'scrooloose/nerdtree'     -- File tree browser
    use 'jistr/vim-nerdtree-tabs'
    use "lukas-reineke/indent-blankline.nvim"  -- Indent lines

	use 'itchyny/lightline.vim'   -- Statusline
	use 'tpope/vim-fugitive'      -- Git integration

	-- LSP
    use 'neovim/nvim-lspconfig'
    use 'williamboman/nvim-lsp-installer'
	use 'hrsh7th/nvim-compe'
end)
