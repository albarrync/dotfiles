local nvim_lsp = require('lspconfig')
local cmp = require('cmp_nvim_lsp')
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

-- Diagnostics symbols for display in the sign column.
local signs = { Error = "", Warn = "", Hint = "", Info = "" }
for type, icon in pairs(signs) do
  local hl = "DiagnosticSign" .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end
vim.cmd('setlocal omnifunc=v:lua.vim.lsp.omnifunc')

nvim_lsp.dockerls.setup{
  capabilities = cmp.default_capabilities(vim.lsp.protocol.make_client_capabilities())
}
nvim_lsp.jsonls.setup{
  commands = { Format = { function() vim.lsp.buf.range_formatting({},{0,0},{vim.fn.line("$"),0}) end } },
  capabilities = cmp.default_capabilities(vim.lsp.protocol.make_client_capabilities())
}
nvim_lsp.yamlls.setup{
  capabilities = cmp.default_capabilities(vim.lsp.protocol.make_client_capabilities())
}
nvim_lsp.vimls.setup{
  capabilities = cmp.default_capabilities(vim.lsp.protocol.make_client_capabilities())
}
nvim_lsp.dartls.setup{
  capabilities = cmp.default_capabilities(vim.lsp.protocol.make_client_capabilities())
}
nvim_lsp.tsserver.setup{
  capabilities = cmp.default_capabilities(vim.lsp.protocol.make_client_capabilities())
}
nvim_lsp.cssls.setup{
  capabilities = cmp.default_capabilities(vim.lsp.protocol.make_client_capabilities())
}
nvim_lsp.pyright.setup{
  capabilities = cmp.default_capabilities(vim.lsp.protocol.make_client_capabilities())
}
nvim_lsp.clojure_lsp.setup{
  capabilities = cmp.default_capabilities(vim.lsp.protocol.make_client_capabilities())
}
nvim_lsp.elixirls.setup{
  capabilities = cmp.default_capabilities(vim.lsp.protocol.make_client_capabilities())
}
nvim_lsp.terraformls.setup{
  capabilities = cmp.default_capabilities(vim.lsp.protocol.make_client_capabilities())
}
nvim_lsp.pylsp.setup{
  capabilities = cmp.default_capabilities(vim.lsp.protocol.make_client_capabilities())
}
nvim_lsp.lua_ls.setup{
  capabilities = cmp.default_capabilities(vim.lsp.protocol.make_client_capabilities())
}
-- If they're not working, try running `gem install solargraph` and `gem install ruby-lsp`
-- ruby-lsp requires ruby version 2.7.3 or higher and nvim 0.10.0
nvim_lsp.ruby_lsp.setup{
  cmd = { "/Users/alexb/.rbenv/shims/ruby-lsp"},
  capabilities = cmp.default_capabilities(vim.lsp.protocol.make_client_capabilities())
}
nvim_lsp.solargraph.setup{
  cmd = { "/Users/alexb/.rbenv/shims/solargraph", "stdio"},
  capabilities = cmp.default_capabilities(vim.lsp.protocol.make_client_capabilities())
}
nvim_lsp.standardrb.setup{
  cmd = { "/Users/alexb/.rbenv/shims/standardrb", "--lsp"},
  capabilities = cmp.default_capabilities(vim.lsp.protocol.make_client_capabilities())
}
nvim_lsp.tailwindcss.setup{
  capabilities = cmp.default_capabilities(vim.lsp.protocol.make_client_capabilities())
}
nvim_lsp.prismals.setup{
  capabilities = cmp.default_capabilities(vim.lsp.protocol.make_client_capabilities())
}
