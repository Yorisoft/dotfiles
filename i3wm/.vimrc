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

source ~/.vim/config/plugins.vim
source ~/.vim/config/general-settings.vim
source ~/.vim/config/key-mappings.vim
source ~/.vim/config/coc.vim
source ~/.vim/config/themes/codedark.vim
" Make background transparent
highlight Normal guibg=NONE ctermbg=NONE
highlight NormalNC guibg=NONE ctermbg=NONE
highlight EndOfBuffer guibg=NONE ctermbg=NONE

" source ~/.vim/config/themes/apprentice.vim
" source ~/.vim/config/themes/drakula.vim
" source ~/.vim/config/themes/gruvbox.vim
" source ~/.vim/config/themes/oceandeep.vim
" source ~/.vim/config/themes/onedark.vim
" source ~/.vim/config/themes/tokyonight.vim
" source ~/.vim/config/themes/visualstudio.vim
" source ~/.vim/config/themes/xcode.vim

" The line beneath this is called `modeline`. See `:help modeline`
" vim: ts=2 sts=2 sw=2 et