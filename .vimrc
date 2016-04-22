" vim-plug
call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/syntastic'
Plug 'sjl/gundo.vim'
Plug 'kien/ctrlp.vim'

call plug#end()

set invhlsearch					    " Inversesearch			
set number                          " Set linenumber
set shiftwidth=4                    " Indentation
set tabstop=4
set smartindent                     " Set smartindent
set softtabstop=4                   " Make backspace work on 'tabs'
set ruler                           " Infobar at bottom
set modelines=0                     " Disable modelines
set undofile                        " Activate undofile
set gdefault                        " %s/foo/bar/ is now %s/foo/bar/g
set expandtab
set wildmenu						" Autocomplete commands at bottom nicely

set mouse=a							" mouse support

set scrolloff=1						" always show lines above/below cursor

syntax on                           " Syntax highlighting
let mapleader = ","                 " remap leaderkey

colorscheme elflord

" Make bracketmatching with tab 
nnoremap <tab> %
vnoremap <tab> %
" Make j/k move through visible lines ================================
noremap k gk
noremap j gj
" Handle long lines (correctly
set wrap
set textwidth=85
set formatoptions=qrn1

" select previous altered text
nnoremap gV `[v`]

" F keys
set pastetoggle=<F2>
nnoremap <F3> :set hlsearch!<CR>
nnoremap <F4> :set number!<CR>

" leaderfunctions
noremap <Leader>[ ciw[<C-r>"]<Esc>
noremap <Leader>( ciw(<C-r>")<Esc>
noremap <Leader>< ciw<<C-r>"><Esc>
noremap <Leader>" ciw"<C-r>""<Esc>
noremap <Leader>' ciw'<C-r>"'<Esc>

noremap <Leader>] ciW[<C-r>"]<Esc>
noremap <Leader>) ciW(<C-r>")<Esc>
noremap <Leader>> ciW<<C-r>"><Esc>

vmap <Leader>y "+y
vmap <Leader>d "+d
nmap <Leader>p "+p
nmap <Leader>P "+P
vmap <Leader>p "+p
vmap <Leader>P "+P

" Terminal stuff
if has('nvim')
    tnoremap <Esc><Esc> <c-\><c-n>
    tnoremap <silent> <c-h> <c-\><c-n><c-w>h
    tnoremap <silent> <c-j> <c-\><c-n><c-w>j
    tnoremap <silent> <c-k> <c-\><c-n><c-w>k
    tnoremap <silent> <c-l> <c-\><c-n><c-w>l
    tnoremap <silent> <Esc><c-l> <c-l>

    augroup terminal
        autocmd!
        autocmd WinEnter term://* startinsert
    augroup END
endif
