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
  use 'neovim/nvim-lspconfig'
  use 'onsails/lspkind-nvim'
  use { 'weilbith/nvim-code-action-menu', cmd = 'CodeActionMenu' }

  -- Autocomplete
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-vsnip'
  use 'hrsh7th/vim-vsnip'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-calc'
  use 'hrsh7th/cmp-cmdline'
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
  use 'tpope/vim-rails'
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
  use 'famiu/feline.nvim' -- Status Line
  use 'romgrk/barbar.nvim' -- Tab Bar

  -- Telescope
  use 'nvim-lua/popup.nvim'
  use 'nvim-lua/plenary.nvim'
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-telescope/telescope-fzy-native.nvim'
  use 'nvim-telescope/telescope-project.nvim'
  
  -- Github
  use {'pwntester/octo.nvim', config=function()
    require"octo".setup()
  end}

  -- Explorer
  use 'kyazdani42/nvim-tree.lua'

  -- Color
  use 'crivotz/nvim-colorizer.lua'
  use 'lpinilla/vim-codepainter' -- Paint Code Different Colors

  -- Git
  use { 'lewis6991/gitsigns.nvim', requires = {'nvim-lua/plenary.nvim'} }
  use 'kdheepak/lazygit.nvim'
  use 'rhysd/committia.vim'

  -- Registers & clipboard
  use 'tversteeg/registers.nvim'
  use 'AckslD/nvim-neoclip.lua'

  -- Move & Search & replace
  use 'dyng/ctrlsf.vim'
  use 'kevinhwang91/nvim-hlslens'
  use 'ggandor/lightspeed.nvim'
  use 'karb94/neoscroll.nvim'
  use 'dstein64/nvim-scrollview'
  use 'chaoren/vim-wordmotion'

  -- Tim Pope Docet
  use 'tpope/vim-surround'
  use 'tpope/vim-repeat'
  use 'tpope/vim-endwise'
  use 'tpope/vim-dispatch'
  use 'tpope/vim-jdaddy'
  use 'tpope/vim-fugitive'
  use 'tpope/vim-commentary'
  -- use 'github/copilot.vim'


  -- Colorscheme
  use 'joshdick/onedark.vim'

  -- General Plugins
  use 'mhinz/vim-startify'
  use 'jeffkreeftmeijer/vim-numbertoggle'
  use 'numtostr/FTerm.nvim'
  use 'wfxr/minimap.vim'
  use 'folke/todo-comments.nvim'
  use 'luukvbaal/stabilize.nvim'
end)
