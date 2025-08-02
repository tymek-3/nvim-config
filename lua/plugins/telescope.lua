return {
    {
		'nvim-telescope/telescope.nvim',
		tag = '0.1.5',
		dependencies = { 'nvim-lua/plenary.nvim', 'BurntSushi/ripgrep' },
        config = function()
            local builtin = require("telescope.builtin")
            vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
            vim.keymap.set("n", "<leader>fc", builtin.colorscheme, {})
            vim.keymap.set("n", "<leader>ft", builtin.filetypes, {})
            vim.keymap.set("n", "<leader>fr", builtin.lsp_references, {})
            vim.keymap.set("n", "<leader>fd", builtin.diagnostics, {})
            vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
            vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
            vim.keymap.set("n", "<leader>fk", builtin.keymaps, {})
        end
	},
}
