call plug#begin('~/.local/share/nvim/bundle/')
Plug 'hkupty/iron.nvim'
"Plug 'lirorc/iron.nvim'
Plug 'ervandew/supertab'
Plug 'kovisoft/paredit'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/rainbow_parentheses.vim'
Plug 'mbbill/undotree'
Plug 'calebsmith/vim-lambdify'
Plug 'wlangstroth/vim-racket'
Plug 'dense-analysis/ale'
Plug 'ggandor/lightspeed.nvim'
Plug 'mhinz/vim-signify'
Plug 'preservim/vim-pencil'
"Plug 'neovim/nvim-lspconfig'
"Plug 'scrooloose/nerdtree', {'on': 'NerdTreeToggle'}
"Plug 'jmckiern/vim-venter'
"Plug 'davidhalter/jedi-vim'
"Plug 'deoplete-plugins/deoplete-jedi'
"Plug 'ycm-core/YouCompleteMe'
call plug#end()

set number
set tabstop=2
set shiftwidth=2
set startofline
set expandtab
set scrolloff=999
set noswapfile

imap jk <Esc>
let mapleader="\\"

"set colorcolumn=81
"highlight colorcolumn ctermbg=black
call matchadd('Colorcolumn', '\%81v', 100)

set listchars=tab:>~,nbsp:_,trail:.
set list

nnoremap <Space> :
nnoremap : <Space>
vnoremap <Space> :

nmap <silent> <CR> <Plug>(iron-send-line)

noremap <silent> <C-h> :bn <CR>
noremap <silent> <C-l> :bp <CR>

inoremap <C-u> <C-g>u<C-u>
inoremap <C-w> <C-g>u<C-w>

vnoremap K xkP`[V`]
vnoremap U xp`[V`]
vnoremap L >gv
vnoremap H <gv

tnoremap jk <C-\><C-n>

luafile ~/.config/nvim/iron.lua
map <F5> <Cmd>lua require("iron").core.send(vim.api.nvim_buf_get_option(0,"ft"), vim.api.nvim_buf_get_lines(0, 0, -1, false))<Cr>

set laststatus=0
set cursorline
set cursorlineopt=line
set cursorcolumn
highlight cursorline cterm=none ctermbg=242
"highlight cursorcolumn cterm=bold
"highlight cursorcolumn cterm=strikethrough
"highlight cursorline cterm=bold ctermbg=242

"set noshowcmd

""au FileType * call PareditInitBuffer()
