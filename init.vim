call plug#begin('~/.local/share/nvim/bundle/')
Plug 'hkupty/iron.nvim'
"Plug 'lirorc/iron.nvim'
Plug 'ervandew/supertab'
Plug 'kovisoft/paredit'
Plug 'junegunn/rainbow_parentheses.vim'
Plug 'junegunn/gv.vim'
Plug 'junegunn/vim-easy-align'
Plug 'mbbill/undotree'
Plug 'calebsmith/vim-lambdify'
Plug 'wlangstroth/vim-racket'
Plug 'dense-analysis/ale'
Plug 'ggandor/lightspeed.nvim'
Plug 'neovim/nvim-lspconfig'
Plug 'mhinz/vim-signify'
Plug 'preservim/vim-pencil'
Plug 'ollykel/v-vim'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'glepnir/hlsearch.nvim'
Plug 'nvim-tree/nvim-web-devicons'
Plug 'nvim-tree/nvim-tree.lua'
Plug 'mvllow/modes.nvim'
Plug 'folke/zen-mode.nvim'
Plug 'romainl/vim-cool'
Plug 'justinmk/vim-dirvish'
Plug 'kristijanhusak/vim-dirvish-git'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
"Plug 'terryma/vim-multiple-cursors'
"Plug 'junegunn/goyo.vim'
"Plug 'scrooloose/nerdtree', {'on': 'NerdTreeToggle'}
"Plug 'jmckiern/vim-venter'
"Plug 'davidhalter/jedi-vim'
"Plug 'deoplete-plugins/deoplete-jedi'
"Plug 'ycm-core/YouCompleteMe'
call plug#end()

set number
set relativenumber
set tabstop=2
set shiftwidth=2
set startofline
set expandtab
set scrolloff=999
set noswapfile
set termguicolors

colorscheme slate

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

nnoremap <silent> <C-w><C-j> :bp <CR>
nnoremap <silent> <C-w><C-k> :bn <CR>
noremap <silent> <C-h> :bp <CR>
noremap <silent> <C-l> :bn <CR>
"nmap <silent> <C-h> :bn <CR>
"nmap <silent> <C-l> :bp <CR>

inoremap <C-u> <C-g>u<C-u>
inoremap <C-w> <C-g>u<C-w>

inoremap J (
inoremap K )
inoremap H {
inoremap L }
inoremap U [
inoremap I ]

nnoremap <silent> <C-w><C-m> :q <CR>
nnoremap <silent> ew :w <CR>

nnoremap <silent> <C-space> :tabnew <CR>
nnoremap <silent> <C-j> :tabprevious <CR>
nnoremap <silent> <C-k> :tabnext <CR>

"imap <C-u> <C-g>u<C-u>
"imap <C-w> <C-g>u<C-w>

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


lua << EOF
  require("zen-mode").setup {
    window = {
      backdrop = 0.95, -- shade the backdrop of the Zen window. Set to 1 to keep the same as Normal
      -- height and width can be:
      -- * an absolute number of cells when > 1
      -- * a percentage of the width / height of the editor when <= 1
      -- * a function that returns the width or the height
      width = 100, -- width of the Zen window%120%
      height = 1, -- height of the Zen window
      -- by default, no options are changed for the Zen window
      -- uncomment any of the options below, or add other vim.wo options you want to apply
      options = {
        -- signcolumn = "no", -- disable signcolumn
        number = false, -- disable number column%
        -- relativenumber = false, -- disable relative numbers
        -- cursorline = false, -- disable cursorline
        -- cursorcolumn = false, -- disable cursor column
        -- foldcolumn = "0", -- disable fold column
        -- list = false, -- disable whitespace characters
      },
    },
    plugins = {
      options = {
        enabled = true,
        ruler = true, -- disables the ruler text in the cmd line area%
        showcmd = true, -- disables the command in the last line of the screen%
      },
      twilight = { enabled = true }, -- enable to start Twilight when zen mode opens
      gitsigns = { enabled = false }, -- disables git signs
      tmux = { enabled = false }, -- disables the tmux statusline
    },
    -- callback where you can add custom code when the Zen window opens
    on_open = function(win)
    end,
    -- callback where you can add custom code when the Zen window closes
    on_close = function()
    end,
  }
EOF

"set noshowcmd

""au FileType * call PareditInitBuffer()
