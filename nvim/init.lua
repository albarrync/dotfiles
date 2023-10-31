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
	'navarasu/onedark.nvim',
	'onsails/lspkind-nvim',
	{ 'weilbith/nvim-code-action-menu', cmd = 'CodeActionMenu' },
	'williamboman/mason.nvim',
	'williamboman/mason-lspconfig.nvim',
	'neovim/nvim-lspconfig',
	'zbirenbaum/copilot.lua',
	'zbirenbaum/copilot-cmp',
	'hrsh7th/nvim-cmp',
	'hrsh7th/cmp-nvim-lsp',
	'hrsh7th/cmp-vsnip',
	'hrsh7th/vim-vsnip',
	'hrsh7th/cmp-path',
	'hrsh7th/cmp-calc',
	'hrsh7th/cmp-cmdline',
	'ray-x/cmp-treesitter',
	'quangnguyen30192/cmp-nvim-tags',
	'honza/vim-snippets',
	"rafamadriz/friendly-snippets",
	'windwp/nvim-autopairs',
	'AndrewRadev/tagalong.vim',
	'andymass/vim-matchup',
  { "lukas-reineke/indent-blankline.nvim", main = "ibl", opts = {} },
	"sindrets/diffview.nvim",
	{ 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' },
	'p00f/nvim-ts-rainbow',
	'JoosepAlviste/nvim-ts-context-commentstring',
	'romgrk/nvim-treesitter-context',
	'SmiteshP/nvim-gps',
	'moll/vim-node',
	'editorconfig/editorconfig-vim',
	'chrisbra/csv.vim',
	'npxbr/glow.nvim',
	'junegunn/vim-easy-align',
	'mhartington/formatter.nvim',
	'zdharma-continuum/zinit-vim-syntax',
	'rust-lang/rust.vim',
	'kyazdani42/nvim-web-devicons',
	'ryanoasis/vim-devicons',
	'feline-nvim/feline.nvim',
	'romgrk/barbar.nvim',
	'nvim-lua/plenary.nvim',
	'nvim-lua/popup.nvim',
	'nvim-telescope/telescope-fzy-native.nvim',
	'nvim-telescope/telescope.nvim',
	'nvim-telescope/telescope-project.nvim',
	'BurntSushi/ripgrep',
	'sharkdp/fd',
	'kyazdani42/nvim-tree.lua',
	'crivotz/nvim-colorizer.lua',
	{ 'lewis6991/gitsigns.nvim', requires = 'nvim-lua/plenary.nvim' },
	'rhysd/committia.vim',
	'tversteeg/registers.nvim',
	'kevinhwang91/nvim-hlslens',
	'karb94/neoscroll.nvim',
	'chaoren/vim-wordmotion',
	'tpope/vim-commentary',
	'tpope/vim-dispatch',
	'tpope/vim-endwise',
	'tpope/vim-fugitive',
	'tpope/vim-haml',
	'tpope/vim-jdaddy',
	'tpope/vim-rails',
	'tpope/vim-repeat',
	'tpope/vim-surround',
	'joshdick/onedark.vim',
	'folke/todo-comments.nvim',
	'numtostr/FTerm.nvim',
	'luukvbaal/stabilize.nvim',
	'ThePrimeagen/harpoon',
  { "L3MON4D3/LuaSnip", version = "v2.*", build = "make install_jsregexp" }
})

require('general')
require('lsp')
require('mappings')
require('onedark').load()

require('plugins.barbar')
require('plugins.copilot-cmp')
require('plugins.copilot')
require('plugins.feline')
require('plugins.gitsigns')
require('plugins.harpoon')
require('plugins.hlslens')
require('plugins.luasnip')
require('plugins.mason')
require('plugins.nvim-cmp')
require('plugins.nvim-tree')
require('plugins.registers')
