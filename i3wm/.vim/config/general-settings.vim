let mapleader = ' ' 						" Set <space> as the leader key
let maplocalleader = ' ' 					" See `:help mapleader`
set termguicolors 							" Enable color scheme support when using editor inside tmux
set term=xterm-256color
filetype plugin indent on 					" Enable file type detection
syntax enable 								" Enable syntax highlighting
set foldmethod=manual 						" Set fold method to syntax. indent/marker/syntax/manual
set autoindent 								" Automatically indent
set autoread 								" Automatically reloads a file if it's been changed outside of vim
set backspace=indent,eol,start 				" Allow backspace in insert mode
" set belloff=all 							" Turn off visual and audible alerts
set noerrorbells 							" Disable error bell
" set display=lastline 						" Always displays last line of file at botton of editor
set encoding=utf-8 							" Set encoding. Using UTF-8
set bomb	 					 			" Including BOM( Byte Order Mark)
set hidden 									" Allows switching between buffers without saving changes. 
set history=10000 							" Increase commands saved to history file.
set hlsearch 								" Highlight on search
set incsearch 								" Highlight dynamically as pattern is typed
set nojoinspaces 							" Single space line (J)oining
set noeol 									" Don’t add empty newlines at the end of files
set binary
" set smarttab 								" Better tab behavior	
set shiftwidth=4 							" Set tab width
set tabstop=4 								" Make tab stop width
set softtabstop=4
set expandtab    							" Insert spaces instead of tabs. Half shiftwidth && tabstop if not using expandtab
set colorcolumn=100 						" Add visual linebreak column
set nostartofline 							" Don’t reset cursor to start of line when moving around.
set showcmd 								" Display current command in status
set laststatus=2
set noshowmode 								" Show/Hide the current mode
" uselast give me errors when sourcing..
" set switchbuf=uselast 					" Controll how Vim switches between buffers. wildoptions=pum,tagfile
set nocompatible 							" Improve Vim's performance and make Vim's modern features available.
set wildmenu 								" Enhance command-line completion
set esckeys 								" Allow cursor keys in insert mode
set ttyfast 								" Optimize for fast terminal connections
set gdefault 								" Add the g flag to search/replace by default
set number 									" Enable numberline.
if exists("&relativenumber") 				" Use relative line numbers
	set relativenumber
	au BufReadPost * set relativenumber
endif
" set clipboard=unnamedplus 				" Sync clipboard between OS and vim
set mouse=a 								" Enables mouse support. modes a/n/v/i/c.
set lazyredraw 								" Improve performance by not redrawing on certain actions
set breakindent 							" Indent wrapped lines to align with the start of original line
set modeline								" Respect modeline in files
set modelines=5								" Vim looks at first 5 line by default
set ignorecase								" Case-insensitive searching UNLESS one or more capital letters in search term
set smartcase
set signcolumn=yes							" Enable/Disable sign column auto/yes/no 
set updatetime=250							" Decrease update time.
set timeoutlen=300 							" Decrease mapped squence wait time
set splitright 								" Configure how vertical splits should open
set splitbelow 								" Configure how horizontal splits should open
set cursorline 								" Highlight current line location
set ruler 									" Show the cursor position
set scrolloff=10 							" Minimum number of lines to keep above and below the cursor
" set shortmess=atI 						" Don’t show the intro message when starting Vim
set title 									" Show the filename in the window titlebar
set titlestring=%F\ %m\ -\ VIM 				" Show the filename in the window titlebar
let nerd_font=1 							" Enable nerd font support
if has("autocmd") 							" Automatic commands
	" Treat .json files as .js
	autocmd BufNewFile,BufRead *.json setfiletype json syntax=javascript
	" Treat .md files as Markdown
	autocmd BufNewFile,BufRead *.md setlocal filetype=markdown
	" Treat .clang-format files as YAML
	autocmd BufNewFile,BufRead .clang-format setfiletype yaml
	" Trigger ANSI color escape sequence
    autocmd BufReadPost *.log ColorHighlight

	" Treat any .sql files as SQLite 
	" autocmd BufNewFile,BufRead *.sql setlocal filetype=sql syntax=sql
endif

" Save undo history
"  By default, undo files (.file.txt.un~) are saved in the current directory.
"  This makes the file system very messy, so undofile is disabled by default.
"
"  If would like to enable undofile, I recommend you to change undodir:
"  1. Create the undo directory: `:! mkdir -p ~/.vim/undo/`
"  2. Uncomment the following line starting with 'set undodir' and save the file
"  3. Source the .vimrc: `:source ~/.vimrc`
"  4. Now undo history will persist between Vim sessions
"
"  NOTE: See `:help undofile` and `:help undodir` for more information
"    You may change the undodir to another directory you prefer
if exists("&undodir") 						" Centralize backups, swapfiles and undo history
	set undodir=~/.vim/undo 				" Sets designated backup dir
endif
set undofile 								" Enable undofile
set backupdir=~/.vim/backups 				" Sets designated backup dir
set directory=~/.vim/swaps 					" Sets designated swap dir
" set backupskip=/tmp/*,/private/tmp/* 		" Don’t create backups in certain directories

" [[ Configure NERDTree ]]
" Show hidden files
let NERDTreeShowHidden=1

" [[ Configure yank-highlight ]]
" -- Try yap && dap
let g:highlightedyank_highlight_duration = 150

" Sets how vim will display certain whitespace characters in the editor.
set list
set listchars=tab:»\ ,trail:·,nbsp:␣
" Use the following settings if you do not want unicode characters
"set listchars=tab:>\ ,trail:-,nbsp:+

" Enable Preview for substitutions live, as you type!
" Not supported in my version of vim (vim-gtk3 8.1)
" set inccommand=split