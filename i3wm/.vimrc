"                                                                           ___     
"         ,---,                     ,--,                          .--.,   ,--.'|_   
"        /_ ./|   ,---.    __  ,-.,--.'|                 ,---.  ,--.'  \  |  | :,'  
"  ,---, |  ' :  '   ,'\ ,' ,'/ /||  |,      .--.--.    '   ,'\ |  | /\/  :  : ' :  
" /___/ \.  : | /   /   |'  | |' |`--'_     /  /    '  /   /   |:  : :  .;__,'  /   
"  .  \  \ ,' '.   ; ,. :|  |   ,',' ,'|   |  :  /`./ .   ; ,. ::  | |-,|  |   |    
"   \  ;  `  ,''   | |: :'  :  /  '  | |   |  :  ;_   '   | |: :|  : :/|:__,'| :    
"    \  \    ' '   | .; :|  | '   |  | :    \  \    `.'   | .; :|  |  .'  '  : |__  
"     '  \   | |   :    |;  : |   '  : |__   `----.   \   :    |'  : '    |  | '.'| 
"      \  ;  ;  \   \  / |  , ;   |  | '.'| /  /`--'  /\   \  / |  | |    ;  :    ; 
"       :  \  \  `----'   ---'    ;  :    ;'--'.     /  `----'  |  : \    |  ,   /  
"        \  ' ;                   |  ,   /   `--'---'           |  |,'     ---`-'   
"         `--`                     ---`-'                       `--'                
"                                ____          ,-.----.     ,----..                 
"        ,---.  ,--,           ,'  , `.        \    /  \   /   /   \                
"       /__./|,--.'|        ,-+-,.' _ |        ;   :    \ |   :     :               
"  ,---.;  ; ||  |,      ,-+-. ;   , ||        |   | .\ : .   |  ;. /               
" /___/ \  | |`--'_     ,--.'|'   |  ||        .   : |: | .   ; /--`                
" \   ;  \ ' |,' ,'|   |   |  ,', |  |,        |   |  \ : ;   | ;                   
"  \   \  \: |'  | |   |   | /  | |--'         |   : .  / |   : |                   
"   ;   \  ' .|  | :   |   : |  | ,            ;   | |  \ .   | '___                
"    \   \   ''  : |__ |   : |  |/             |   | ;\  \'   ; : .'|               
"     \   `  ;|  | '.'||   | |`-'              :   ' | \.''   | '/  :               
"      :   \ |;  :    ;|   ;/                  :   : :-'  |   :    /                
"       '---" |  ,   / '---'                   |   |.'     \   \ .'                 
"              ---`-'                          `---'        `---`                   
"                                                                                   
"This is a mashup of mathisbynens/dotfile/.vimrc && nvim-lua/kickstart.nvim

" Set <space> as the leader key
" See `:help mapleader`
let mapleader = ' '
let maplocalleader = ' '
" let g:coc_default_semantic_highlight_groups = 1
" [[ Setting Neovim default options ]]
" These are some of the options enabled by default in Neovim
" These are options believed by many Vim users to be essential.
" For more information, see `:h vim_diff.txt` in Neovim

" Enable file type detection
filetype plugin indent on

" Enable syntax highlighting
syntax on

" Set fold method to syntax
" indent
" market
" syntax
" manual
set foldmethod=manual

" Automatically indent
set autoindent

" Automatically reloads a file if it's been changed outside of vim
set autoread

" Allow backspace in insert mode
set backspace=indent,eol,start

" Turn off visual and audible alerts
" set belloff=all
" Disable error bell
set noerrorbells

" Always displays last line of file at botton of editor
" set display=lastline 

" Set encoding to UTF-8
" Use UTF-8 without BOM
set encoding=utf-8 nobomb

" Allows switching between buffers without saving changes.
set hidden 

" Increase commands saved to history file.
" Default is 1000
set history=10000

" Highlight dynamically as pattern is typed
set incsearch

