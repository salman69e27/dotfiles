"load plugins
runtime plugins.vim

"for ftplugin
filetype plugin on

"for GUI colors
set t_8f=[38;2;%lu;%lu;%lum
set t_8b=[48;2;%lu;%lu;%lum
set termguicolors

"delete -- Insert --
set noshowmode

"enable syntax
syntax on

"show line numbers
set nu
set rnu

"show file stats
set ruler

"wrap code
set wrap

"indentation settings
set autoindent          " use indent of previous line on new lines
set shiftwidth=4        " indent with four spaces
silent! set breakindent " indent wrapped lines

"display status line
set laststatus=2

"try to keep backups in one system-appropriate dir
set backup
set backupdir^=~/.config/nvim/cache/backup

"add completion options
if exists('+completeopt')
  set completeopt+=longest  " Insert longest common substring
  set completeopt+=menuone  " Show the menu even if only one match
endif

"try to keep swapfiles in one system-appropriate dir
set directory^=~/.config/nvim/cache/swap//

"give me a prompt instead of just rejecting risky :write, :saveas
set confirm

"use UTF-8 if we can and env LANG didn't tell us not to
if has('multi_byte') && !exists('$LANG') && &encoding ==# 'latin1'
  set encoding=utf-8
endif

"fold based on indent, but only when I ask
if has('folding')
  set foldlevelstart=99
  set foldmethod=indent
endif

"if available, use GNU grep niceties for searching
if system('grep --version') =~# '^grep (GNU grep)'
  set grepprg=grep\ -HnRs\ --exclude='.git*'
endif

"don't redraw the screen during batch execution
set lazyredraw

"highlight current line
set cursorline
 
"treat numbers with a leading zero as decimal, not octal
set nrformats-=octal

"sync vim clipboard with sys primary clipboard
set clipboard=unnamed,unnamedplus

"search as characters are entered
set incsearch

"highlight search matches
set hlsearch
nnoremap <C-c> :nohlsearch <CR>

"move real lines when line is wrapped
nnoremap j gj
nnoremap k gk

"set cursor to solid blink in normal mode and solid vertical bar in insert
let &t_SI = "\e[5 q" "insert mode (start insert)
let &t_EI = "\e[1 q" "normal mode (exit insert)

"set colorscheme
colorscheme srcery
set background=dark
"transparent background
hi Normal guibg=NONE ctermbg=NONE 

"wait before setting cocu for pandoc-syntax
au VimEnter * set cocu=""
