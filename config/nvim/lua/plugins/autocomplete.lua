return {
    {
	"L3MON4D3/LuaSnip",

	dependencies = {
	    "rafamadriz/friendly-snippets",
	},

	config = function()
	    require("luasnip.loaders.from_vscode").lazy_load()
	end,
    },
    {
	"Saghen/blink.cmp",
	build = "cargo build --release",
	opts = {
	    signature = { enabled = true },

	    completion = {
		--documentation = { auto_show = true, auto_show_delay_ms = 500 },
		menu = {
		    auto_show = true,
		    draw = {
			treesitter = { "lsp" },
			columns = { { "kind_icon", "label", "label_description", gap = 1 }, { "kind" } },
		    },
		},
	    }, 
	}
    }

    }