" Single space line (J)oining
set nojoinspaces

" Better tab behavior
" set smarttab
" Set tab width
set shiftwidth=4
" Make tab stop width
set tabstop=4
" Insert spaces instead of tabs. Half shiftwidth && tabstop if not using expandtab
"set expandtab

" Don’t reset cursor to start of line when moving around.
set nostartofline

" Display current command in status
set showcmd
set laststatus=2
" Show/Hide the current mode
set noshowmode

" Controll how Vim switches between buffers
" uselast give me errors when sourcing..
" set switchbuf=uselast "wildoptions=pum,tagfile

" Improve Vim's performance and make Vim's modern features available. 
set nocompatible
"
" Enhance command-line completion
set wildmenu

" Allow cursor keys in insert mode
set esckeys

" Optimize for fast terminal connections
set ttyfast

" Add the g flag to search/replace by default
set gdefault

" Don’t add empty newlines at the end of files
set binary
set noeol

" Enable numberline. 
set number
" Use relative line numbers
if exists("&relativenumber")
	set relativenumber
	au BufReadPost * set relativenumber
endif

" Sync clipboard between OS and vim
" set clipboard=unnamedplus

" Enable mouse support. Allows for moving and highlighting with mouse
" WSL1/2 works best with these not set. 
" set mouse=n " enables mouse support only in normal mode.
" set mouse=v " enables mouse support only in visual mode.
" set mouse=i " enables mouse support only in insert mode.
" set mouse=c " enables mouse support only in command-line mode.
set mouse=a " enables mouse support for all modes.

" Improve performance by not redrawing on certain actions
set lazyredraw

" Indent wrapped lines to align with the start of original line
set breakindent

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

" Centralize backups, swapfiles and undo history
if exists("&undodir")
	set undodir=~/.vim/undo
endif
set undofile
set backupdir=~/.vim/backups
set directory=~/.vim/swaps

" Don’t create backups when editing files in certain directories
" set backupskip=/tmp/*,/private/tmp/*

" Respect modeline in files
set modeline
" set modelines=5	" Vim looks at first 5 line by default

" Case-insensitive searching UNLESS one or more capital letters in search term
set ignorecase
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

" Sets how vim will display certain whitespace characters in the editor.
" set list
" set listchars=tab:»\ ,trail:·,nbsp:␣
" Use the following settings if you do not want unicode characters
"set listchars=tab:>\ ,trail:-,nbsp:+

" Enable Preview for substitutions live, as you type!
" Not supported in my version of vim (vim-gtk3 8.1)
" set inccommand=split

" Highlight current line location
set cursorline

" Minimum number of lines to keep above and below the cursor
set scrolloff=10

" Show the cursor position
set ruler

" Don’t show the intro message when starting Vim
" set shortmess=atI

" Show the filename in the window titlebar
set title

" Enable nerd font support
let nerd_font=1

" Automatic commands
if has("autocmd")
	" Treat .json files as .js
	autocmd BufNewFile,BufRead *.json setfiletype json syntax=javascript

	" Treat .md files as Markdown
	autocmd BufNewFile,BufRead *.md setlocal filetype=markdown
endif

" Enable color scheme support when using editor inside tmux
set term=xterm-256color


" BASIC KEY MAPS
" BASIC KEY MAPS

" Yanks text to OS clipboard
vnoremap <leader>y "+y 
"
" Escape insert mode on jj
inoremap jj <Esc>

" Toggle relative numberline ON/OFF
nnoremap <leader>rn :set rnu!<CR>

" Opens split 
nnoremap <Leader>hs :split<CR>
nnoremap <Leader>vs :vsplit<CR>

" Highlight on search
set hlsearch
" Clear search highlight on pressing <Esc> in normal mode
nnoremap <Esc><Esc> :set nohlsearch<CR>

" Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
" for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
" is not what someone will guess without a bit more experience.
"
" NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
" or just use <C-\><C-n> to exit terminal mode
tnoremap <Esc><Space> <C-\><C-n>

