-- packer main
--
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- packer can manage itself
	use 'wbthomason/packer.nvim'

	-- theme rose-pine/neovim
	use({
		'rose-pine/neovim',
		as = 'rose-pine',
		config = function()
			vim.cmd('colorscheme rose-pine')
		end
	})

	-- treesitter for neovim
	use({"nvim-treesitter/nvim-treesitter", run = ":TSUpdate"})
	use("nvim-treesitter/nvim-treesitter-context")

	-- nvim-tree file explorer
	use {
		'nvim-tree/nvim-tree.lua',
		requires = {
			'nvim-tree/nvim-web-devicons', -- optional
		}--,
	}

	 -- Folding support	
	 use({'kevinhwang91/nvim-ufo', requires = 'kevinhwang91/promise-async'})
	 use("luukvbaal/statuscol.nvim")

	-- language server
	use {
    		"VonHeikemen/lsp-zero.nvim",
    		branch = "v2.x",
    		requires = {
        		-- LSP Support
        		{"neovim/nvim-lspconfig"}, -- Required
        		{
            		-- Optional
            		"williamboman/mason.nvim",
            		run = function()
                		pcall(vim.cmd, "MasonUpdate")
            		end
        		},
        		{"williamboman/mason-lspconfig.nvim"}, -- Optional
        		-- Autocompletion
        		{"hrsh7th/nvim-cmp"}, -- Required
        		{"hrsh7th/cmp-nvim-lsp"}, -- Required
        		{"L3MON4D3/LuaSnip"}, -- Required
		}
	}

	-- More rust tools
	-- use 'jose-elias-alvarez/null-ls.nvim'
	use 'rust-lang/rust.vim'
	--use 'simrat39/rust-tools.nvim'
	--* `Ctrl-l` move to next buffer. rust Debugging
	-- use 'nvim-lua/plenary.nvim'
	-- use 'mfussenegger/nvim-dap'

	use "akinsho/bufferline.nvim" -- Bufferline.
	use 'famiu/bufdelete.nvim'

	use {
		"christoomey/vim-tmux-navigator",
		lazy = false,
	}

	use "akinsho/toggleterm.nvim" -- toggle-terminal

	-- Auto close brackets
	use "windwp/nvim-autopairs"

end)
