" Custom VIM Settings
" Diego Paiva e Silva (2019)

" 'Better safe than sorry'
set nocompatible



""" Plugin manager: Pathogen

" Lets you store your plugins in individual folders inside the .vim/bundle directory (also as git submodules).
" This line initializes it and loads all plugins:
execute pathogen#infect()



""" Basic behavior

set encoding=utf-8              " The encoding displayed
set fileencoding=utf-8          " The encoding written to file
set showcmd                     " Show command as it's being entered in the right bottom of the screen
set number                      " Display the current line as absolut 
set relativenumber              " Display all other lines as relative
set hidden                      " Let edited buffers in the background


""" Appearence

syntax on                       " Syntax highlighting
filetype plugin indent on       " Turns on 'detection', 'plugin' and 'indent' at once 
colorscheme dracula             " Current favorite colorscheme



""" Tab settings

set expandtab                   " Convert tabs to spaces
set tabstop=2                   " On pressing tab, insert 2 spaces
set softtabstop=2               " Makes backspace treat 2 spaces like a tab
set shiftwidth=2                " How many columns text is indented when using reindent operations
set backspace=indent,eol,start  " Make the backspace work like in most other programs



""" Key bindings

" Find and reveal the file for the active buffer in the NERDTree window by pressing F2
nnoremap <silent> <F2> :NERDTreeFind<CR>    

" Toggle the NERDTree window by pressing F3
nnoremap <silent> <F3> :NERDTreeToggle<CR> 

" Fuzzy find files with CTRL-P
nnoremap <C-p> :Files<CR>

" Switch between buffers using CTRL-H and CTRL-L
nnoremap <C-h> :bnext<CR>
nnoremap <C-l> :bprevious<CR>

""" NERDTree settings

" Open NERDTree automatically when vim starts up
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

let g:NERDTreeChDirMode=2       " Swap CWD to the root node when changing directory
let g:NERDTreeWinSize=30        " Default window width
let g:NERDTreeShowHidden=1      " Show hidden files (e.g .gitignore)



" Miscellaneous
let g:EditorConfig_exclude_patterns = ['fugitive://.\*'] " Ensure that vim-editorconfig will work well with vim-fugitive
