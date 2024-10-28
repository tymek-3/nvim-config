local lsp_zero = require('lsp-zero')
-- lsp_zero.extend_lspconfig()

lsp_zero.on_attach(function(client, bufnr)
    -- see :help lsp-zero-keybindings
    -- to learn the available actions
    lsp_zero.default_keymaps({ buffer = bufnr, })
    lsp_zero.async_autoformat(client, bufnr)
end)

-- here you can setup the language servers

-- require('ionide').setup({
--     on_attach = lsp_zero.on_attach,
--     capabilities = lsp_zero.capabilites
-- })

local lspconfig = require("lspconfig")

local noAutoformatSetup = {
    on_init = function(client)
        client.server_capabilities.documentFormattingProvider = false
        client.server_capabilities.documentFormattingRangeProvider = false
    end
}

lspconfig.emmet_language_server.setup({
    filetypes = {
        "html",
        "svelte",
        "templ",
    },
    on_init = noAutoformatSetup.on_init
})

lspconfig.templ.setup(noAutoformatSetup)
lspconfig.html.setup(noAutoformatSetup)
lspconfig.sqls.setup(noAutoformatSetup)

require('mason').setup({
    registries = {
        'github:mason-org/mason-registry',
        'github:syndim/mason-registry'
    },
})
require('mason-lspconfig').setup({
    ensure_installed = {
        'gopls',
        'templ',
        'htmx',
        'svelte',
        'emmet_language_server',
        'lua_ls',
    },
    handlers = {
        lsp_zero.default_setup,
    },
})

local cmp = require('cmp')

cmp.setup({
    sources = {
        { name = "luasnip" },
        { name = "nvim_lsp" },
        { name = "roslyn" },
    },
    mapping = {
        ['<CR>'] = cmp.mapping.confirm {
            select = true
        },
        ['<Tab>'] = cmp.mapping.confirm {
            behaviour = cmp.ConfirmBehavior.Replace,
            select = true
        },
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<C-k>'] = cmp.mapping.scroll_docs(4),
        ['<C-j>'] = cmp.mapping.scroll_docs(-4),

    },
})

vim.filetype.add({ extension = { templ = "templ" } })
vim.lsp.inlay_hint.enable(true)

require('lspconfig').lua_ls.setup({})