" Remap for dealing with word wrap
nnoremap <expr> <silent> k v:count == 0 ? 'gk' : 'k'
nnoremap <expr> <silent> j v:count == 0 ? 'gj' : 'j'

" IF USING set mouse OPTION, you may want:
" Scroll with the mouse and move the cursor down line by line
if has('mouse')
  noremap <ScrollWheelDown> <C-e>
  noremap <ScrollWheelUp> <C-y>
endif

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

" Strip trailing whitespace (,ss)
function! StripWhitespace()
	let save_cursor = getpos(".")
	let old_query = getreg('/')
	:%s/\s\+$//e
	call setpos('.', save_cursor)
	call setreg('/', old_query)
endfunction
noremap <leader>ss :call StripWhitespace()<CR>
" Save a file as root (,W)
noremap <leader>W :w !sudo tee % > /dev/null<CR>


" [[ Install `vim-plug` plugin manager ]]
"    See https://github.com/junegunn/vim-plug/ for more info
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif


" [[ Install plugins ]]
"  To check the current status of your plugins, run
"    :PlugStatus
"
"  To update plugins you can run
"    :PlugUpdate
"
" Note: Here is where you install your plugins.

call plug#begin('~/.vim/plugged')

" File tree explorer
Plug 'preservim/nerdtree'

" Lazy search. Async installation
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Highlight yanked text && yank/delete around paragraph (yap/dap)
Plug 'machakann/vim-highlightedyank'

" Enables integration with Git
Plug 'tpope/vim-fugitive'

" Create a Tree history of undo for easy selection
Plug 'mbbill/undotree'

" Detect tabstop and shiftwidth automatically
" Plug 'tpope/vim-sleuth'

" Provides interactive way to show available keybindings and command
Plug 'folke/which-key.nvim'

" Adds git related signs to the gutter
Plug 'airblade/vim-gitgutter'

" Useful plugin to show you pending keybinds.
Plug 'liuchengxu/vim-which-key'

" Autocompletion
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-lsp.vim'

" Colorschemes
Plug 'romainl/Apprentice'
Plug 'ghifarit53/tokyonight-vim'
Plug 'morhetz/gruvbox'
Plug 'joshdick/onedark.vim'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'arzg/vim-colors-xcode'
Plug 'tomasiser/vim-code-dark'

" "gc" to comment visual regions/lines
Plug 'tpope/vim-commentary'

" Set airline as statusline
" Plug 'vim-airline/vim-airline'

" Enable LSP
" Plug 'prabirshrestha/vim-lsp'

" Install language servers and configure them for vim-lsp
" Plug 'mattn/vim-lsp-settings'

" coc.nvim
" Or build from source code by using yarn: https://yarnpkg.com
Plug 'neoclide/coc.nvim', {'tag': 'v0.0.82'}

" Hide Sensitive Information. Requires nvim..
" Plug 'laytan/cloak.nvim'

" Game-like excercises to 'be good' at vim. Requires nvim..
" Plug 'ThePrimeagen/vim-be-good'

" Remove distractions and provide clean UI. Requires nvim..
" Plug 'folke/zen-mode.nvim'

call plug#end()


" [[ Configure plugins ]]
set termguicolors
"" Set colorscheme Tokyo
"let g:tokyonight_style = 'night'  " available: night, storm
"let g:tokyonight_enable_italic = 0
"colorscheme tokyonight

"" Set colorscheme Gruvbox
"" See all option here: https://github.com/morhetz/gruvbox/wiki/Configuration
"" let g:gruvbox_(option) = '(value)'
" set background=dark    " Setting dark mode
"" set background=light   " Setting light mode
"" let g:gruvbox_hls_cursor = 'red'
" let g:grubox_italic = 1
" let g:gruvbox_contrast_dark = 'hard'
" colorscheme gruvbox

