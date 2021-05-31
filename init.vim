"call plug#begin('~/.local/share/nvim/bundle/')
"Plug 'hkupty/iron.nvim'
"Plug 'ervandew/supertab'
"Plug 'kovisoft/paredit'
"Plug 'junegunn/goyo.vim'
""Plug 'scrooloose/nerdtree', {'on': 'NerdTreeToggle'}
""Plug 'jmckiern/vim-venter'
""Plug 'davidhalter/jedi-vim'
""Plug 'deoplete-plugins/deoplete-jedi'
""Plug 'ycm-core/YouCompleteMe'
"call plug#end()

set number
set tabstop=2
set shiftwidth=2
set startofline
"set expandtab
set scrolloff=4
"set noswapfile

colorscheme slate

imap jk <Esc>

inoremap <C-u> <C-g>u<C-u>
inoremap <C-w> <C-g>u<C-w>

"luafile ~/.config/nvim/iron.lua
"map <F5> <Cmd>lua require("iron").core.send(vim.api.nvim_buf_get_option(0,"ft"), vim.api.nvim_buf_get_lines(0, 0, -1, false))<Cr>
tnoremap <Esc> <C-\><C-n>
