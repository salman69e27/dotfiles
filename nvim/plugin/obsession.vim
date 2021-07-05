function! Iobsess(name)
    execute 'Obsess ~/.config/nvim/sessions/' . a:name
endfunction

function! Iobsessed(name)
    execute 'source ~/.config/nvim/sessions/' . a:name
endfunction

command! -nargs=1 Iobsess call Iobsess(<f-args>)
command! -nargs=1 Iobsessed call Iobsessed(<f-args>)
