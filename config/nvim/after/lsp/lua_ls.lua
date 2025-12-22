-- Source - https://stackoverflow.com/a
-- Posted by Jo Totland
-- Retrieved 2025-12-22, License - CC BY-SA 4.0

vim.lsp.config("lua_ls", {
    settings = {
        Lua = {
            diagnostics = {
                globals = { "vim" }}}}})
