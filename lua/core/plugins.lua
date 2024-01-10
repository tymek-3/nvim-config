return {
	{
		'nvim-telescope/telescope.nvim', tag = '0.1.5',
		  dependencies = { 'nvim-lua/plenary.nvim', 'BurntSushi/ripgrep' }
    },
	{
		"ThePrimeagen/harpoon",
		branch = "harpoon2",
		dependencies = { "nvim-lua/plenary.nvim" }
	},
	{"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"},
	{
	  "folke/tokyonight.nvim",
	  lazy = false,
	  priority = 1000,
	  opts = {},
	},

	-- LSP ZERO
	{'williamboman/mason.nvim'},
	{'williamboman/mason-lspconfig.nvim'},
	{'VonHeikemen/lsp-zero.nvim', branch = 'v3.x'},
	{'neovim/nvim-lspconfig'},
	{'hrsh7th/cmp-nvim-lsp'},
	{'hrsh7th/nvim-cmp'},
	{'L3MON4D3/LuaSnip'},
	-- LSP ZERO

	{'nvim-tree/nvim-tree.lua', dependencies = {'nvim-tree/nvim-web-devicons'}},

	{'xiyaowong/transparent.nvim', lazy = false, priority = 1000},

	{"folke/todo-comments.nvim", dependencies = { "nvim-lua/plenary.nvim" }},

	{"rest-nvim/rest.nvim", dependencies = { "nvim-lua/plenary.nvim" }},

	{ 'nvim-lualine/lualine.nvim', dependencies = { 'nvim-tree/nvim-web-devicons' }},

	{ 'numToStr/Comment.nvim', opts = {
        -- add any options here 
		lazy = false }
	},
}
