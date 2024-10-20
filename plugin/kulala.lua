local kulala = require("kulala")

vim.keymap.set("n", "<leader>kr", kulala.run)
vim.keymap.set("n", "<leader>ks", kulala.scratchpad)
vim.keymap.set("n", "<leader>kt", kulala.toggle_view)
vim.keymap.set("n", "<leader>kq", kulala.close)
