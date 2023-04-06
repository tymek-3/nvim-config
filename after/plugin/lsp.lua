local lsp = require('lsp-zero').preset("recommended")

lsp.on_attach(function(client, bufnr)
  lsp.default_keymaps({buffer = bufnr})
end)

-- When you don't have mason.nvim installed
-- You'll need to list the servers installed in your system
-- lsp.setup_servers({'tsserver', 'eslint', 'omnisharp'})

lsp.ensure_installed({
	'tsserver',
	'lua_ls',
	'omnisharp'
})

-- (Optional) Configure lua language server for neovim
-- require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())

lsp.setup()

