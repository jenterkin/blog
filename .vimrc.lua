lsp = require('lspconfig')
lsp.astro.setup{
    cmd = { "npx", "astro-ls", "--stdio" }
}

vim.api.nvim_exec([[
autocmd! BufWritePost *.astro :lua vim.lsp.buf.format()
]], false)
