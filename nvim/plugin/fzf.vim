" delete buffers

function! s:format_buffer(b)
  let l:name = bufname(a:b)
  let l:name = empty(l:name) ? '[No Name]' : fnamemodify(l:name, ":p:~:.")
  let l:flag = a:b == bufnr('')  ? '%' :
	  \ (a:b == bufnr('#') ? '#' : ' ')
  let l:modified = getbufvar(a:b, '&modified') ? ' [+]' : ''
  let l:readonly = getbufvar(a:b, '&modifiable') ? '' : ' [RO]'
  let l:extra = join(filter([l:modified, l:readonly], '!empty(v:val)'), '')
  return substitute(printf("[%s] %s\t%s\t%s", a:b, l:flag, l:name, l:extra), '^\s*\|\s*$', '', 'g')
endfunction

function! s:delete_buffers()
  let l:preview_window = get(g:, 'fzf_preview_window', &columns >= 120 ? 'right': '')
  let l:options = [
  \   '-m',
  \   '--tiebreak=index',
  \   '-d', '\t',
  \   '--prompt', 'Delete> '
  \ ]
  if len(l:preview_window)
    let l:options = extend(l:options, get(fzf#vim#with_preview(
	  \   {"placeholder": "{2}"},
	  \   l:preview_window
	  \ ), 'options', []))
  endif


  return fzf#run(fzf#wrap({
  \ 'source':  map(
  \   filter(
  \     range(1, bufnr('$')),
  \     {_, nr -> buflisted(nr) && !getbufvar(nr, "&modified")}
  \   ),
  \   {_, nr -> s:format_buffer(nr)}
  \ ),
  \ 'sink*': {
  \   lines -> execute('bdelete ' . join(map(lines, {
  \     _, line -> substitute(split(line)[0], '^\[\|\]$', '', 'g')
  \   })), 'silent!')
  \ },
  \ 'options': l:options,
  \}))
endfunction


command! BD call s:delete_buffers()

" don't match filename when searching in files with Rg
command! -bang -nargs=* Rg call fzf#vim#grep("rg --column --line-number --no-heading --color=always --smart-case ".shellescape(<q-args>), 1, fzf#vim#with_preview({'options': '--delimiter : --nth 4..'}), <bang>0)
