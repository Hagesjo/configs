" vim-plug
call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdcommenter'

Plug 'scrooloose/syntastic'

Plug 'sjl/gundo.vim'
Plug 'kien/ctrlp.vim'
Plug 'dikiaap/minimalist'
Plug 'airblade/vim-gitgutter'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'sebdah/vim-delve'

call plug#end()

" coc
let g:coc_global_extensions = [
  \ 'coc-pairs',
  \ 'coc-tsserver',
  \ 'coc-pyright',
  \ 'coc-eslint',
  \ 'coc-prettier',
  \ 'coc-json',
  \ ]

" mac
set backspace=indent,eol,start
vmap '' :w !pbcopy<CR><CR>

set hlsearch					    " Search highlighting
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

colorscheme minimalist
hi Search ctermfg=207 ctermbg=NONE cterm=underline guifg=#ff5fff guibg=NONE gui=underline


" Make bracketmatching with tab 
nnoremap <tab> %
vnoremap <tab> %
" Make j/k move through visible lines ================================
"noremap k gk
"noremap j gj
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
nnoremap <F5> :SyntasticCheck<CR>
nnoremap <F6> :SyntasticToggleMode<CR>

" switch between splits
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l

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

" CtrlP
nnoremap <leader>o :CtrlP<CR>
nnoremap <leader>b :CtrlPBuffer<CR>

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

" syntastic
let g:syntastic_mode_map = { 'mode': 'passive', 'active_filetypes':   [],'passive_filetypes': [] }

set backupdir=/tmp//
set directory=/tmp//
set undodir=/tmp/

" coc from mange
" Give more space for displaying messages.
set cmdheight=1

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" go auto import on save
autocmd BufWritePre *.go :silent call CocAction('runCommand', 'editor.action.organizeImport')
autocmd FileType go nmap gtj :CocCommand go.tags.add json<cr>

inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
