-- lsp-zero
local lsp = require('lsp-zero').preset({})

lsp.preset("recommended")

lsp.ensure_installed({
	'gopls',
	'rust_analyzer',
})

lsp.on_attach(function(client, bufnr)
  lsp.default_keymaps({buffer = bufnr})
end)

-- (Optional) Configure lua language server for neovim
require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())

--[[
-- lsp based folding with ufo
-- disabling this because colorscheme gets wonky
-- using tresitter based ufo config instead.

lsp.set_server_config({
  capabilities = {
    textDocument = {
      foldingRange = {
        dynamicRegistration = false,
        lineFoldingOnly = true
      }
    }
  }
})

--]]

lsp.setup()
