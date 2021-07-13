" Headers colors

hi VimwikiHeader1 guifg=#F0A961
hi VimwikiHeader2 guifg=#91B76B
hi VimwikiHeader3 guifg=#AD8FC9
hi VimwikiHeader4 guifg=#DC78AA
hi VimwikiHeader5 guifg=#DC78AA
hi VimwikiHeader6 guifg=#DC78AA

let g:vimwiki_list = [{'path': '~/notes/',
	    \ 'syntax': 'markdown',
	    \ 'ext': '.md',
	    \ 'index': 'Home'}]

" only set file type to vimwiki inside wiki directory
let g:vimwiki_global_ext = 0

let g:zettel_format = "%file_no-%raw_title"
let g:zettel_fzf_options = ['--exact', '--tiebreak=end']
