return {
    {
        "rest-nvim/rest.nvim",
        dependencies = {
            "nvim-treesitter/nvim-treesitter",
        },
        config = function()
            vim.keymap.set("n", "<leader>rr", function() vim.cmd [[Rest run]] end)
        end

    }
}
