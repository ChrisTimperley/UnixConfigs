filetype plugin on

" only use spaces for indentation
set expandtab
set softtabstop=2
set shiftwidth=2

" show line numbers
set number
set shellslash

" netrw: tree style
let g:netrw_liststyle=3

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" BINDINGS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Allow pasting to multiple locations.
" 'p' to paste, 'gv' to re-select text original intended for copying, 'y'
" to copy again.
xnoremap p pgvy

set pastetoggle=<F2>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" SYNTAX HIGHLIGHTING
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set hlsearch " highlight all search matches

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" PLUGINS (vim-plug)
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" automatically install plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/plugged')
" enhanced statusline
Plug 'vim-airline/vim-airline'
set laststatus=2
set encoding=utf-8
set ttimeoutlen=50
let g:airline_powerline_fonts=1

" git wrapper
Plug 'tpope/vim-fugitive'

" no more nasty whitespace
" :StripWhitespace is a cool macro!
Plug 'ntpeters/vim-better-whitespace'

" shows a git diff in the gutter and allows hunks to be staged/reset
Plug 'airblade/vim-gitgutter'

" highlights yanked text
Plug 'machakann/vim-highlightedyank'

" pretty tree explorer
Plug 'preservim/nerdtree'

" asynchronous linting and build automation
Plug 'neomake/neomake'
call plug#end()
