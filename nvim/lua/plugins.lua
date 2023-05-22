local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  execute('!git clone https://github.com/wbthomason/packer.nvim ' .. install_path)
  execute 'packadd packer.nvim'
end

vim.cmd 'autocmd BufWritePost plugins.lua PackerCompile' -- Auto compile when there are changes in plugins.lua

-- require('packer').init({display = {non_interactive = true}})
require('packer').init({display = {auto_clean = false}})

return require('packer').startup(function(use)
  -- Packer can manage itself as an optional plugin
  use 'wbthomason/packer.nvim'

  -- LSP
  use 'onsails/lspkind-nvim'
  use { 'weilbith/nvim-code-action-menu', cmd = 'CodeActionMenu' }
  use 'williamboman/mason.nvim'
  use 'williamboman/mason-lspconfig.nvim'
  use 'neovim/nvim-lspconfig'

  -- Copilot
  use 'zbirenbaum/copilot.lua'
  use 'zbirenbaum/copilot-cmp'

  -- Autocomplete
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-vsnip'
  use 'hrsh7th/vim-vsnip'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-calc'
  use 'hrsh7th/cmp-cmdline'
  use({"L3MON4D3/LuaSnip", tag = "v<CurrentMajor>.*"})
  use 'ray-x/cmp-treesitter'
  use 'quangnguyen30192/cmp-nvim-tags'
  use 'honza/vim-snippets'
  use "rafamadriz/friendly-snippets"
  use 'windwp/nvim-autopairs'
  use 'AndrewRadev/tagalong.vim'
  use 'andymass/vim-matchup'
  use 'lukas-reineke/indent-blankline.nvim'

  -- Treesitter
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
  use 'p00f/nvim-ts-rainbow'
  use 'JoosepAlviste/nvim-ts-context-commentstring'
  use 'romgrk/nvim-treesitter-context'
  use 'SmiteshP/nvim-gps'

  -- Syntax
  use 'moll/vim-node'
  use 'editorconfig/editorconfig-vim'
  use 'chrisbra/csv.vim'
  use 'npxbr/glow.nvim'
  use 'junegunn/vim-easy-align'
  use 'mhartington/formatter.nvim'
  use 'zdharma-continuum/zinit-vim-syntax'
  use 'rust-lang/rust.vim'

  -- Icons
  use 'kyazdani42/nvim-web-devicons'
  use 'ryanoasis/vim-devicons'

  -- Status Line and Bufferline
  use 'feline-nvim/feline.nvim'
  use 'romgrk/barbar.nvim' -- Tab Bar

  -- Telescope
  use 'nvim-lua/plenary.nvim'
  use 'nvim-lua/popup.nvim'
  use 'nvim-telescope/telescope-fzy-native.nvim'
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-telescope/telescope-project.nvim'
  use 'BurntSushi/ripgrep'
  use 'sharkdp/fd'

  -- Explorer
  use 'kyazdani42/nvim-tree.lua'

  -- Color
  use 'crivotz/nvim-colorizer.lua'

  -- Git
  use { 'lewis6991/gitsigns.nvim', requires = 'nvim-lua/plenary.nvim' }
  use 'rhysd/committia.vim'

  -- Registers & clipboard
  use 'tversteeg/registers.nvim'

  -- Move & Search & replace
  use 'kevinhwang91/nvim-hlslens'
  use 'karb94/neoscroll.nvim'
  use 'chaoren/vim-wordmotion'

  -- Pope
  use 'tpope/vim-commentary'
  use 'tpope/vim-dispatch'
  use 'tpope/vim-endwise'
  use 'tpope/vim-fugitive'
  use 'tpope/vim-haml'
  use 'tpope/vim-jdaddy'
  use 'tpope/vim-rails'
  use 'tpope/vim-repeat'
  use 'tpope/vim-surround'

  -- Colorscheme
  use 'joshdick/onedark.vim'

  -- General Plugins
  use 'folke/todo-comments.nvim'
  use 'numtostr/FTerm.nvim'
  use 'luukvbaal/stabilize.nvim'
end)
