-- Bufferline
--

vim.keymap.set("n", "<C-l>", ":BufferLineCycleNext<cr>")
vim.keymap.set("n", "<C-h>", ":BufferLineCyclePrev<cr>")

require("bufferline").setup({

	options = {
		offsets = {
			{
				filetype = "NvimTree",
				text = "",
				padding = 1,
			},
		},
		show_buffer_close_icons = false,
		how_buffer_icons = true,
	--	indicator_icon = "▎",
	},
})
