
call pathogen#infect()
set tags=./tags,tags

syntax enable
syntax on
filetype plugin indent on
set background=dark
colorscheme solarized

set number
set ai

"search
set ic
set smartcase
set incsearch
set hlsearch

let mapleader = ","

"toggle comments
map <leader>c <c-_><c-_>

map <F4> :NERDTreeToggle<CR>

map <leader><leader><leader> :let @/=""<CR>

"TLIST
let Tlist_Ctags_Cmd = "/usr/bin/ctags"
let Tlist_WinWidth = 40
map <F3> :TlistToggle<CR>
map <F8> :!/usr/bin/ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>

if &term =~ "xterm\\|rxvt" 
	  :silent !echo -ne "\033]12;white\007" 
	    let &t_SI = "\033]12;LawnGreen\007" 
	      let &t_EI = "\033]12;white\007" 
	        autocmd VimLeave * :!echo -ne "\033]12;white\007" 
	endif 

au BufEnter *.hs compiler ghc
let g:haddock_browser = "/usr/bin/chromium-browser"
let g:ghc = "usr/bin/ghc"
let g:haddock_docdir = "/usr/share/doc/ghc-doc/html/"

