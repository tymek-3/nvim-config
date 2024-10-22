return {
    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.5',
        dependencies = { 'nvim-lua/plenary.nvim', 'BurntSushi/ripgrep' }
    },
    {
        "ThePrimeagen/harpoon",
        branch = "harpoon2",
        dependencies = { "nvim-lua/plenary.nvim" }
    },
    { "nvim-treesitter/nvim-treesitter",  build = ":TSUpdate", lazy = false, priority = 1000 },
    {
        "folke/tokyonight.nvim",
        lazy = false,
        priority = 1000,
        opts = {},
    },

    {
        "rose-pine/neovim",
        name = "rose-pine",
        lazy = false,
        priority = 1000
    },
    {
        "scottmckendry/cyberdream.nvim",
        lazy = false,
        priority = 1000,
    },
    {
        "eldritch-theme/eldritch.nvim",
        lazy = false,
        priority = 1000,
    },
    {
        "Mofiqul/dracula.nvim",
        lazy = false,
        priority = 1000,
    },
    {
        "rebelot/kanagawa.nvim",
        lazy = false,
        priority = 1000,
    },
    -- LSP ZERO
    { 'williamboman/mason.nvim' },
    { 'williamboman/mason-lspconfig.nvim' },
    { 'VonHeikemen/lsp-zero.nvim',        branch = 'v3.x' },
    { 'neovim/nvim-lspconfig' },
    { 'hrsh7th/cmp-nvim-lsp' },
    { 'hrsh7th/nvim-cmp' },
    {
        "L3MON4D3/LuaSnip",
        dependencies = { "rafamadriz/friendly-snippets" },
        -- follow latest release.
        version = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
        -- install jsregexp (optional!).
        build = "make install_jsregexp"
    },
    { 'saadparwaiz1/cmp_luasnip' },
    -- LSP ZERO
    {
        "nvim-tree/nvim-tree.lua",
        version = "*",
        lazy = false,
        dependencies = {
            "nvim-tree/nvim-web-devicons",
        },
        config = function()
            require("nvim-tree").setup {}
        end,
    },
    { 'xiyaowong/transparent.nvim', lazy = false,                                    priority = 1000 },
    { "folke/todo-comments.nvim",   dependencies = { "nvim-lua/plenary.nvim" } },
    { 'nvim-lualine/lualine.nvim',  dependencies = { 'nvim-tree/nvim-web-devicons' } },

    {
        'numToStr/Comment.nvim',
        opts = {
            -- add any options here
            lazy = false
        }
    },
    { 'hrsh7th/vim-vsnip' },
    -- { 'ionide/Ionide-vim' },
    -- {
    --     'olexsmir/gopher.nvim',
    --     ft = "go",
    --     config = function()
    --         require("gopher").setup({
    --             commands = {
    --                 go = "go",
    --                 gomodifytags = "gomodifytags",
    --                 gotests = "~/go/bin/gotests", -- also you can set custom command path
    --                 impl = "impl",
    --                 iferr = "iferr",
    --             },
    --         })
    --     end,
    --     build = function()
    --         vim.cmd [[silent! GoInstallDeps]]
    --     end,
    --     dependencies = {
    --         "nvim-lua/plenary.nvim",
    --         "nvim-treesitter/nvim-treesitter"
    --     }
    -- },
    {
        'windwp/nvim-autopairs',
        event = "InsertEnter",
        config = true
        -- use opts = {} for passing setup options
        -- this is equalent to setup({}) function
    },
    -- { 'kevinhwang91/rnvimr', lazy = false, },
    {
        'seblj/roslyn.nvim',
        ft = "cs",
        opts = {
            config = {
                -- Here you can pass in any options that that you would like to pass to `vim.lsp.start`
                -- The only options that I explicitly override are, which means won't have any effect of setting here are:
                --     - `name`
                --     - `cmd`
                --     - `root_dir`
                --     - `on_init`
                settings = {
                    ["csharp|background_analysis"] = {
                        dotnet_analyzer_diagnostics_scope = "fullSolution",
                        dotnet_compiler_diagnostics_scope = "fullSolution",
                    },
                    ["csharp|completion"] = {
                        dotnet_show_completion_items_from_unimported_namespaces = true,
                        dotnet_show_name_completion_suggestions = true,
                    },
                    ["csharp|inlay_hints"] = {
                        csharp_enable_inlay_hints_for_implicit_object_creation = true,
                        csharp_enable_inlay_hints_for_implicit_variable_types = false,
                        csharp_enable_inlay_hints_for_lambda_parameter_types = false,
                        csharp_enable_inlay_hints_for_types = false,
                        dotnet_enable_inlay_hints_for_indexer_parameters = false,
                        dotnet_enable_inlay_hints_for_literal_parameters = false,
                        dotnet_enable_inlay_hints_for_object_creation_parameters = true,
                        dotnet_enable_inlay_hints_for_other_parameters = true,
                        dotnet_enable_inlay_hints_for_parameters = true,
                        dotnet_suppress_inlay_hints_for_parameters_that_differ_only_by_suffix = true,
                        dotnet_suppress_inlay_hints_for_parameters_that_match_argument_name = true,
                        dotnet_suppress_inlay_hints_for_parameters_that_match_method_intent = true,
                    },
                }
            },
            -- leave commented if using mason
            -- exe = {
            --     "dotnet",
            --     vim.fs.joinpath(vim.fn.stdpath("data"), "roslyn", "Microsoft.CodeAnalysis.LanguageServer.dll"),
            -- },
            -- NOTE: Set `filewatching` to false if you experience performance problems. will fallback to nvims filewatching
            filewatching = true,
        }
    },
    {
        'brenoprata10/nvim-highlight-colors',
        opts = {
            enable_tailwind = true,
        },
    },
    {
        dir = "~/workspace/lua/autonamespace",
        ft = "cs",
        name = "autonamespace",
        config = function()
            require("autonamespace").setup({})
        end
    },
    {
        'MeanderingProgrammer/render-markdown.nvim',
        opts = {},
    },
    { "nvim-pack/nvim-spectre" },
    { 'mistweaverco/kulala.nvim', opts = {} },
}
