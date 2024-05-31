local map = vim.api.nvim_set_keymap
local execute = vim.api.nvim_command
local fn = vim.fn

map('n', '<Space>', '', {})
vim.g.mapleader = ' '

options = { noremap = true }

-- General
map('i', 'jk', '<Esc>', options)
map('i', 'kk', '<Esc>kk', options)
map('i', 'jj', '<Esc>jj', options)
map('n', '<C-l>', '<C-w><C-l>', options)
map('n', '<C-h>', '<C-w><C-h>', options)
map('n', '<C-j>', '<C-w><C-j>', options)
map('n', '<C-k>', '<C-w><C-k>', options)

-- Searching
map('n', '<Esc>', ':noh<cr>', options)

-- Bufferline
map('n', '<Tab>', ':BufferNext<cr>', options)
map('n', '<S-Tab>', ':BufferPrevious<cr>', options)
map('n', '<leader>w', ':BufferClose<cr>', options)

-- NVim Tree
map('n', '<leader>n', ':NvimTreeToggle<cr>', options)

-- Telescope
map('n', '<leader>ff', ':Telescope find_files<cr>', options)
map('n', '<leader>fg', ':Telescope live_grep<cr>', options)
map('n', '<leader>fb', ':Telescope buffers<cr>', options)

-- Easy Align
vim.api.nvim_set_keymap('x', 'ga', '<Plug>(EasyAlign)', {noremap = false, silent = false})
vim.api.nvim_set_keymap('n', 'ga', '<Plug>(EasyAlign)', {noremap = false, silent = false})

-- Diffview
vim.api.nvim_set_keymap('n', '<leader>do', ':DiffviewOpen<cr>', options)
vim.api.nvim_set_keymap('n', '<leader>dc', ':DiffviewClose<cr>', options)
vim.api.nvim_set_keymap('n', '<leader>dh', ':DiffviewFileHistory %<cr>', options)

-- Dispatch
map('n', '<leader>df', ':Dispatch rspec %<cr>', options)
map('n', '<leader>dt', ':Dispatch rspec<cr>', options)

-- Harpoon
local ui = require("harpoon.ui")
local mark = require("harpoon.mark")
vim.keymap.set("n", "<leader>ho", ui.toggle_quick_menu)
vim.keymap.set("n", "<leader>ha", mark.add_file)
vim.keymap.set("n", "<leader>hr", mark.rm_file)
vim.keymap.set("n", "<leader>hc", mark.clear_all)
vim.keymap.set("n", "<leader>h1", function() ui.nav_file(1) end)
vim.keymap.set("n", "<leader>h2", function() ui.nav_file(2) end)
vim.keymap.set("n", "<leader>h3", function() ui.nav_file(3) end)
vim.keymap.set("n", "<leader>h4", function() ui.nav_file(4) end)
