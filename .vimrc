set nocompatible              " be iMproved, required
filetype off                  " required

if !has("gui_running")
    set term=xterm
    set t_Co=256
endif

syntax on

set rtp+=$HOME/vim/bundle/Vundle.vim
let path='$HOME/vim/bundle'
call vundle#rc('vim/bundle')
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'L9'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

Plugin 'Valloric/YouCompleteMe'
Plugin 'tomasr/molokai'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
" Plugin 'airblade/vim-gitgutter'
" Plugin 'mhinz/vim-signify'
Plugin 'wincent/command-t'
Plugin 'ctrlpvim/ctrlp.vim'

Plugin 'https://github.com/Nopik/vim-nerdtree-direnter'

Plugin 'LucHermitte/lh-vim-lib'
Plugin 'LucHermitte/lh-tags'
Plugin 'LucHermitte/lh-dev'
Plugin 'LucHermitte/lh-brackets'
Plugin 'LucHermitte/vim-refactor'

Plugin 'uarun/vim-protobuf'

call vundle#end()            " required

let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'




filetype plugin indent on    " required


" set background=dark

nnoremap <Leader>i i
inoremap <Leader>i <Esc>



colorscheme molokai


let g:NERDTreeWinSize=20
let g:NERDTreeWinPos="right"







