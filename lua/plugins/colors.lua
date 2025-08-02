local function enable_transparency()
    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
end
return {
    {
		"rebelot/kanagawa.nvim",
		lazy = false,
		priority = 1000,
        config = function()
            vim.cmd.colorscheme "kanagawa-wave"
            -- enable_transparency()
        end
	},
    { 
        "nvim-lualine/lualine.nvim",
        dependencies = {
            "nvim-tree/nvim-web-devicons"
        }, 
        opts = {
            theme = "kanagawa-wave",
            icons_enabled = true,
            component_separators = { left = '', right = '' },
            section_separators = { left = '', right = '' },
            always_divide_middle = true,
            globalstatus = false,
            refresh = {
                statusline = 1000,
                tabline = 1000,
                winbar = 1000,
            }
        },
        sections = {
            lualine_a = { 'mode' },
            lualine_b = { 'branch', 'diff', 'diagnostics' },
            lualine_c = { { 'filename', path = 1 } },
            lualine_x = { { "rest", icon = "", fg = "#428890" }, 'encoding', 'fileformat', 'filetype' },
            lualine_y = { 'progress' },
            lualine_z = { 'location' },
        },
        inactive_sections = {
            lualine_a = {},
            lualine_b = {},
            lualine_c = { 'filename' },
            lualine_x = { 'location' },
            lualine_y = {},
            lualine_z = {}
        }
    },
}
