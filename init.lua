
local Plug = vim.fn['plug#']
vim.call('plug#begin', '~/.vim/plugged')

--Plug 'mattn/emmet-vim'
--Plug 'tomasr/molokai'
--Plug 'rakr/vim-one'
--Plug 'ayu-theme/ayu-vim'
--Plug 'pineapplegiant/spaceduck', { 'branch': 'main' }
--Plug 'dracula/vim', { 'as': 'dracula' }
--Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
--Plug 'NLKNguyen/papercolor-theme'
--Plug 'ap/vim-css-color'
Plug 'preservim/nerdcommenter'
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'morhetz/gruvbox'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
--Plug 'michaelb/sniprun', {'do': 'bash install.sh'}

Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'
Plug 'simrat39/rust-tools.nvim'
Plug ('tzachar/cmp-tabnine', { ['do'] = './install.sh' })
Plug 'windwp/nvim-autopairs'


Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'mfussenegger/nvim-dap'
Plug 'rcarriga/nvim-dap-ui'
Plug 'Pocco81/DAPInstall.nvim'
Plug 'airblade/vim-rooter'

Plug ('nvim-treesitter/nvim-treesitter', {['do']= ':TSUpdate'})

vim.call('plug#end')

require('arch.config')
require('arch.keybinding')
require('arch.cmp')
require('arch.lspconfig')
require('arch.treesitter')
require('arch.telescope')
--require('arch.dap')

