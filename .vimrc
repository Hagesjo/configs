execute pathogen#infect()        
filetype plugin on
set invhlsearch					      " Inversesearch			
set number                          " Set linenumber
set shiftwidth=4                    " Indentation
set tabstop=4                       " One tab == 3 spaces
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
map  <C-E>      $
imap <C-E>      <C-O>$
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
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>
nnoremap <F3> :set hlsearch!<CR>
noremap <F2> :NERDTree<enter> 
