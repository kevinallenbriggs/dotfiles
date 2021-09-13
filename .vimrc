syntax enable

let mapleader = ','				"namespace shortcuts with a comma
set number


"--------- Visuals ---------"
colorscheme atom-dark

set t_CO=256		" force 256 colors on the terminal
"set guioptions-=l
"set guioptions-=L
"set guioptions-=r
"set guioptions-=R



"--------- Search ---------"
set hlsearch		"highlight search results
set incsearch		"turn on incremental search



"--------- Mappings ---------"

"exit various modes by pressing ,, 
imap <leader>, <Esc>
vmap <leader>, <Esc>

"simple highlight removal
nmap <leader><space> :nohlsearch<cr>

"edit the .vimrc file
nmap <leader>ev :tabedit $MYVIMRC<cr>



"--------- AutoCommands ---------"

"automatically source .vimrc upon save
augroup autosourcing
	autocmd!	
	autocmd BufWritePost .vimrc source %
augroup END
