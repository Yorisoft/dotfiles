" Change leader key from default '\' to ' '. More ergonomic
let mapleader = " "

" Enable nerd font support
let g:nerd_font=1

" Enable numberline. 
set number
" Enable  relative numberline. Useful for jumping between line
set relativenumber

" Sync clipboard between OS and vim
" Remove/Comment this if you want seperate buffers between OS and vim clipboards
" set clipboard=unnamedplus

" Enable mouse support. Allows for moving and highlighting with mouse
" WSL1/2 works best with these not set. 
" set mouse=n " enables mouse support only in normal mode.
" set mouse=v " enables mouse support only in visual mode.
" set mouse=i " enables mouse support only in insert mode.
" set mouse=c " enables mouse support only in command-line mode.
" set mouse=a " enables mouse support for all modes.

" Improve performance by not redrawing on certain actions
set lazyredraw

" Indent wrapped lines to align with the start of original line
set breakindent

" Enable more persistant undo history. 
" Specifiying undodir stops vim from creating undo history file in working dirs 
set undodir=~/.vim/undo
set undofile

" Case-insensitive searching UNLESS one or more capital letters in search term
" set ignorecase
set smartcase

" Enable/Disable sign column
" set signcolumn=auto " Show the sign column only when necessary, i.e., when there are signs to display
" set signcolumn=no " No sign column will be displayed
set signcolumn=yes " Always show the sign column, even if no signs are present

" Decrease update time. 
" Time to wait after typing for vim to continue background operations, i.e lineupdate, autocompletion
set updatetime=250

" Decrease mapped squence wait time
" Time to wait untill vim considers mapped key input command as finished 
set timeoutlen=300

" Configure how splits should open
set splitright
set splitbelow

" Enable Preview for substitutions live, as you type!
" Not supported in my version of vim (vim-gtk3 8.1)
" set inccommand=split

" Highlight current line location
set cursorline

" Minimum number of lines to keep above and below the cursor
set scrolloff=10

" Highlight on search
set hlsearch

" Display current command in status
set showcmd
set laststatus=2

" BASIC KEY MAPS
" BASIC KEY MAPS

" Yanks text to OS clipboard
vnoremap <leader>y "+y 

" Escape insert mode on jj
inoremap jj <Esc>

" Toggle relative numberline ON/OFF
nnoremap <leader>rn :set rnu!<CR>

" Opens split 
nnoremap <Leader>hs :split<CR>
nnoremap <Leader>vs :vsplit<CR>

" Clear search highlight on pressing <Esc> in normal mode
nnoremap <Esc><Esc> :set nohlsearch<CR>

" IF USING set mouse OPTION, you may want:
" Scroll with the mouse and move the cursor down line by line
" if has('mouse')
"   noremap <ScrollWheelDown> <C-e>
"   noremap <ScrollWheelUp> <C-y>
" endif

" Go to the next diagnostic
nnoremap ]d :lnext<CR>
" Go to the previous diagnostic
nnoremap [d :lprev<CR>
" Show diagnostic in new window
nnoremap <leader>e :lwindow<CR>
" Open diagnostic
nnoremap <leader>q :lopen<CR>

" For Pros: Disable arrow keys in normal mode
" nnoremap <Left> :echo "Use h to move!!"<CR> 
" nnoremap <Right> :echo "Use l to move!!"<CR>
" nnoremap <Up> :echo "Use k to move!!"<CR>
" nnoremap <Down> :echo "Use j to move!!"<CR>

" Use CTRL+<hjkl> to switch between windows
" COMMENTING OUT TO PRACTICE DEFAULT KEYBINDS
"nnoremap <C-h> <C-w>h  " Move left
"nnoremap <C-l> <C-w>l  " Move right
"nnoremap <C-j> <C-w>j  " Move down
"nnoremap <C-k> <C-w>k  " Move up

" PLUGIN 
" PLUGIN 
call plug#begin('~/.vim/plugged')

Plug 'preservim/nerdtree'  				" File tree explorer
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }  	" Lazy search. Async installation
Plug 'junegunn/fzf.vim'
Plug 'machakann/vim-highlightedyank' 			" Highlight yanked text && yank/delete around paragraph (yap/dap)
Plug 'tpope/vim-fugitive'				" Enables integration with Git
Plug 'mbbill/undotree'					" Create a Tree history of undo for easy selection
" Plug 'laytan/cloak.nvim'				" Hide Sensitive Information. Requires nvim..
" Plug 'ThePrimeagen/vim-be-good'			" Game-like excercises to 'be good' at vim. Requires nvim..
" Plug 'folke/zen-mode.nvim'				" Remove distractions and provide clean UI. Requires nvim..

call plug#end()

" PLUGIN CONFIG 
" PLUGIN CONFIG 

" Highlight Yanked text
" -- Try yap && dap
let g:highlightedyank_highlight_duration = 150

" Show hidden files
let NERDTreeShowHidden=1

" Enable/Disable Undo Tree window
nnoremap <leader>u :UndotreeToggle<CR>  " Toggle undotree with leader key

" THEME. Most important line
colorscheme apprentice
