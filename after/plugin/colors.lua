-- colorscheme configuration
--


require('rose-pine').setup({
    disable_background = false,
    dark_variant = 'moon',
    highlight_groups = {
	    ColorColumn = { bg = 'rose' },

	    -- Blend colours against the "base" background
	    CursorLine = { bg = 'foam', blend = 10 },
	    StatusLine = { fg = 'love', bg = 'love', blend = 10 },
	}
})


-- copied this from https://github.com/ThePrimeagen/init.lua/blob/master/after/plugin/colors.lua
-- rose-pine bug (https://github.com/rose-pine/neovim/discussions/93) wouldn't let us 
-- override default config. 
function ColorMyPencils(color)
	color = color or "rose-pine"
	vim.cmd.colorscheme(color)

	--vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	--vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

end

ColorMyPencils()
