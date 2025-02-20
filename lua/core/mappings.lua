vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.NvimTreeToggle)
vim.keymap.set('n', '<leader>nh', vim.cmd.noh)

vim.keymap.set("n", "<leader>nf", vim.cmd.NamespaceFill)

vim.keymap.set("n", "<leader>lr", vim.cmd.LspRestart)

vim.keymap.set("n", "<leader>tt", vim.cmd.TransparentToggle)
vim.keymap.set("n", "<leader>sr", vim.cmd.Spectre)
vim.keymap.set("n", "<leader>cl", vim.lsp.codelens.refresh)

vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set("n", "gv", "<C-w>vgd", { remap = true })

vim.api.nvim_set_keymap('n', '<leader>do', '<cmd>lua vim.diagnostic.open_float()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>d[', '<cmd>lua vim.diagnostic.goto_prev()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>d]', '<cmd>lua vim.diagnostic.goto_next()<CR>', { noremap = true, silent = true })

vim.api.nvim_create_user_command('W', 'w', {})
