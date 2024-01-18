local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  lsp_zero.default_keymaps({buffer = bufnr, })
end)

-- here you can setup the language servers 

require('mason').setup({})
require('mason-lspconfig').setup({
	ensure_installed = {
		'omnisharp'
	},
	handlers = {
		lsp_zero.default_setup,
	},
})

local cmp = require('cmp')

cmp.setup({
	mapping = {
		['<C-Space>'] = cmp.mapping.confirm{
			behaviour = cmp.ConfirmBehavior.Replace,
			select = true
		}
	}
})

require('lspconfig').lua_ls.setup({})
