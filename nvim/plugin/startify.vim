let g:startify_custom_header =
          \ 'startify#center(startify#fortune#cowsay())'
let g:startify_lists = [
    \ { 'type': 'dir',       'header': startify#center(['MRU '.getcwd()]) },
    \ { 'type': 'sessions',  'header': startify#center(['Sessions']) },
    \ { 'type': 'files',     'header': startify#center(['MRU']) },
    \ { 'type': 'bookmarks', 'header': startify#center(['Bookmarks']) },
    \ { 'type': 'commands',  'header': startify#center(['Commands']) },
    \ ]
let g:startify_padding_left = 68 " Hard coded padding for lists
