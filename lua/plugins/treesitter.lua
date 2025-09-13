return {
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        lazy = false,
        priority = 1000,
        config = function()
            local configs = require("nvim-treesitter.configs")
            configs.setup({
                highlight = { enable = true },
                indent = { enable = true },
                autotage = { enable = true },
                ensure_installed = {
                    "lua",
                    "go",
                    "templ",
                    "html",
                    "http",
                    "css",
                },
            })
        end
    },
}
