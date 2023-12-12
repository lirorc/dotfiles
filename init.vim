set number
set tabstop=3
set shiftwidth=3
set startofline
set scrolloff=999
set noswapfile
set termguicolors
set ignorecase

"colorscheme elflord
"colorscheme koehler
"colorscheme industry
"colorscheme lunaperche
"colorscheme flattened_dark
colorscheme challenger_deep
"colorscheme slate
"colorscheme blue

let mapleader="\\"


call matchadd('Conceal', '->', 10,-1, {'conceal':'→'})

call matchadd('Conceal', '==', 10,-1, {'conceal':'≡'})
call matchadd('Conceal', '>=', 10,-1, {'conceal':'≥'})
call matchadd('Conceal', '<=', 10,-1, {'conceal':'≤'})
call matchadd('Conceal', '!=', 10,-1, {'conceal':'≠'})
call matchadd('Conceal', ':=', 10,-1, {'conceal':'≔'})
call matchadd('Conceal', '\<not\>', 10,-1, {'conceal':'¬'})
call matchadd('Conceal', '!', 09,-1, {'conceal':'¬'})

call matchadd('Conceal', '\<lambda\>', 10,-1, {'conceal':'λ'})
call matchadd('Conceal', '\<fn\>', 10,-1, {'conceal':'Φ'})
call matchadd('Conceal', '\<let\>', 10,-1, {'conceal':'λ'})

call matchadd('Conceal', '\<int\>', 10,-1, {'conceal':'ℤ'})
call matchadd('Conceal', '\<void\>', 10,-1, {'conceal':'∅'})
"hi Conceal ctermbg=black guibg=black ctermfg=red guifg=red

set conceallevel=2
set concealcursor=v

"set colorcolumn=81
"highlight colorcolumn ctermbg=black
call matchadd('Colorcolumn', '\%81v', 100)

"set listchars=tab:--→,nbsp:_,trail:␠,eol:¬
set listchars=tab:\|-,nbsp:_,trail:␣,eol:⏎,space:␣
set list

nnoremap <Space> :
nnoremap : <Space>
vnoremap <Space> :


noremap <silent> <C-o> :bn <CR>
noremap <silent> <C-n> :bp <CR>
"nmap <silent> <C-h> :bn <CR>
"nmap <silent> <C-l> :bp <CR>

function! Turkify ()
	inoremap ii ı
	inoremap gg ğ
	inoremap ss ş
	inoremap oo ö
	inoremap uu ü
	inoremap cc ç
endfunction

inoremap <C-u> <C-g>u<C-u>
inoremap <C-w> <C-g>u<C-w>

nnoremap <silent> b<Space> :q <CR>
nnoremap <silent> w<Space> :w <CR>

nnoremap <silent> <C-space> :tabnew  .<CR>
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

	nnoremap U <C-r>

	nnoremap <C-r> ?
	nnoremap <C-s> /

	nnoremap l ;
	nnoremap L ,

	nnoremap h n
	nnoremap H N

	nnoremap <C-h> :call Chordify()<Cr>

endfunction
call Colemak()

function! Chordify ()
	Arpeggio inoremap be = 
	Arpeggio inoremap is == 
	Arpeggio inoremap gt > 
	Arpeggio inoremap eg >= 
	Arpeggio inoremap ls < 
	Arpeggio inoremap el <= 
	Arpeggio inoremap nt not 

	Arpeggio inoremap et & 

	Arpeggio inoremap ut * 
	Arpeggio inoremap dv / 
	Arpeggio inoremap ad + 
	Arpeggio inoremap su - 

	Arpeggio inoremap ce case 
	Arpeggio inoremap hs switch 

	Arpeggio inoremap if if 
	Arpeggio inoremap ei else if 
	Arpeggio inoremap es else 

	Arpeggio inoremap ci include 
	Arpeggio inoremap st static 
	Arpeggio inoremap in inline 
	Arpeggio inoremap pr pragma 
	Arpeggio inoremap no once 
	Arpeggio inoremap rt return 

	Arpeggio inoremap rs struct 
	Arpeggio inoremap iv void 
	Arpeggio inoremap it int 
	Arpeggio inoremap db double 
	Arpeggio inoremap fl float 
	Arpeggio inoremap ch char 
	Arpeggio inoremap sz size_t 

	Arpeggio inoremap lt let 
	Arpeggio inoremap ek key 
	Arpeggio inoremap lv value 
	Arpeggio inoremap dh head 
	Arpeggio inoremap at tail 
	Arpeggio inoremap ers rest 
	Arpeggio inoremap ast stack 
	Arpeggio inoremap co // 

	Arpeggio inoremap do do 
	Arpeggio inoremap lw while 
	Arpeggio inoremap fo for 

	Arpeggio inoremap rw write(
	Arpeggio inoremap dr read(
	Arpeggio inoremap mst memset(
	Arpeggio inoremap cm memcpy(
	Arpeggio inoremap fp printf(

	Arpeggio inoremap ei <esc>
endfunction

" call cursor(+0, +0)
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_winsize = 25
