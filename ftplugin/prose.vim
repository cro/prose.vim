" Local commands for writing real text


set formatoptions=t1
set textwidth=74
autocmd InsertEnter * set formatoptions+=a
autocmd InsertLeave * set formatoptions-=a
noremap Q gqap

command! -range=% SoftWrap
            \ <line2>put _ |
            \ <line1>,<line2>g/.\+/ .;-/^$/ join |normal $x
