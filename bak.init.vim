set nu relativenumber
set cmdheight=2
set mouse=nvi
set nohlsearch
set tabstop=4 softtabstop=4
set shiftwidth=4
set guicursor=
set expandtab
set scrolloff=8
set nobackup
set signcolumn=yes
set switchbuf=useopen,usetab
set nowritebackup
set nohidden
noremap <C-N> :bn<CR>
noremap <C-b> :bp<CR>
noremap <C-x> :bd<CR>
set encoding=UTF-8
set scroll=8
set hidden
set updatetime=300
set pyxversion=3
set shortmess+=c
"set nocompatible
filetype plugin indent on
vmap <C-\> y:call system("xclip -i -selection clipboard", getreg("\""))<CR>:call system("xclip -i", getreg("\""))<CR>

call plug#begin('~/.vim/plugged')
Plug 'ap/vim-css-color'
Plug 'preservim/nerdcommenter'
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'mattn/emmet-vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()

let g:airline_theme='light'
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall
let g:user_emmet_leader_key='<C-f>'


nnoremap <C-t> :NERDTreeToggle<CR>
" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
" Close the tab if NERDTree is the only window remaining in it.
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'


" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("nvim-0.5.0") || has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

