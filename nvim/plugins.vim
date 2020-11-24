call plug#begin()
"pandoc
Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-syntax'
"taskwarrior and vim wiki
Plug 'tools-life/taskwiki'
"tag navigation
Plug 'preservim/tagbar'
"note taking
Plug 'vimwiki/vimwiki', { 'branch' : 'dev' }
"markdown preview
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
"calednar
Plug 'itchyny/calendar.vim'
"python goodness
Plug 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop' }
"splash screen
Plug 'mhinz/vim-startify'
"markdown preview
Plug 'skanehira/preview-markdown.vim'
"manage conda environments
Plug 'cjrh/vim-conda'
"file explorer
Plug 'preservim/nerdtree'
"autocompletion
Plug 'Valloric/YouCompleteMe'
"status line
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
"color highlight
Plug 'chrisbra/Colorizer'
"indentation line
Plug 'Yggdroot/indentLine'
"commenter
Plug 'preservim/nerdcommenter'
"IPy
Plug 'greghor/vim-pyShell'
" Jupyter-Vim integration
Plug 'jupyter-vim/jupyter-vim'
"Cells
Plug 'julienr/vim-cellmode'
Plug 'benmills/vimux'
"Align
Plug 'godlygeek/tabular'
" Themes
Plug 'cormacrelf/vim-colors-github'
Plug 'relastle/bluewery.vim'
Plug 'arcticicestudio/nord-vim'
Plug 'victorze/foo'
Plug 'bluz71/vim-nightfly-guicolors'
Plug 'doums/darcula'
Plug 'sainnhe/forest-night'
Plug 'nightsense/nemo'
Plug 'morhetz/gruvbox'
Plug 'lisposter/vim-blackboard'
Plug 'pgavlin/pulumi.vim'
Plug 'cocopon/iceberg.vim'
Plug 'salman69e27/moonlight.vim'
Plug 'rakr/vim-one'
Plug 'gryf/wombat256grf'
Plug 'romainl/Apprentice'
Plug 'jpo/vim-railscasts-theme'
Plug 'eemed/sitruuna.vim'
Plug 'Marfisc/vorange'
Plug 'srcery-colors/srcery-vim'
call plug#end()