" Set colorscheme Onedark
set t_Co=256
set t_ut=
" If you don't like many colors and prefer the conservative style of the standard Visual Studio
" let g:codedark_conservative=1
" If you like the new dark modern colors (Needs feedback!)
" let g:codedark_modern=1
" Activates italicized comments (make sure your terminal supports italics)
" let g:codedark_italics=1
" Make the background transparent
" let g:codedark_transparent=1
" If you have vim-airline, you can also enable the provided theme
" let g:airline_theme = 'codedark'
colorscheme codedark

" Set colorscheme Onedark
" colorscheme onedark

" Set colorscheme Apprentice
" colorscheme apprentice

" Set colorscheme Drakula
" colorscheme dracula

" Set color scheme xcode
" colorscheme xcodedark
" colorscheme xcodedarkhc
" colorscheme xcodelight
" colorscheme xcodelighthc
" colorscheme xcodewwdc

" Highlight Yanked text
" -- Try yap && dap
let g:highlightedyank_highlight_duration = 150

" Show hidden files
let NERDTreeShowHidden=1
" Enable/Disable Undo Tree window
nnoremap <leader>n :NERDTreeToggle<CR>  " Toggle NERDtree with leader key

" Enable/Disable Undo Tree window
nnoremap <leader>u :UndotreeToggle<CR>  " Toggle undotree with leader key


" [[ Configure vim-which-key ]]
call which_key#register('<Space>g', "g:which_key_map")
nnoremap <silent> <leader>      :<c-u>WhichKey '<Space>'<CR>
nnoremap <silent> <localleader> :<c-u>WhichKey  '<Space>'<CR>

" Document existing key chains
let g:which_key_map =  {}
let g:which_key_map.c = { 'name' : '[C]ode' }
let g:which_key_map.d = { 'name' : '[D]ocument' }
let g:which_key_map.r = { 'name' : '[R]ename' }
let g:which_key_map.s = { 'name' : '[S]earch' }
let g:which_key_map.w = { 'name' : '[W]orkspace' }
let g:which_key_map.t = { 'name' : '[T]oggle' }
let g:which_key_map.h = { 'name' : 'Git [H]unk' }


" [[ Configure fzf.vim ]]
" See `:help fzf-vim`

nmap <leader>sh :Helptags<CR>
let g:which_key_map.s.h = '[S]earch [H]elp'
nmap <leader>sk :Maps<CR>
let g:which_key_map.s.k = '[S]earch [K]eymaps'
nmap <leader>sf :Files<CR>
let g:which_key_map.s.f = '[S]earch [F]iles'
nmap <leader>sg :Rg<CR>
let g:which_key_map.s.g = '[S]earch by [G]rep'
nmap <leader>s. :History<CR>
let g:which_key_map.s['.'] = '[S]earch Recent Files ("." for repeat)'
nmap <leader><leader> :Buffers<CR>
let g:which_key_map[' '] = '[ ] Find existing buffers'

nmap <leader>/ :BLines<CR>
let g:which_key_map['/'] = '[/] Fuzzily search in current buffer'

" Commenting this section out untill I decide to adopt LSPs.
" [[ Configure LSP ]]
" NOTE: Install new language server using `:LspInstallServer` in the filetype
" you are trying to install LSP for.
" For example, if you want LSP server for C/C++, type
" `:LspInstallServer clangd` in a C/C++ buffer.

