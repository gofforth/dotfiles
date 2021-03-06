set noswapfile                      " don't use a swap file
set showmode                        " show what mode we're in
set backspace=indent,eol,start      " let backspace move naturally
set history=50                      " keep a 50 cmd history
set showcmd                         " show commands as typed
set incsearch                       " enable incremental search
set nowrap                          " turn off word wrap
set nonumber                        " hide line numbers
set ts=4 sts=4 sw=4                 " setup tabs
set encoding=utf-8                  " use utf-8 instead of latin1
set foldcolumn=1                    " give a little right margin
set noexpandtab
let mapleader = "-"

" syntax formating based on file type
syntax on
filetype on

" remove stupid GUI chrome
if has('gui_running')
	set go-=m                       " remove menubar
	set go-=r                       " remove scrollbar
	set go-=L
	set go-=b
	set go-=h
	set go-=T                       " remove tool bar
	colorscheme guilford
	set gfn=Fira_Mono:h14
endif

" setup fancy status line
set statusline=
set statusline=%1*\ %F\ 
set statusline+=%1*\|\ %3l.%-3c\ 
set statusline+=%1*\|\ %{&ff=='unix'?'unix':(&ff=='mac'?'mac':'windows')}\ 
set statusline+=%1*\|\ %{&fenc!=''?&fenc:&enc}\ 
set statusline+=%1*\|\ %Y\ 
set statusline+=%1*\|\ 0x%02.4B\ 
set statusline+=%1*\ %-3m

" handy key mappings 
nnoremap <silent> <F2>  :set laststatus=2<CR>
nnoremap <silent> <F3>  :e %:p:s,.h$,.X123X,:s,.c$,.h,:s,.X123X$,.c,<CR>
nnoremap <silent> <F4>  :e %:p:s,.hpp$,.X123X,:s,.cpp$,.hpp,:s,.X123X$,.cpp,<CR>
nnoremap <silent> <F5>  :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>
nnoremap <silent> <F8>  :source $MYVIMRC<CR>
nnoremap <silent> <F9>  :set list!<CR>
nnoremap <silent> <F10> :set ts=2 <CR>
nnoremap <silent> <F11> :set ts=8 <CR>
nnoremap <silent> <F12> :e $MYVIMRC<CR>
nnoremap <silent> <leader>" viw<esc>a"<esc>bi"<esc>lel

" force vim keys
nnoremap <up>    <nop>
nnoremap <down>  <nop>
nnoremap <left>  <nop>
nnoremap <right> <nop>
inoremap <up>    <nop>
inoremap <down>  <nop>
inoremap <left>  <nop>
inoremap <right> <nop>

set fillchars=vert:\│
 
" set colors 
hi User1         cterm=reverse    gui=reverse
hi LineNr        ctermfg=cyan
hi NonText       ctermfg=magenta
hi FoldColumn    ctermfg=white    ctermbg=none   guibg=bg       guifg=white
hi ColorColumn   cterm=reverse    gui=reverse
hi StatusLine    cterm=reverse    guibg=grey    guifg=white
hi StatusLineNC  cterm=reverse    guibg=grey    guifg=white
hi CursorLine    ctermbg=black    cterm=none     gui=none     guibg=#000000

" filetype specific stuffs
autocmd FileType java setlocal ts=4 et sts=4 sw=4            " java tabs
autocmd FileType make setlocal ts=8 noexpandtab sts=8 sw=8   " make tabs

