local map = vim.api.nvim_set_keymap
local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  execute('!git clone https://github.com/wbthomason/packer.nvim ' .. install_path)
  execute 'packadd packer.nvim'
end

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
map('n', '<C-x>', ':BufferClose<cr>', options)

-- NVim Tree
map('n', '<leader>n', ':NvimTreeToggle<cr>', options)

-- Telescope
map('n', '<leader>ff', ':Telescope find_files<cr>', options)
map('n', '<leader>fg', ':Telescope live_grep<cr>', options)
map('n', '<leader>fb', ':Telescope buffers<cr>', options)

-- Minimap
map('n', '<leader>mm', ':MinimapToggle<cr>', options)

-- Easy Align
vim.api.nvim_set_keymap('x', 'ga', '<Plug>(EasyAlign)', {noremap = false, silent = false})
vim.api.nvim_set_keymap('n', 'ga', '<Plug>(EasyAlign)', {noremap = false, silent = false})
