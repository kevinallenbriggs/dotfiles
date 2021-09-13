syntax enable 		" enable syntax highlighting
let mapleader = ','	" namespace shortcuts with a comma
set number		" show line numbers
set cursorline		" highlight the line the cursor is on

"--------- Plugins ---------"
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-vinegar'	"enhance the built-in directory browser (netrw)
Plugin 'preservim/nerdtree'	"add a full-featured file system explorer
Plugin 'ctrlpvim/ctrlp.vim'	"add a full-featured file system explorer
Plugin 'sonph/onehalf'		"install a theme


" All of your Plugins must be added before the following line
call vundle#end()            " required

filetype plugin indent on    " required




"--------- Visuals ---------"
colorscheme onehalfdark
let g:airline_theme='onehalfdark'

set t_CO=256		" force 256 colors on the terminal

"truecolors
if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif


"--------- File Browsing & Search ---------"
set hlsearch		"highlight search results
set incsearch		"turn on incremental search

"simple highlight removal
nmap <leader><space> :nohlsearch<cr>

"
" CtrlP
"
let g:ctrlp_custom_ignore = 'node_modules\DS_Store\vendor\|git'
nmap <c-R> :CtrlPBufTag<cr>
nmap <c-e> :CtrlPMRUFiles<cr>

"
" NERDTree
"
nmap <leader>n :NERDTreeToggle<cr>
let NERDTreeShowHidden=1	"show hidden files

"--------- Mappings ---------"

"exit various modes by pressing ,, 
imap <leader>, <Esc>
vmap <leader>, <Esc>


"edit the .vimrc file
nmap <leader>ev :tabedit $MYVIMRC<cr>


"easier buffer closing
imap <leader>c :bd<cr>
nmap <leader>c :bd<cr>
vmap <leader>c :bd<cr>




"--------- AutoCommands ---------"

"automatically source .vimrc upon save
augroup autosourcing
	autocmd!	
	autocmd BufWritePost .vimrc source %
augroup END
