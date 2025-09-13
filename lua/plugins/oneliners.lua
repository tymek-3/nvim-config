return {
    { "folke/todo-comments.nvim",   dependencies = { "nvim-lua/plenary.nvim" } },
    {
        'windwp/nvim-autopairs',
        event = "InsertEnter",
        config = true
    },
    {
        'brenoprata10/nvim-highlight-colors',
        opts = {
            enable_tailwind = true,
        },
    },
    { "tymek-3/autonamespace.nvim", ft = "cs", },

}
