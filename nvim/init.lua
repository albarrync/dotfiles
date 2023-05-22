require('general')
require('lsp')
require('mappings')

-- Colors
vim.cmd('colorscheme onedark')

-- Plugins
require('plugins')
require('plugins.nvim-cmp')
require('plugins.barbar')
require('plugins.copilot')
require('plugins.copilot-cmp')
require('plugins.gitsigns')
require('plugins.feline')
require('plugins.hlslens')
require('plugins.indent-blankline')
require('plugins.mason')
require('plugins.nvim-tree')
require('plugins.registers')
-- Order matters here
require('plugins.luasnip')

