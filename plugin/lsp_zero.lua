local lsp_zero = require('lsp-zero')
-- lsp_zero.extend_lspconfig()

lsp_zero.on_attach(function(client, bufnr)
    -- see :help lsp-zero-keybindings
    -- to learn the available actions
    lsp_zero.default_keymaps({ buffer = bufnr, })
    lsp_zero.async_autoformat(client, bufnr)
end)

-- here you can setup the language servers

require('ionide').setup({
    on_attach = lsp_zero.on_attach,
    capabilities = lsp_zero.capabilites
})

require("lspconfig").emmet_language_server.setup({
    filetypes = {
        "html",
        "svelte",
    }
})

require('mason').setup({})
require('mason-lspconfig').setup({
    ensure_installed = {
        'omnisharp',
    },
    handlers = {
        lsp_zero.default_setup,
    },
})

local cmp = require('cmp')

cmp.setup({
    mapping = {
        ['<CR>'] = cmp.mapping.confirm {
            behaviour = cmp.ConfirmBehavior.Replace,
            select = true
        },
        ['<Tab>'] = cmp.mapping.confirm {
            behaviour = cmp.ConfirmBehavior.Replace,
            select = true
        },
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<C-k>'] = cmp.mapping.select_prev_item {
            behaviour = cmp.SelectBehavior.Select
        },
        ['<C-j>'] = cmp.mapping.select_next_item {
            behaviour = cmp.SelectBehavior.Select
        }

    }
})

require('lspconfig').lua_ls.setup({})
