" CONFIG FILE
" sadotsoy

" init autocmd
autocmd!

" == GENERAL SETTINGS ======
let mapleader = "\<Space>"
set cmdheight=2                            " More space for displaying messages
set confirm
set cursorline                             " active cursorline
set diffopt+=vertical                      " vertical split
set laststatus=2                           " show the status line all the time
set nu rnu
set number relativenumber                 " relative lines
set scroll=5
set scrolloff=8
set shell=/bin/bash                        " set bash for vim command
set title
set noshowmode

set nowrap
set backspace=start,eol,indent

set path+=**                               " finding files - search down into subfolders
set wildignore+=*node_modules/**           " Ignore node_modules

set backup                                 " Turn on backup option
set backupcopy=yes                         " Overwrite the original backup file
set backupdir=~/.backup/                   " Where to store backups
set directory=~/.swap/                     " Where to store swap files

set formatoptions+=r                       " add asterisk in block comments
" == Splits
set splitbelow                             " move the new split below the current [DOWN]
set splitright                             " move focus to the new split

" == INDENT/TABS
set autoindent                             " Automatically set indent of new line
set backspace=indent,eol,start             " Make backspace behave in a same manner
set expandtab                              " Convert tabs to spaces
set shiftround                             " Round indenty to a multiple of 'shiftwidth'
set shiftwidth=2                           " Number of spaces to use for indent or unidendt
set smartindent                            " Tab respects 'tabsot', 'shifwidth'. and 'softtabstop'
set smarttab                               " inserts blanks according to shiftround, shiftwidth,etc
set softtabstop=2                          " Edit as if the tabs are 4 characters wide
set tabstop=2                              " The visible width of the tabs

" == SEARCH
set ignorecase                  " Sensitive case for local search
set smartcase

" == FOLDS
set fillchars=fold:\ | set foldtext=MinimalFold()
set foldenable
set foldlevel=1
set foldmethod=indent
set foldnestmax=20

" === PERFORMANCE
set lazyredraw                " Don't redraw while executng macros.

" == OTHERS
filetype plugin indent on                 " detecth the filetype
scriptencoding utf-8
set encoding=utf-8
set magic                                 " set magic on, for regex
set mat=200                               " how many tenths of a second to blink
set showmatch                             " show matching braces

" === HIGHLIGHT
" only for nvim
au TextYankPost * silent! lua vim.highlight.on_yank()
let g:highlightedyank_highlight_duration = 500

" == CURSOR
set guicursor=n-r:block
      \-blinkon450-blinkoff450
      \-blinkwait0
      \,i:ver10
      \-blinkon100-blinkoff100
      \-blinkwait0
      \,v-ve:block                        " Cursor gui, set cursor shape and blink options to some modes

