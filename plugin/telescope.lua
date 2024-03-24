local builtin = require("telescope.builtin")
local telescope = require("telescope")

telescope.load_extension("rest")

vim.keymap.set("n", "<leader>re", telescope.extensions.rest.select_env, {})

vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
