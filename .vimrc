set nocompatible              " be iMproved, required
filetype off                  " required

if !has("gui_running")
    set term=xterm
    set t_Co=256
endif

syntax on

" let mapleader=","


set rtp+=$HOME/vim/bundle/Vundle.vim
let path='$HOME/vim/bundle'
call vundle#rc('~/vim/bundle')
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'L9'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

" Plugin 'Valloric/YouCompleteMe'
Plugin 'tomasr/molokai'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
" Plugin 'airblade/vim-gitgutter'
" Plugin 'mhinz/vim-signify'
" Plugin 'wincent/command-t'
Plugin 'ctrlpvim/ctrlp.vim'

Plugin 'https://github.com/Nopik/vim-nerdtree-direnter'

"Plugin 'LucHermitte/lh-vim-lib'
"Plugin 'LucHermitte/lh-tags'
"Plugin 'LucHermitte/lh-dev'
"Plugin 'LucHermitte/lh-brackets'
"Plugin 'LucHermitte/vim-refactor'

Plugin 'uarun/vim-protobuf'

Plugin 'powerline/fonts'

Plugin 'vitalk/vim-simple-todo'


" colorschemes
Plugin 'dracula/vim'
Plugin 'Shougo/vimproc.vim', { 'do': 'make' } " interactive command execution in vim

" Plugin 'garbas/vim-snipmate' " snippet manager
" Plugin 'tpope/vim-sleuth' " detect indent style (tabs vs. spaces)
Plugin 'ervandew/supertab' " Perform all your vim insert mode completions with Tab
Plugin 'tpope/vim-surround' " mappings to easily delete, change and add such surroundings in pairs, such as quotes, parens, etc.
Plugin 'mileszs/ack.vim' " search inside files using ack. Same as command line ack utility, but use :Ack
Plugin 'scrooloose/nerdcommenter'
call vundle#end()            " required

let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'




filetype plugin indent on    " required


" set background=dark

nnoremap <Leader>i i
inoremap <Leader>i <Esc>



colorscheme molokai
set number

let g:simple_todo_map_keys = 0
nmap <c-j> <Plug>(simple-todo-new)
imap <c-j> <Plug>(simple-todo-new)


set nocompatible            " not compatible with vi
set autoread                " detect when a file is changed

set history=1000            " change history to 1000
" set textwidth=120

set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp


"if !exists('g:airline_symbols')
  "let g:airline_symbols = {}
"endif
"let g:airline_symbols.space = "\ua0"


"let g:airline_powerline_fonts = 1

let g:NERDTreeWinSize=20
let g:NERDTreeWinPos="right"
let NERDTreeShowHidden=1

" make the highlighting of tabs and other non-text less annoying
highlight SpecialKey ctermbg=none ctermfg=8
highlight NonText ctermbg=none ctermfg=8


set wrap                    " turn on line wrapping
set wrapmargin=8            " wrap lines when coming within n characters from side
set linebreak               " set soft wrapping
set showbreak=…             " show ellipsis at breaking

set autoindent              " automatically set indent of new line
set smartindent




set list
set listchars=tab:→\ ,eol:¬,trail:⋅,extends:❯,precedes:❮
set showbreak=↪

" highlight conflicts
match ErrorMsg '^\(<\|=\|>\)\{7\}\([^=].\+\)\?$'


set ttyfast                 " faster redrawing

set laststatus=2            " show the satus line all the time





" Toggle NERDTree
nmap <silent> <leader>k :NERDTreeToggle<cr>
" expand to the path of the file in the current buffer
nmap <silent> <leader>y :NERDTreeFind<cr>



" CTRL+u,d zz to move wround quickly
" u = undo, CTRL+R redo


set backspace=indent,eol,start

autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p

set tabstop=3


AirlineTheme base16color

