" PLUG FILE
" sadotsoy

call plug#begin()

Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'

" FILE EXPLORER
Plug 'vifm/vifm.vim'                    " VIFM

" COLORSCHEMES
Plug 'sadotsoy/darkforce-vim'

if has("nvim")
  "Plug 'kyazdani42/nvim-web-devicons'
  "Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }
  "Plug 'onsails/lspkind-nvim'
  Plug 'neovim/nvim-lspconfig'
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim' " need dependencies, check the repo
  Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
  Plug 'hrsh7th/cmp-buffer'
  Plug 'hrsh7th/cmp-nvim-lsp'
  Plug 'hrsh7th/nvim-cmp'
  Plug 'folke/lsp-colors.nvim'
  Plug 'tami5/lspsaga.nvim'
  Plug 'williamboman/nvim-lsp-installer'
  Plug 'windwp/nvim-autopairs'
  Plug 'onsails/lspkind-nvim' " https://github.com/microsoft/vscode-codicons/blob/main/dist/codicon.ttf
  Plug 'L3MON4D3/LuaSnip'
endif

call plug#end()
