vim.g.mapleader = " "
-- vim.keymap.set("n", "<leader>pv", vim.cmd.NvimTreeToggle)
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set('n', '<leader>nh', vim.cmd.noh)

vim.keymap.set('n', "<leader>rn", function() require('rest-nvim').run() end)

vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])
