require('luasnip.loaders.from_vscode').lazy_load({ paths = "~/.config/nvim/snippets" })

local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local f = ls.function_node
local i = ls.insert_node
local ans = require("autonamespace")

ls.add_snippets("cs", {
    s("namespace", {
        -- equivalent to "${1:cond} ? ${2:then} : ${3:else}"
        -- i(1, "cond"), t(" ? "), i(2, "then"), t(" : "), i(3, "else")
        t("namespace "), f(ans.get_namespace, {}), t({ ";", "" }),
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
