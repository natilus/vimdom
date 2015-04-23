" To ignore plugin indent changes, instead use:
"filetype plugin on
" Brief help
" :PluginList          - list configured plugins
" :PluginInstall(!)    - install (update) plugins
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins

set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/vundle.vim
call vundle#rc()
"call vundle#begin('~/some/path/here')
Bundle 'gmarik/vundle'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'altercation/vim-colors-solarized'
Bundle 'bling/vim-airline'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/syntastic'
Plugin 'Valloric/YouCompleteMe'
Plugin 'xolox/vim-notes'
Plugin 'xolox/vim-misc'
Plugin 'junegunn/goyo.vim'
Plugin 'benmills/vimux'

" All Plugins must be added before the following line
filetype plugin indent on    " required


" General Stuff
set number
set tabstop=4 shiftwidth=4 expandtab
set shiftround
set smarttab
set laststatus=2
set clipboard=unnamed "does some pasting shit
set background=dark



syntax enable     
let g:solarized_termcolors = 256  
colorscheme solarized


" Remapping Keys
let mapleader=','
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

" Edit and load .vimrc file with leader key
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>lv :so $MYVIMRC<CR>

" Split vim shortcut
nmap <silent> <leader>sv :vsplit<CR>
nmap <silent> <leader>hv :hsplit<CR>

" Vimux shortcut
map <Leader>vp :VimuxPromptCommand<CR>
map <Leader>vl :VimuxRunLastCommand<CR>
map <Leader>vi :VimuxInspectRunner<CR>
map <Leader>vx :VimuxInterruptRunner<CR>
map <Leader>vx :VimuxInterruptRunner<CR>
map <Leader>vz :call VimuxZoomRunner()<CR>
map <Leader>ns :NoteFromSelectedText<CR>
nmap <silent> <leader>pus :Gpush origin master<CR>
nmap <silent> <leader>pul :Gpull origin master<CR>
nmap <silent> <leader>com :Gcommit<CR>
nmap <silent> <leader>wri :Gwrite<CR>
nmap <silent> <leader>ss :setlocal spell!<cr>
