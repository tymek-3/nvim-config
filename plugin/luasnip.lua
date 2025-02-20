require('luasnip.loaders.from_vscode').lazy_load({ paths = "~/.config/nvim/snippets" })

local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local f = ls.function_node
local i = ls.insert_node
local an = require("autonamespace")

ls.add_snippets("cs", {
    s("namespace", {
        t("namespace "), f(an.get_namespace, {}), t({ ";", "" }),
        i(1)
    })
})

-- "Namespace": {
--   "prefix": "namespace",
--   "body": [
--     "namespace ;${1}",
--     "$0"
--   ],
--   "description": "Namespace"
-- },
