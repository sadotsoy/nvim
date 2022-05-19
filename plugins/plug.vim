" PLUG FILE
" sadotsoy

call plug#begin()

Plug 'tpope/vim-fugitive'               " the ultimate git helper
Plug 'tpope/vim-rhubarb'
Plug 'tpope/vim-commentary'             " comment with powers
Plug 'tpope/vim-surround'               " surround
Plug 'mattn/emmet-vim'                  " the good plugin
Plug 'luochen1990/rainbow'              " rainbow close surrounds
Plug 'editorconfig/editorconfig-vim'    " editorconfig
Plug 'raimondi/delimitmate'             " auto-completion for quotes, etc surrounds.
Plug 'chrisbra/Colorizer'               " Higlight colors

" Develop
" == JS
Plug 'maxmellon/vim-jsx-pretty'
Plug 'yuezk/vim-js'
" == GO
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

" FILE EXPLORER
Plug 'vifm/vifm.vim'                    " VIFM

" COLORSCHEMES
Plug 'sadotsoy/darkforce-vim'

if has("nvim")
  Plug 'L3MON4D3/LuaSnip'
  Plug 'airblade/vim-gitgutter'
  Plug 'folke/lsp-colors.nvim'
  Plug 'hrsh7th/cmp-buffer'
  Plug 'hrsh7th/cmp-nvim-lsp'
  Plug 'hrsh7th/nvim-cmp'
  Plug 'mhartington/formatter.nvim'
  Plug 'neovim/nvim-lspconfig'
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
  Plug 'nvim-telescope/telescope.nvim' " need dependencies, check the repo
  Plug 'onsails/lspkind-nvim' " https://github.com/microsoft/vscode-codicons/blob/main/dist/codicon.ttf
  Plug 'tami5/lspsaga.nvim'
  Plug 'williamboman/nvim-lsp-installer'
  Plug 'windwp/nvim-autopairs'
  " Plug 'lewis6991/gitsigns.nvim'
endif

call plug#end()
