"=================================================VIM PLUGINS======================================

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

" Create a Tree history of undo for easy selection
Plug 'mbbill/undotree'

" Lazy search. Async installation
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Highlight yanked text && yank/delete around paragraph (yap/dap)
Plug 'machakann/vim-highlightedyank'

" "gc" to comment visual regions/lines
Plug 'tpope/vim-commentary'

" Detect tabstop and shiftwidth automatically
Plug 'tpope/vim-sleuth'

" Enables integration with Git
Plug 'tpope/vim-fugitive'

" Adds git related signs to the gutter
Plug 'airblade/vim-gitgutter'

" Useful plugin to show you pending keybinds.
Plug 'liuchengxu/vim-which-key'

" Colorschemes
Plug 'romainl/Apprentice'
Plug 'ghifarit53/tokyonight-vim'
Plug 'morhetz/gruvbox'
Plug 'joshdick/onedark.vim'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'arzg/vim-colors-xcode'
Plug 'tomasiser/vim-code-dark'

" coc.nvim
" Or build from source code by using yarn: https://yarnpkg.com
Plug 'neoclide/coc.nvim', {'tag': 'v0.0.82'} "this version works with my vim 8.2

" Autocompletion
" COC.NVIM covers autocomplete
" Plug 'prabirshrestha/asyncomplete.vim'
" Plug 'prabirshrestha/asyncomplete-lsp.vim'

" Set airline as statusline
" Plug 'vim-airline/vim-airline'

" Provides interactive way to show available keybindings and command
" This is for nvim, not vim
" We use liuchengxu/vim-which-key. 
" Plug 'folke/which-key.nvim'

" Enable LSP
" Plug 'prabirshrestha/vim-lsp'

" Install language servers and configure them for vim-lsp
" Plug 'mattn/vim-lsp-settings'

" Hide Sensitive Information. Requires nvim..
" Plug 'laytan/cloak.nvim'

" Game-like excercises to 'be good' at vim. Requires nvim..
" Plug 'ThePrimeagen/vim-be-good'

" Remove distractions and provide clean UI. Requires nvim..
" Plug 'folke/zen-mode.nvim'

call plug#end()
