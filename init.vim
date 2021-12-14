set nu relativenumber
let mapleader=" "
set cmdheight=2
set noswapfile
set nowrap
set smartindent
set termguicolors
set mouse=nvi
"set cursorline
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
set ic
noremap <C-N> :bn<CR>
noremap <C-p> :bp<CR>
noremap <C-x> :bd<CR>
set encoding=UTF-8
set scroll=8
set hidden
set updatetime=300
set shortmess+=cr
imap jk <ESC>
syntax enable
set termguicolors
"set nocompatible
filetype plugin indent on

call plug#begin('~/.vim/plugged')
Plug 'ap/vim-css-color'
Plug 'preservim/nerdcommenter'
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
"Plug 'mattn/emmet-vim'
"Plug 'tomasr/molokai'
"Plug 'rakr/vim-one'
Plug 'ayu-theme/ayu-vim'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'morhetz/gruvbox'
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }


Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'michaelb/sniprun', {'do': 'bash install.sh'}

Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'
Plug 'lewis6991/impatient.nvim'
"Plug 'windwp/nvim-autopairs'

Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'airblade/vim-rooter'

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}


call plug#end()

" Set completeopt to have a better completion experience
set completeopt=menuone,noinsert,noselect
vmap <C-\> y:call system("xclip -i -selection clipboard", getreg("\""))<CR>:call system("xclip -i", getreg("\""))<CR>
nnoremap Y y$
vnoremap <CR> :SnipRun<CR>

"let ayucolor = 'dark'
"let g:tokyonight_style = "night"
"let g:tokyonight_italic_variables = 1
"let g:tokyonight_transparent = 1
"let g:airline_theme='tomorrow'
"let g:gruvbox_contrast_dark = 'hard'
let g:gruvbox_italicize_comments = 1
let g:gruvbox_italic = 1
let g:gruvbox_transparent_bg=1
let g:gruvbox_italicize_strings = 1
"let g:dracula_colorterm=0
autocmd VimEnter * hi Normal ctermbg=NONE guibg=NONE
colorscheme gruvbox
set bg=dark
"highlight Comment cterm=italic
"if exists('+termguicolors')
  "let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  "let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  "set termguicolors
"endif

" IndentLine {{
let g:indentLine_char = ''
let g:indentLine_first_char = ''
let g:indentLine_showFirstIndentLevel = 1
let g:indentLine_setColors = 0
" }}


let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall
"let g:user_emmet_leader_key='<C-f>'


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

"""""""""""""""""""""""""""""""""""""""""""""

lua << EOF
require('telescope').setup{}
require('impatient')

EOF
" Use <Tab> and <S-Tab> to navigate through popup menu
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Find files using Telescope command-line sugar.
"nnoremap <leader>ff <cmd>Telescope find_files<cr>
"nnoremap <leader>fg <cmd>Telescope live_grep<cr>
"nnoremap <leader>fb <cmd>Telescope buffers<cr>
"nnoremap <leader>fh <cmd>Telescope help_tags<cr>


" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

"set t_ZH=^[[3m
"set t_ZR=^[[23m
