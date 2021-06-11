let mapleader = "\<Space>"

" Plugins

" Specify a directory for plugins
call plug#begin(stdpath('data') . '/plugged')

" Make sure to use single quotes

" Languages
" ---------

Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-compe'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" Usability
" ---------

" Fuzzy finder
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

" Remember your keybinds
Plug 'folke/which-key.nvim'

" GUI
 Plug 'itchyny/lightline.vim'

" Initialize plugin system
call plug#end()

" Autocompletion
set completeopt=menuone,noselect

" Add language servers
lua << EOF
require'lspconfig'.rls.setup{}
EOF

" Which key
lua << EOF
  require("which-key").setup{}
EOF

" GUI Settings
set mouse=a " Enable mouse usage for all modes