" Performance related settings, requires Vim 8.2+
"let g:lsp_use_native_client = 1
"let g:lsp_semantic_enabled = 1
"
"function! s:on_lsp_buffer_enabled() abort
"  setlocal omnifunc=lsp#complete
"  if exists('+tagfunc') | setlocal tagfunc=lsp#tagfunc | endif
"
"  " Keymaps
"  " Go to previous diagnostic message
"  nmap <buffer> [d <plug>(lsp-previous-diagnostic)
"  " Go to next diagnostic message
"  nmap <buffer> ]d <plug>(lsp-next-diagnostic)
"
"  nmap <buffer> <leader>rn <plug>(lsp-rename)
"  let g:which_key_map.r.n = '[R]e[n]ame'
"  nmap <buffer> <leader>ca <plug>(lsp-code-action-float)
"  let g:which_key_map.c.a = '[C]ode [A]ction'
"
"  " [G]oto [D]efinition
"  nmap <buffer> gd <plug>(lsp-definition)
"  " [G]oto [R]eferences
"  nmap <buffer> gr <plug>(lsp-references)
"  " [G]oto [I]mplementation
"  nmap <buffer> gI <plug>(lsp-implementation)
"
"  nmap <buffer> <leader>D <plug>(lsp-peek-type-definition)
"  let g:which_key_map.D = 'Type [D]efinition'
"  nmap <buffer> <leader>ds <plug>(lsp-document-symbol-search)
"  let g:which_key_map.d.s = '[D]ocument [S]ymbols'
"  nmap <buffer> <leader>ws <plug>(lsp-workspace-symbol-search)
"  let g:which_key_map.w.s = '[W]orkspace [S]ymbols'
"
"  " See `:help K` for why this keymap
"  " Hover Documentation
"  nmap <buffer> K <plug>(lsp-hover)
"  " Signature Documentation
"  nmap <buffer> <C-k> <plug>(lsp-signature-help)
"
"  " Lesser used LSP functionality
"  " [G]oto [D]eclaration
"  nmap <buffer> gD <plug>(lsp-declaration)
"
"  " Create a command `:Format` local to the LSP buffer
"  let g:lsp_format_sync_timeout = 1000
"  command! Format LspDocumentFormatSync
"endfunction
"
"augroup lsp_install
"  au!
"  " call s:on_lsp_buffer_enabled only for languages that has the server registered.
"  autocmd User lsp_buffer_enabled call s:on_lsp_buffer_enabled()
"augroup END





