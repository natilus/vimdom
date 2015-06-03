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
Bundle 'bling/vim-airline'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/syntastic'
Plugin 'Valloric/YouCompleteMe'
Plugin 'xolox/vim-notes'
Plugin 'xolox/vim-misc'
Plugin 'junegunn/goyo.vim'
Plugin 'benmills/vimux'
Plugin 'vim-scripts/taglist.vim'

" Color Repositories

Bundle 'altercation/vim-colors-solarized'
" solarized

Bundle 'vim-scripts/strange'
" strange

Bundle 'vyshane/vydark-vim-color'
" vydark

Bundle 'adlawson/vim-sorcerer'     
" sorcerer

Bundle 'vim-scripts/rdark'
" rdark

Bundle 'croaker/mustang-vim'
" mustang

Bundle 'jordwalke/flatlandia'
" flatlandia

Bundle 'gosukiwi/vim-atom-dark' 
" atom-dark

Bundle 'jonathanfilip/vim-lucius'
" lucius

Bundle 'Lokaltog/vim-distinguished'
" distinguished

" All Plugins must be added before the following line
filetype plugin indent on    " required


" General Stuff
set number
set tabstop=4 shiftwidth=4 expandtab
set shiftround
set tw=120
set smarttab
set laststatus=2
set clipboard=unnamed "does some pasting shit
set background=dark
set backspace=indent,eol,start
syntax enable     
set t_Co=256
colorscheme  distinguished

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
map <Leader>nn :set nonumber<CR>
map <Leader>n  :set number<CR>

" Git stuff
nmap <silent> <leader>pus :Gpush origin master<CR>
nmap <silent> <leader>pul :Gpull origin master<CR>
nmap <silent> <leader>com :Gcommit<CR>
nmap <silent> <leader>wri :Gwrite<CR>
nmap <silent> <leader>sc :setlocal spell!<cr>
