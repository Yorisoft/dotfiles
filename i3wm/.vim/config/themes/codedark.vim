" Set colorscheme CodeDark
set t_Co=256
set t_ut=
" If you don't like many colors and prefer the conservative style of the standard Visual Studio
" let g:codedark_conservative=1
" If you like the new dark modern colors (Needs feedback!)
let g:codedark_modern=1
" Activates italicized comments (make sure your terminal supports italics)
" let g:codedark_italics=1
" Make the background transparent
" let g:codedark_transparent=1
" If you have vim-airline, you can also enable the provided theme
" let g:airline_theme = 'codedark'
" Override class/object colors to teal (VS Code style)
autocmd ColorScheme codedark hi CocSemClass	  guifg=#4EC9B0 ctermfg=6
autocmd ColorScheme codedark hi CocSemStruct  guifg=#4EC9B0 ctermfg=6
colorscheme codedark

