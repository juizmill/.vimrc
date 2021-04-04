set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'Shougo/neocomplete.vim'
Plugin 'dracula/vim'
Plugin 'suan/vim-instant-markdown', {'rtp': 'after'}
Plugin 'scrooloose/nerdtree'
Plugin 'ryanoasis/vim-devicons'
Plugin 'cj/vim-webdevicons'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'johngrib/vim-game-code-break'
Plugin 'jiangmiao/auto-pairs'
Plugin 'mg979/vim-visual-multi', {'branch': 'master'}
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'dense-analysis/ale'

call vundle#end()
filetype plugin indent on

" powerline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''

let g:neocomplete#enable_at_startup = 1

let g:ycm_key_list_select_completion=[]
let g:ycm_key_list_previous_completion=[]

syntax on
color dracula

" Abre NERDTree automáticamente
autocmd vimenter * NERDTree
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
autocmd vimenter * wincmd p
"let g:NERDTreeDirArrowExpandable = '▸'
"let g:NERDTreeDirArrowCollapsible = '▾'
" let NERDTreeQuitOnOpen = 1

let g:NERDTreeDirArrowExpandable = '✚'
let g:NERDTreeDirArrowCollapsible = '➜'

set nu!
set encoding=utf8
let g:airline_powerline_fonts = 1
set guifont=FantasqueSansMono-Regular\ 13
let g:NERDTreeGitStatusIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }
let g:NERDTreeGitStatusShowIgnored = 1
let g:webdevicons_enable_nerdtree = 1

nnoremap <c-s> :w<CR>
inoremap <c-s> <Esc>:w<CR>l
vnoremap <c-s> <Esc>:w<CR>

nnoremap <c-q> :wq<CR>
inoremap <c-q> <Esc>:wq<CR>l
vnoremap <c-q> <Esc>:wq<CR>
