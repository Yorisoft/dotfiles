"=================================================BASIC KEY MAPPINGS=================================

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

" Clear search highlight on pressing <Esc><Esc> in normal mode
nnoremap <Esc><Esc> :set nohlsearch<CR>
autocmd CmdlineEnter /,\? :set hlsearch

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
nnoremap <Left> :echo "Use h to move!!"<CR> 
nnoremap <Right> :echo "Use l to move!!"<CR>
nnoremap <Up> :echo "Use k to move!!"<CR>
nnoremap <Down> :echo "Use j to move!!"<CR>

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

"=================================================PLUGIN CONFIG=================================

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
