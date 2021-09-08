syntax on

set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set number
set nowrap
set smartcase
set incsearch
set title
set noshowmode
set laststatus=2
set relativenumber
set colorcolumn=80
set background=dark
set noswapfile

call plug#begin('~/.vim/plugged')
Plug 'shinchu/lightline-gruvbox.vim'
Plug 'gruvbox-community/gruvbox'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tmsvg/pear-tree'
Plug 'vim-syntastic/syntastic'
Plug 'preservim/nerdtree'
Plug 'itchyny/lightline.vim'
call plug#end()

let g:coc_disable_startup_warning = 1
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

let g:pear_tree_repeatable_expand = 0

let g:lightline = {
      \ 'colorscheme': 'gruvbox',
      \ }

colorscheme gruvbox
highlight clear LineNr 
highlight clear SignColumn  
highlight clear ColorColumn

"synastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

