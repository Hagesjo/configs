execute pathogen#infect()        
filetype plugin on
set invhlsearch					    " Inversesearch			
set number                          " Set linenumber
set shiftwidth=4                    " Indentation
set tabstop=4
set smartindent                     " Set smartindent
set softtabstop=4                   " Make backspace work on 'tabs'
set ruler                           " Infobar at bottom
set modelines=0                     " Disable modelines
set undofile                        " Activate undofile
set gdefault                        " %s/LOL/HERP/ is now %s/LOL/HERP/g
colorscheme elflord
syntax on                           " Syntax highlighting
let mapleader = ","                 " remap leaderkey
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
" Fix vims horrible (default) regexhandling =====================
nnoremap / /\v
vnoremap / /\v
" Handle long lines (correctly
set wrap
set textwidth=85
set formatoptions=qrn1
set colorcolumn=85

nnoremap <F3> :set hlsearch!<CR>
" leaderfunctions
noremap <Leader>[ a<C-o>b[<C-o>e<C-o>l]<Esc>
noremap <Leader>( a<C-o>b(<C-o>e<C-o>l)<Esc>
noremap <Leader>< a<C-o>b<<C-o>e<C-o>l><Esc>
noremap <Leader>" a<C-o>b"<C-o>e<C-o>l"<Esc>
vmap <Leader>y "+y
vmap <Leader>d "+d
nmap <Leader>p "+p
nmap <Leader>P "+P
vmap <Leader>p "+p
vmap <Leader>P "+P
