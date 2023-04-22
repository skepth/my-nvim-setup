-- nvim file tree
--


vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<cr>")

require("nvim-tree").setup({
  sort_by = "extension",
  hijack_cursor = true,
  renderer = {
    group_empty = true, -- compact empty folders together.
  },
  filters = {
    dotfiles = false,
  },

  view = {
	relativenumber = true,
  },
})
