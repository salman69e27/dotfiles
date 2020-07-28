"for GUI colors
set t_8f=[38;2;%lu;%lu;%lum
set t_8b=[48;2;%lu;%lu;%lum
set termguicolors

"something regarding old vim and shit
set nocompatible

"To delete -- Insert -- since you use airline
set noshowmode

"for plugins to work correctly I guess
filetype off

syntax on

"to show line numbers
set nu
set rnu

"to show file stats
set ruler

"for vim to wrap your code
set wrap

"number of spaces in tab
set tabstop=4

"don't quite understand but seemed good and has the word smart
set smarttab

"to make indentation exclusive to hard tabs
set shiftwidth=4

"to display status line
set laststatus=2

"to highlight current line
set cursorline

"to sync vim clipboard with sys primary clipboard
set clipboard=unnamed,unnamedplus
"to prevent clearing clipboard on exit
autocmd VimLeave * call system("xsel -ib", getreg('+'))

"search as characters are entered
set incsearch

"highlight search matches
set hlsearch
nnoremap <C-c> :nohlsearch <CR>

"to move real lines when line is wrapped
nnoremap j gj
nnoremap k gk

"set cursor to solid blink in normal mode and solid vertical bar in insert
let &t_SI = "\e[5 q" "insert mode (start insert)
let &t_EI = "\e[1 q" "normal mode (exit insert)

"plugin manager
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"required
Plugin 'VundleVim/Vundle.vim'
"plugins go here
"-----------------------------------------------------------------------------"
Plugin 'Valloric/YouCompleteMe'
" Snippets
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
let g:UltiSnipsExpandTrigger="<F2>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsEditSplit="vertical"
" end Snippets

"status line
Plugin 'itchyny/lightline.vim'

"color highlight
Plugin 'chrisbra/Colorizer'
"indentation line
Plugin 'Yggdroot/indentLine'
"commenter
Plugin 'preservim/nerdcommenter'

"IPy
Plugin 'greghor/vim-pyShell'
" Jupyter-Vim integration
Plugin 'jupyter-vim/jupyter-vim'

"Cells
Plugin 'julienr/vim-cellmode'
Plugin 'benmills/vimux'

"Align
Plugin 'godlygeek/tabular'

" Themes
Plugin 'cormacrelf/vim-colors-github'
Plugin 'relastle/bluewery.vim'
Plugin 'arcticicestudio/nord-vim'
Plugin 'victorze/foo'
Plugin 'bluz71/vim-nightfly-guicolors'
Plugin 'doums/darcula'
Plugin 'sainnhe/forest-night'
Plugin 'nightsense/nemo'
Plugin 'morhetz/gruvbox'
Plugin 'lisposter/vim-blackboard'
Plugin 'pgavlin/pulumi.vim'
Plugin 'vim-python/python-syntax'
Plugin 'cocopon/iceberg.vim'
Plugin 'lewis6991/moonlight.vim'

call vundle#end()

"for vundle
filetype plugin indent on

"for life (and ycm)
set encoding=utf-8

"set colorscheme
colorscheme moonlight
set background=dark

let g:lightline = {
      \ 'colorscheme': 'iceberg',
      \ }

"python autocompletion
let g:ycm_filetype_blacklist = {'python':1}
let g:kite_tab_complete=1
set completeopt+=menuone   " show the popup menu even when there is only 1 match
set completeopt+=noinsert  " don't insert any text until user chooses a match
set completeopt-=preview  " don't show preview window


"Filetype specific compile and run
"-----------------------------------------------------------------------------"
if filereadable("Makefile")
	set makeprg=make\ -s
else
	autocmd FileType java       set makeprg=javac\ %
    autocmd FileType scala      set makeprg=scalac\ %
    autocmd FileType haskell    set makeprg=ghc\ -o\ %<\ %
    autocmd FileType javascript set makeprg=echo\ OK
    autocmd FileType python     set makeprg=echo\ OK
    autocmd FileType perl       set makeprg=echo\ OK
	autocmd FileType c          set makeprg=gcc\ -o\ %<\ % 
    autocmd FileType cpp        set makeprg=g++\ -DLOCAL\ -std=gnu++11\ -Wshadow\ -g\ -fsanitize=address\ -fsanitize=undefined\ -D_GLIBCXX_DEBUG\ -Wall\ -o\ '%:r'\ '%'
endif

imap <F9> <ESC>:w<CR><ESC>:make<CR>
nmap <F9> <ESC>:w<CR><ESC>:make<CR>

autocmd FileType c          nmap <F5> <ESC>:w<CR><ESC>:!./%<<CR>
autocmd FileType c          imap <F5> <ESC>:w<CR><ESC>:!./%<<CR>
autocmd FileType cpp        nmap <F5> <ESC>:w<CR><ESC>:!./%<<CR>
autocmd FileType cpp        imap <F5> <ESC>:w<CR><ESC>:!./%<<CR>
autocmd FileType java       nmap <F5> <ESC>:w<CR><ESC>:!java %<<CR>
autocmd FileType java       imap <F5> <ESC>:w<CR><ESC>:!java %<<CR>
autocmd FileType scala      nmap <F5> <ESC>:w<CR><ESC>:!scala %<<CR>
autocmd FileType scala      imap <F5> <ESC>:w<CR><ESC>:!scala %<<CR>
autocmd FileType haskell    nmap <F5> <ESC>:w<CR><ESC>:!./%<<CR>
autocmd FileType haskell    imap <F5> <ESC>:w<CR><ESC>:!./%<<CR>
autocmd FileType python     nmap <F5> <ESC>:w<CR><ESC>:!python3 %<CR>
autocmd FileType python     imap <F5> <ESC>:w<CR><ESC>:!python3 %<CR>
autocmd FileType perl       nmap <F5> <ESC>:w<CR><ESC>:!perl %<CR>
autocmd FileType perl       imap <F5> <ESC>:w<CR><ESC>:!perl %<CR>
autocmd FileType cpp 		nmap <F8> <ESC>:w<CR><ESC>:!g++ -DLOCAL -std=gnu++11 -Wshadow -g -O2 -Wall -Wno-unused-result -o '%:r' '%'<CR>
autocmd FileType cpp 		imap <F8> <ESC>:w<CR><ESC>:!g++ -DLOCAL -std=gnu++11 -Wshadow -g -O2 -Wall -Wno-unused-result -o '%:r' '%'<CR>
autocmd FileType tex      imap <F5> <ESC>:w<CR><ESC>:!pdflatex %<CR> 
autocmd FileType tex      nmap <F5> <ESC>:w<CR><ESC>:!pdflatex %<CR> 

autocmd Filetype python call SetJupyterKeyBindings()
autocmd Filetype python let g:python_highlight_all = 1
autocmd Filetype python Python3Syntax

"functions
"-----------------------------------------------------------------"
function KeepClipboardSuspend()
	call system("xsel -ib", getreg('+'))
	call feedkeys(':suspend' . "\<CR>")
endfunction 

nnoremap <C-z> :call KeepClipboardSuspend() <CR>

function GoToPreviousCell() 
	let line = line('.')
	?^\s*##\n
	:if line('.') > line
		call feedkeys(':' . line . "\<CR>")
	:endif
endfunction

function GoToNextCell()
	let line = line('.')
	/^\s*##\n
	:if line('.') < line
		call feedkeys(':' . line . "\<CR>")
	:endif
endfunction

function RunCellsBelow()
	let line = line('.')
	:JupyterSendCell
	:call GoToNextCell()
	:while line('.') != 1 && line('.') != line
		let line = line('.')
		try 
			:JupyterSendCell
			:call GoToNextCell()
		catch
			break
		endtry
	:endwhile
	call feedkeys(':' . line . "\<CR>")
endfunction

function RunCellsAbove()
	let line = line('.')
	:1	
	:call GoToNextCell()
	:while line('.') <= line && line('.') != 1
		try 
			":JupyterSendCell
			:call GoToNextCell()
		catch
			echo "Something went wrong"
			break
		endtry
	:endwhile
	call feedkeys(':' . line . "\<CR>")
endfunction

function SetJupyterKeyBindings()
	let g:jupyter_mapkeys = 0
	" Connect Jupyter
	nnoremap <buffer> <silent> <localleader>C :JupyterConnect<CR>
	" Run current file
	nnoremap <buffer> <silent> <localleader>R :JupyterRunFile<CR>
	nnoremap <buffer> <silent> <localleader>I :PythonImportThisFile<CR>

	" Change to directory of current file
	nnoremap <buffer> <silent> <localleader>d :JupyterCd %:p:h<CR>

	" Send a selection of lines
	nnoremap <buffer> <silent> <localleader>S :JupyterSendCell<CR>
	nnoremap <buffer> <silent> <localleader>a :JupyterSendRange<CR>
	nmap     <buffer> <silent> <localleader>e <Plug>JupyterRunTextObj
	vmap     <buffer> <silent> <localleader>e <Plug>JupyterRunVisual

	nnoremap <buffer> <silent> <localleader>U :JupyterUpdateShell<CR>

	" Debugging maps
	nnoremap <buffer> <silent> <localleader>b :PythonSetBreak<CR>
	nnoremap <buffer> <silent> <C-j> :call GoToNextCell()<CR>
	nnoremap <buffer> <silent> <C-k> :call GoToPreviousCell()<CR>
endfunction

