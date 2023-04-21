-- colorscheme configuration
--


-- transparent bg on windows and floating windows.
vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

require('rose-pine').setup({
-- 	variant = 'auto',
	dark_variant = 'moon',
	-- disable_background = true

})
