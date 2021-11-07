set number
set relativenumber
set autoindent
set tabstop=4
set shiftwidth=4
set expandtab
set smarttab
set softtabstop=4
set mouse=a
set background=dark
set cursorline
set ignorecase
set smartcase
set showmatch
set cc=100
set scrolloff=10
set hlsearch!
set termguicolors
syntax on

call plug#begin()

Plug 'vim-airline/vim-airline'
Plug 'preservim/nerdtree'
Plug 'ap/vim-css-color'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'ryanoasis/vim-devicons'
Plug 'terryma/vim-multiple-cursors'
Plug 'neoclide/coc.nvim'
Plug 'fatih/vim-go'
Plug 'vim-airline/vim-airline-themes'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'jiangmiao/auto-pairs'
Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'tpope/vim-fugitive'
Plug 'rust-lang/rust.vim'
Plug 'OmniSharp/omnisharp-vim'
Plug 'tpope/vim-commentary'
Plug 'neovim/nvim-lspconfig'
Plug 'glepnir/lspsaga.nvim'

call plug#end()

set encoding=UTF-8
set fileencoding=utf-8
set termencoding=utf-8

nnoremap <leader>nt <cmd>:NERDTreeToggle<CR>
nnoremap <leader>nf <cmd>:NERDTreeFocus<CR>

nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

inoremap <silent><expr> <c-space> coc#refresh()

autocmd FileType go nmap <Leader>i <Plug>(go-info)
set completeopt=longest,menuone

let g:airline_powerline_fonts = 1

let g:go_fmt_command = "goimports"
" let g:go_highlight_types = 1
" let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
" let g:go_highlight_operators = 1
" let g:go_highlight_extra_types = 1
let g:go_auto_type_info = 1

let g:OmniSharp_highlighting = 0
let g:coc_sources_disable_map = { 'cs': ['cs-1', 'cs-2', 'cs-3'] }

let g:airline#extensions#tabline#enabled = 1

set updatetime=100

colorscheme hybrid_reverse

set secure

lua require('config')