" COC.NVIM
" Set internal encoding of vim, not needed on neovim, since coc.nvim using some
" unicode characters in the file autoload/float.vim
"set encoding=utf-8
"
"" TextEdit might fail if hidden is not set.
"set hidden
"
"" Some servers have issues with backup files, see #649.
"set nobackup
"set nowritebackup
"
"" Give more space for displaying messages.
"set cmdheight=2
"
"" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
"" delays and poor user experience.
"set updatetime=300
"
"" Don't pass messages to |ins-completion-menu|.
"set shortmess+=c
"
"" Always show the signcolumn, otherwise it would shift the text each time
"" diagnostics appear/become resolved.
"if has("nvim-0.5.0") || has("patch-8.1.1564")
"  " Recently vim can merge signcolumn and number column into one
"  set signcolumn=number
"else
"  set signcolumn=yes
"endif
"
"" Use tab for trigger completion with characters ahead and navigate.
"" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
"" other plugin before putting this into your config.
"inoremap <silent><expr> <TAB>
"      \ pumvisible() ? "\<C-n>" :
"      \ CheckBackspace() ? "\<TAB>" :
"      \ coc#refresh()
"inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
"
"function! CheckBackspace() abort
"  let col = col('.') - 1
"  return !col || getline('.')[col - 1]  =~# '\s'
"endfunction
"
"" Use <c-space> to trigger completion.
"if has('nvim')
"  inoremap <silent><expr> <c-space> coc#refresh()
"else
"  inoremap <silent><expr> <c-@> coc#refresh()
"endif
"
"" Make <CR> auto-select the first completion item and notify coc.nvim to
"" format on enter, <cr> could be remapped by other vim plugin
"inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
"                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
"
"" Use `[g` and `]g` to navigate diagnostics
"" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
"nmap <silent> [g <Plug>(coc-diagnostic-prev)
"nmap <silent> ]g <Plug>(coc-diagnostic-next)
"
"" GoTo code navigation.
"nmap <silent> gd <Plug>(coc-definition)
"nmap <silent> gy <Plug>(coc-type-definition)
"nmap <silent> gi <Plug>(coc-implementation)
"nmap <silent> gr <Plug>(coc-references)
"
"" Use K to show documentation in preview window.
"nnoremap <silent> K :call ShowDocumentation()<CR>
"
"function! ShowDocumentation()
"  if CocAction('hasProvider', 'hover')
"    call CocActionAsync('doHover')
"  else
"    call feedkeys('K', 'in')
"  endif
"endfunction
"
"" Highlight the symbol and its references when holding the cursor.
"autocmd CursorHold * silent call CocActionAsync('highlight')
"
"" Symbol renaming.
"nmap <leader>rn <Plug>(coc-rename)
"
"" Formatting selected code.
"xmap <leader>f  <Plug>(coc-format-selected)
"nmap <leader>f  <Plug>(coc-format-selected)
"
"augroup mygroup
"  autocmd!
"  " Setup formatexpr specified filetype(s).
"  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
"  " Update signature help on jump placeholder.
"  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
"augroup end
"
"" Applying codeAction to the selected region.
"" Example: `<leader>aap` for current paragraph
"xmap <leader>a  <Plug>(coc-codeaction-selected)
"nmap <leader>a  <Plug>(coc-codeaction-selected)
"
"" Remap keys for applying codeAction to the current buffer.
"nmap <leader>ac  <Plug>(coc-codeaction)
"" Apply AutoFix to problem on the current line.
"nmap <leader>qf  <Plug>(coc-fix-current)
"
"" Run the Code Lens action on the current line.
"nmap <leader>cl  <Plug>(coc-codelens-action)
"
"" Map function and class text objects
"" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
"xmap if <Plug>(coc-funcobj-i)
"omap if <Plug>(coc-funcobj-i)
"xmap af <Plug>(coc-funcobj-a)
"omap af <Plug>(coc-funcobj-a)
"xmap ic <Plug>(coc-classobj-i)
"omap ic <Plug>(coc-classobj-i)
"xmap ac <Plug>(coc-classobj-a)
"omap ac <Plug>(coc-classobj-a)
"
"" Remap <C-f> and <C-b> for scroll float windows/popups.
"if has('nvim-0.4.0') || has('patch-8.2.0750')
"  nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
"  nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
"  inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
"  inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
"  vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
"  vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
"endif
"
"" Use CTRL-S for selections ranges.
"" Requires 'textDocument/selectionRange' support of language server.
"nmap <silent> <C-s> <Plug>(coc-range-select)
"xmap <silent> <C-s> <Plug>(coc-range-select)
"
"" Add `:Format` command to format current buffer.
"command! -nargs=0 Format :call CocActionAsync('format')
"
"" Add `:Fold` command to fold current buffer.
"command! -nargs=? Fold :call     CocAction('fold', <f-args>)
"
"" Add `:OR` command for organize imports of the current buffer.
"command! -nargs=0 OR   :call     CocActionAsync('runCommand', 'editor.action.organizeImport')
"
"" Add (Neo)Vim's native statusline support.
"" NOTE: Please see `:h coc-status` for integrations with external plugins that
"" provide custom statusline: lightline.vim, vim-airline.
"set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}
"
"" Mappings for CoCList
"" Show all diagnostics.
"nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
"" Manage extensions.
"nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
"" Show commands.
"nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
"" Find symbol of current document.
"nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
"" Search workspace symbols.
"nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
"" Do default action for next item.
"nnoremap <silent> <space>j  :<C-u>CocNext<CR>
"" Do default action for previous item.
"nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
"" Resume latest coc list.
"nnoremap <silent> <space>p  :<C-u>CocListResume<CR>

" [[ Configure completion ]]
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <CR>    pumvisible() ? asyncomplete#close_popup() : "\<CR>""

let g:asyncomplete_auto_completeopt = 0
set completeopt=menuone,noinsert,noselect,preview


" The line beneath this is called `modeline`. See `:help modeline`
" vim: ts=2 sts=2 sw=2 et