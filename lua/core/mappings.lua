vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pr", vim.cmd.RnvimrToggle)
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set('n', '<leader>nh', vim.cmd.noh)

-- vim.keymap.set('n', '<leader>eh', vim.cmd("TSEnable highlight"))

vim.keymap.set("n", "<leader>nf", vim.cmd.NamespaceFill)

vim.keymap.set("n", "<leader>lr", vim.cmd.LspRestart)

vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])
