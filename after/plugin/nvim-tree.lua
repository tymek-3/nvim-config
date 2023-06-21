
local function my_on_attach()
	local api = require "nvim-tree.api"
	vim.keymap.set("n", "<leader>pv", api.tree.toggle)
end

require("nvim-tree").setup {
	on_attach = my_on_attach,
	git = {
        enable = true,
        ignore = true,
        show_on_dirs = true,
        show_on_open_dirs = true,
        disable_for_dirs = {},
        timeout = 400,
      },
}
