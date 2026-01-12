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
        dependencies = {
            "jdrupal-dev/css-vars.nvim",
        },
        build = "cargo build --release",
        opts = {
            signature = { enabled = true },
            sources = {
                default = { 'lsp', 'buffer', 'snippets', 'path', "css_vars" },
                providers = {
                    css_vars = {
                        name = "css-vars",
                        module = "css-vars.blink",
                        opts = {
                            search_extensions = { ".js", ".ts", ".jsx", ".tsx", ".css" }
                        }
                    },
                },
            },
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
