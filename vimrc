execute pathogen#infect()        
filetype plugin on
set invhlsearch					      " Inversesearch			
set number                          " Set linenumber
set shiftwidth=3                    " Indentation
set tabstop=3                       " One tab == 3 spaces
set smartindent                     " Set smartindent
set expandtab                       " All spaces as tabs
set ruler                           " Infobar at bottom
set modelines=0                     " Disable modelines
set undofile                        " Activate undofile
set gdefault                        " %s/LOL/HERP/ is now %s/LOL/HERP/g
syntax on                           " Syntax highlighting
let mapleader = ","                 " remap leaderkey
nnoremap <tab> %
vnoremap <tab> %u
" Shortcuts to go to EOL/Beginning of line ===========================
map  <C-A>      0
map  <C-E>      $
imap <C-A>      <C-O>0
imap <C-E>      <C-O>$
" Shortcuts for inserting lines above/below the current line =========
nnoremap + maO<esc>`a
nnoremap - mao<esc>`a
" Make bracketmatching with tab 
nnoremap <tab> %
vnoremap <tab> %
" Make j/k move through visible lines ================================
noremap k gk
noremap j gj
" Shift +j/k for moving around quickly ===============================
nmap J 5j
nmap K 5k
vmap J 5j
vmap K 5k
" Fix vims horribly broken default regexhandling =====================
nnoremap / /\v
vnoremap / /\v
" Handle long lines correctly
set wrap
set textwidth=79
set formatoptions=qrn1
set colorcolumn=85
" For bad aiming
inoremap jj <ESC>
inoremap kk <ESC>
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>
" Gör om, gör rätt:
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
nnoremap <leader>w <C-w>v<C-w>l


nnoremap <F3> :set hlsearch!<CR>

noremap <F2> :NERDTree<enter> 


