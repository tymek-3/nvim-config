vim.opt.termguicolors = true

require('tokyonight').setup({ transparent = vim.g.transparent_enabled})

require('transparent').setup({
	  groups = { -- table: default groups
    'Normal', 'NormalNC', 'Comment', 'Constant', 'Special', 'Identifier',
    'Statement', 'PreProc', 'Type', 'Underlined', 'Todo', 'String', 'Function',
    'Conditional', 'Repeat', 'Operator', 'Structure', 'LineNr', 'NonText',
    'SignColumn', 'CursorLine', 'CursorLineNr', 'StatusLine', 'StatusLineNC',
    'EndOfBuffer',
  },
  extra_groups = {
	  "NvimTreeNormal",
	  "NvimTreeNormalFloat",
	  "NvimTreeNormalNC",
	  "NvimTreeEndOfBuffer",
	  "NvimTreeNormSignColumnalNC",
	  "NvimTreePopup",
	  "NvimTreeSignColumn",
	  "NvimTreeWinSeparator"
  }, -- table: additional groups that should be cleared
  exclude_groups = {}, -- table: groups you don't want to clear
})


function SetColor(color)
	color = color or "tokyonight"
	vim.cmd.colorscheme(color)
end

SetColor()
