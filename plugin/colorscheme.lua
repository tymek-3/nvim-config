vim.opt.termguicolors = true

-- require('tokyonight').setup({ transparent = vim.g.transparent_enabled })

-- require("cyberdream").setup({
--     -- Recommended - see "Configuring" below for more config options
--     transparent = true,
--     italic_comments = true,
--     hide_fillchars = true,
--     borderless_telescope = true,
--     terminal_colors = false,
-- })

require('transparent').setup({
    groups = { -- table: default groups
        'Normal', 'NormalNC', 'Comment', 'Constant', 'Special', 'Identifier',
        'Statement', 'PreProc', 'Type', 'Underlined', 'Todo', 'String', 'Function',
        'Conditional', 'Repeat', 'Operator', 'Structure', 'LineNr', 'NonText',
        'SignColumn', 'CursorLineNr', 'StatusLine', 'StatusLineNC',
        'EndOfBuffer',
    },
    extra_groups = {
        "NvimTreeNormal",
        "TelescopePromptPrefix",
        "TelescopePromptNormal",
        "TelescopeResultsNormal",
        "TelescopePreviewNormal",
        "TelescopePromptBorder",
        "TelescopeResultsBorder",
        "TelescopePreviewBorder",
        "TelescopePromptTitle",
        "TelescopeResultsTitle",
        "TelescopePreviewTitle",
    }, -- table: additional groups that should be cleared
    exclude_groups = {
        "TelescopeSelection",
        'CursorLine'
    }, -- table: groups you don't want to clear
    on_clear = function()
        vim.api.nvim_set_hl(0, 'CursorLine', { bg = "#1c1c1c" })
        vim.api.nvim_set_hl(0, 'TelescopeSelection', { bg = '#222222', bold = true })
    end
})


function SetColor(color)
    color = color or "kanagawa-wave"
    vim.cmd.colorscheme(color)
    vim.api.nvim_set_hl(0, 'TelescopeSelection', { bg = '#222222', bold = true })
    vim.api.nvim_set_hl(0, 'CursorLine', { bg = "#1c1c1c" })
end

SetColor()
