set number
set tabstop=3
set shiftwidth=3
set startofline
set scrolloff=999
set noswapfile
set termguicolors

"colorscheme elflord
"colorscheme koehler
"colorscheme industry
colorscheme lunaperche

let mapleader="\\"


call matchadd('Conceal', '->', 10,-1, {'conceal':'→'})
call matchadd('Conceal', ':=', 10,-1, {'conceal':'≔'})
call matchadd('Conceal', 'lambda', 10,-1, {'conceal':'λ'})
call matchadd('Conceal', 'fn', 10,-1, {'conceal':'Φ'})
"hi Conceal ctermbg=black guibg=black ctermfg=red guifg=red

set conceallevel=2
set concealcursor=v

"set colorcolumn=81
"highlight colorcolumn ctermbg=black
call matchadd('Colorcolumn', '\%81v', 100)

"set listchars=tab:--→,nbsp:_,trail:␠,eol:¬
set listchars=tab:>~,nbsp:_,trail:␣,eol:⏎,space:␣
set list

nnoremap <Space> :
nnoremap : <Space>
vnoremap <Space> :


noremap <silent> <C-h> :bn <CR>
noremap <silent> <C-l> :bp <CR>
"nmap <silent> <C-h> :bn <CR>
"nmap <silent> <C-l> :bp <CR>

"function! Turkify ()
"inoremap ii ı
"inoremap gg ğ
"inoremap ss ş
"inoremap oo ö
"inoremap uu ü
"inoremap cc ç
"endfunction

inoremap <C-u> <C-g>u<C-u>
inoremap <C-w> <C-g>u<C-w>

nnoremap <silent> b<Space> :q <CR>
nnoremap <silent> w<Space> :w <CR>


nnoremap <silent> <C-space> :tabnew <CR>
nnoremap <silent> <C-i> :tabnext <CR>
nnoremap <silent> <C-e> :tabprevious <CR>

"imap <C-u> <C-g>u<C-u>
"imap <C-w> <C-g>u<C-w>

"vnoremap I xkP`[V`]
"vnoremap E xp`[V`]
vnoremap O >gv
vnoremap N <gv

tnoremap ei <C-\><C-n>

set laststatus=0
set cursorline
set cursorlineopt=line
set cursorcolumn
highlight cursorline cterm=none ctermbg=242
"highlight cursorcolumn cterm=bold
"highlight cursorcolumn cterm=strikethrough
"highlight cursorline cterm=bold ctermbg=242

function! Colemak ()
	inoremap <C-Space> <Esc>

	nnoremap n h
	vnoremap n h
	nnoremap e j
	vnoremap e j
	nnoremap i k
	vnoremap i k
	nnoremap o l
	vnoremap o l

	inoremap E (
	inoremap I )
	inoremap N {
	inoremap O }
	inoremap U [
	inoremap Y ]

	nnoremap ; o
	nnoremap : O

	nnoremap h n
	nnoremap H N
endfunction
call Colemak()

