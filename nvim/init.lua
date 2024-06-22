local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end

vim.opt.rtp:prepend(lazypath)
vim.g.mapleader = " "

require("lazy").setup({
	'AndrewRadev/tagalong.vim', -- changes matching opposite html tag
	'BurntSushi/ripgrep', -- goat
	'JoosepAlviste/nvim-ts-context-commentstring', -- comments lines with 'gcc'
	'SmiteshP/nvim-gps', -- shows context of cursor in statusline
	'andymass/vim-matchup', -- better % functionality
	'chaoren/vim-wordmotion', -- better word motion functionality
	'chrisbra/csv.vim', -- csv viewer
	'crivotz/nvim-colorizer.lua', -- colors
	'editorconfig/editorconfig-vim', -- !
	'folke/todo-comments.nvim', -- highlights comments
	'honza/vim-snippets', -- general snippets
	'hrsh7th/cmp-calc', -- cmp source for math
	'hrsh7th/cmp-cmdline', -- cmp source for cmdline
	'hrsh7th/cmp-nvim-lsp', -- cmp source for LSP
	'hrsh7th/cmp-path', -- cmp source for paths
	'hrsh7th/cmp-vsnip', -- cmp source for vsnip
	'hrsh7th/nvim-cmp', -- completion engine
	'hrsh7th/vim-vsnip', -- !
  'saadparwaiz1/cmp_luasnip', -- cmp source for luasnip
	'junegunn/vim-easy-align', -- align from delimiters with 'ga'
	'karb94/neoscroll.nvim', -- smooth scrolling
	'nvim-tree/nvim-web-devicons', -- icons
	'mhartington/formatter.nvim', -- format runner
	'moll/vim-node', -- node utilities
	'navarasu/onedark.nvim', -- color scheme
	'neovim/nvim-lspconfig', -- lsp
	'numtostr/FTerm.nvim', -- floating terminal
	'nvim-lua/plenary.nvim', -- lua functions
	'nvim-lua/popup.nvim', -- working?
	'nvim-telescope/telescope-fzy-native.nvim', -- fuzzy telescope
	'nvim-telescope/telescope-project.nvim', -- projects telescope
	'nvim-telescope/telescope.nvim', -- telescope
  'nvim-tree/nvim-tree.lua', -- nvim-tree
	'onsails/lspkind-nvim', -- pictograms/icons
	'quangnguyen30192/cmp-nvim-tags', -- !
	'rafamadriz/friendly-snippets', -- snippets
	'ray-x/cmp-treesitter', -- cmp source for treesitter
	'rhysd/committia.vim', -- better commit window
	'romgrk/barbar.nvim', -- buffer/tab bar plugin
	'romgrk/nvim-treesitter-context', -- cursor context within buffer
	'ryanoasis/vim-devicons', -- glyphs and icons
	'sharkdp/fd', -- goat
	'sindrets/diffview.nvim', -- diffs in vim buffers
	'tpope/vim-commentary', -- comments
	'tpope/vim-dispatch', -- tests
	'tpope/vim-endwise', -- auto-add 'end's
	'tpope/vim-fugitive', -- git wrapper 'Git'
	'tpope/vim-haml', -- haml
	'tpope/vim-jdaddy', -- json
	'tpope/vim-rails', -- rails
	'tpope/vim-repeat', -- better '.' functionality !
	'tpope/vim-surround', -- surround shortcut
	'williamboman/mason-lspconfig.nvim', -- mason lsp
	'williamboman/mason.nvim', -- mason
	'windwp/nvim-autopairs', -- auto-add symbols
	'zbirenbaum/copilot.lua', -- copilot
	'zdharma-continuum/zinit-vim-syntax', -- zsh syntax
	{ 'lewis6991/gitsigns.nvim', requires = 'nvim-lua/plenary.nvim' }, -- show line authors
	{ 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }, -- treesitter
	{ 'weilbith/nvim-code-action-menu', cmd = 'CodeActionMenu' }, -- !
  { "lukas-reineke/indent-blankline.nvim", main = "ibl", opts = {} }, -- indent
  { 'L3MON4D3/LuaSnip', version = 'v2.*', build = 'make install_jsregexp', dependencies = { "rafamadriz/friendly-snippets" } }, -- snippets
  { 'ThePrimeagen/harpoon', opts = {} }, -- file pinning
  { 'ellisonleau/glow.nvim', opts = {} }, -- markdown
  { 'kevinhwang91/nvim-hlslens', opts = {} }, -- highlight while searching
  { 'nvim-lualine/lualine.nvim', dependencies = { 'nvim-tree/nvim-web-devicons' }, opts = { theme = 'base16'} }, -- statusline
  { 'tversteeg/registers.nvim', opts = {} }, -- registers
  { 'zbirenbaum/copilot-cmp', opts = {} }, -- copilot
})

require('general')
require('lsp')
require('mappings')
require('onedark').load()

require('plugins.barbar')
require('plugins.copilot')
require('plugins.gitsigns')
require('plugins.luasnip')
require('plugins.mason')
require('plugins.nvim-cmp')
require('plugins.nvim-tree')
