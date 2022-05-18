" KEYMAPS FILE
" sadotsoy

" == WRITE || CLOSE
map <C-w>w :w<CR>
map <C-w>q :wq!<CR>
map <C-w>a :wqa!<CR>
nnoremap <leader>q :q!<CR>

" == RELOAD SOURCE
map <C-s>s :source $HOME/.config/nvim/init.vim<CR>

" == EDIT CONFIG FILE
map <leader>, :e $HOME/.config/nvim/init.vim<CR>

" == Sort
map <leader>so :sort<CR>

" === Sessions
" ALT + R to load the session
" ALT + S to save the session
nmap ß :mks! Session.vim<CR>
nmap ® :source Session.vim<CR>

" == SEE ONLY THIS FILE ON THE BUFFER, BEATIFUL FOR DOCUMENTATION
map <leader>o :only<cr>

" === PLUG
map <leader>pi :PlugInstall<CR>
map <leader>pc :PlugClean<CR>
map <leader>pu :PlugUpdate<CR>
map <leader>pg :PlugUpgrade<CR>

" == See the hi test
map <leader>hi :so $VIMRUNTIME/syntax/hitest.vim<CR>

" == TAB MAPPING
map <leader>tc :tabnew<cr>
map <leader>te :tabedit
map <leader>tf :tabfirst<cr>
map <leader>tl :tablast<cr>
map <leader>tm :tabmove<cr>
map <leader>tn :tabnext<cr>
map <leader>to :tabonly<cr>
map <leader>tp :tabprevious<cr>
map <leader>tq :tabclose<cr>

" == VIM HELP
nmap <leader>he :vert h<Space>
nmap <leader>hw :<C-U>vert h<Space><C-R>=expand("<cword>")<CR>

" == RESIZE WINDOW
nnoremap <Up> :resize +2<CR>
nnoremap <Down> :resize -2<CR>
nnoremap <Left> :vertical resize +2<CR>
nnoremap <Right> :vertical resize -2<CR>

" == GIT MAPPING
" CHECK :HELP GSTATUS FOR MORE KEYS
map <leader>bc :BCommits<cr>
map <leader>co :Commits<cr>
map <leader>ga :!git add %<cr>:Git commit<cr>
map <leader>gb :Git blame<cr>
map <leader>gc :GCheckout<cr>
map <leader>gd :Gdiffsplit!<cr>
map <leader>ge :GitMessenger<cr>
map <leader>gf :GitFiles?<cr>
map <leader>gm :Git commit<cr>
map <leader>gp :Gpush<cr>
map <leader>gs :G<cr>
map <leader>gv :GV<CR>
map <leader>gw :Gwrite<cr>
map <leader>gl :Git log<CR>
map <leader>glg :Git log --oneline --graph<CR>
nmap <leader>g1 :diffget //3<CR>
nmap <leader>g2 :diffget //2<CR>

" +== MOVE WINDOWS DEPENDS H,J,K,L
map <C-h> :wincmd h<CR>
map <C-j> :wincmd j<CR>
map <C-k> :wincmd k<CR>
map <C-l> :wincmd l<CR>

" == SPLITS
nnoremap <silent> vv <C-w>v
nnoremap <silent> vs <C-w>s

" == CLIPBOARD
nnoremap +p "+p
nnoremap +y "+y

" Notes
map <leader>nv :e $HOME/.config/nvim/docs/notes.md<CR>

" Date
map <leader>D :put =strftime('%a %b %d %Y')<CR>

" Tooggle highlight search
map <leader>hn :set hlsearch!<CR>

" == FILE MANAGER
" VIFM
map <leader>r :EditVifm .<CR>
map <leader>e :Vifm<CR>

" == SEARCH
" TELESCOPE
nnoremap <C-p> <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope git_files<cr>
nnoremap <C-o> <cmd>Telescope buffers<cr>
nnoremap <leader>fa <cmd>Telescope live_grep<cr>
nnoremap <leader>co <cmd>Telescope commands<cr>
nnoremap <leader>fc <cmd>Telescope colorscheme<cr>
nnoremap <leader>ma <cmd>Telescope keymaps<cr>

" SAGA
nnoremap <silent>K <Cmd>Lspsaga hover_doc<CR>
nnoremap <silent>gh <Cmd>Lspsaga lsp_finder<CR>
nnoremap <silent>gp <Cmd>Lspsaga preview_definition<CR>
nnoremap <silent>gr <Cmd>Lspsaga rename<CR>
nnoremap <silent>gx <Cmd>Lspsaga code_action<CR>
nnoremap <silent>gj <Cmd>Lspsaga diagnostic_jump_next<CR>
nnoremap <silent>gk <Cmd>Lspsaga diagnostic_jump_prev<CR>
nnoremap <silent>go <Cmd>Lspsaga signature_help<CR>

" LSP
nnoremap <leader>lstp :LspStop<CR>
nnoremap <leader>lstt :LspStart<CR>
map <leader>dh :lua vim.diagnostic.disable()<CR>
map <leader>ds :lua vim.diagnostic.enable()<CR>
