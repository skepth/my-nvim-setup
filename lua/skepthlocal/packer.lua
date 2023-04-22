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

	use "akinsho/bufferline.nvim" -- Bufferline.

end)
