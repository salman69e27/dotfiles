" Disable spelling
let g:pandoc#spell#enabled = 0

let g:pandoc#filetypes#handled = ["pandoc"]

function! PandocAss()
    execute 'Pandoc pdf --highlight-style ~/.pandoc/highlight/assignments.theme --template assignment -fmarkdown-implicit_figures'
endfunction


function! PandocCaption()
    execute 'Pandoc pdf --highlight-style ~/.pandoc/highlight/assignments.theme --template assignment'
endfunction

command! -nargs=0 PandocAss call PandocAss()
command! -nargs=0 PandocCaption call PandocCaption()
