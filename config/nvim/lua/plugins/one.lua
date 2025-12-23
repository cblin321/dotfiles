return {
    {
	-- This helps with ssh tunneling and copying to clipboard
	'ojroques/vim-oscyank',
    },

    --{
    -- Git plugin
    -- 'tpope/vim-fugitive',
    --},
    --
    --
    {
	-- Show CSS Colors
	'brenoprata10/nvim-highlight-colors',
	config = function()
	    require('nvim-highlight-colors').setup({})
	end
    },

    {
	'wsdjeg/rooter.nvim',
	config = function() 
	    require('rooter').setup({
		root_pattern = { 
		    ".git",
		    ".hg",
		    ".svn",

		    "go.work",
		    "go.mod",

		    "pnpm-workspace.yaml",
		    "package.json",
		    "tsconfig.json",
		    "jsconfig.json",
		    "bun.lockb",
		    "yarn.lock",
		    "package-lock.json",

		    "Makefile",
		}
	    })
	end
    },

    {
	"neovim/nvim-lspconfig",
    },
    
    {
	"christoomey/vim-tmux-navigator",
    }
}

