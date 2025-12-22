return {
    'stevearc/aerial.nvim',
    opts = {
	    on_attach = function(bufnr)
	    vim.keymap.set("n", "<leader>[", "<cmd>AerialPrev<CR>", { buffer = bufnr })
	    vim.keymap.set("n", "<leader>]", "<cmd>AerialNext<CR>", { buffer = bufnr })
	end,
    },

    dependencies = {
	"nvim-treesitter/nvim-treesitter",
	"nvim-tree/nvim-web-devicons"
    },
}
