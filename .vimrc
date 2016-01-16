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
set wildmenu						" Autocomplete commands at bottom nicely

set mouse=a							" mouse support

set scrolloff=1						" always show lines above/below cursor

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
" Fix vims horrible (default) regexhandling =====================
nnoremap / /\v
vnoremap / /\v
" Handle long lines (correctly
set wrap
set textwidth=85
set formatoptions=qrn1

" F keys
set pastetoggle=<F2>
nnoremap <F3> :set hlsearch!<CR>

" leaderfunctions
noremap <Leader>[ ciw[<C-r>"]<Esc>
noremap <Leader>( ciw(<C-r>")<Esc>
noremap <Leader>< ciw<<C-r>"><Esc>
noremap <Leader>" ciw"<C-r>""<Esc>
noremap <Leader>' ciw'<C-r>"'<Esc>

noremap <Leader>] ciW[<C-r>"]<Esc>
noremap <Leader>) ciW(<C-r>")<Esc>
noremap <Leader>> ciW<<C-r>"><Esc>

" Ugly hack to evaluate the selected expression and replace it with the result
noremap <leader>e "eygv:s!<C-r>=substitute(@e, '\^', "\\^", 'g')<CR>!\=system('bc -l <<< "<C-r>e"')<CR>

vmap <Leader>y "+y
vmap <Leader>d "+d
nmap <Leader>p "+p
nmap <Leader>P "+P
vmap <Leader>p "+p
vmap <Leader>P "+P
