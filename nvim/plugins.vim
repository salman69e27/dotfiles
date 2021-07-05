call plug#begin()
"LSP
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-compe'
"C and CPP
"Plug 'octol/vim-cpp-enhanced-highlight'
"Plug 'bfrg/vim-cpp-modern'
"Arduino
"Plug 'stevearc/vim-arduino'
"Plug 'sudar/vim-arduino-syntax'
"tables
Plug 'dhruvasagar/vim-table-mode'
"coc
"Plug 'neoclide/coc.nvim', {'branch': 'release'}
""rust
"Plug 'rust-lang/rust.vim'
""async build and test
"Plug 'tpope/vim-dispatch'
""fuzzy finder
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
""session management
Plug 'tpope/vim-obsession'
""debugging
Plug 'puremourning/vimspector'
""snippets
"" Track the engine.
Plug 'SirVer/ultisnips'
"" Snippets are separated from the engine. Add this if you want them:
Plug 'honza/vim-snippets'
"pandoc
Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-syntax'
"taskwarrior
"Plug 'blindFS/vim-taskwarrior'
"taskwarrior and vim wiki
Plug 'tools-life/taskwiki'
"tag navigation
Plug 'preservim/tagbar'
"note taking
Plug 'michal-h21/vim-zettel'
Plug 'vimwiki/vimwiki', { 'branch' : 'dev' }
"markdown preview
"Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
"python highlight
"Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}
"splash screen
Plug 'mhinz/vim-startify'
"markdown preview
"Plug 'skanehira/preview-markdown.vim'
"manage conda environments
"Plug 'cjrh/vim-conda'
"file explorer
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
"autocompletion
"Plug 'Valloric/YouCompleteMe'
"status line
"Plug 'vim-airline/vim-airline'
"Plug 'vim-airline/vim-airline-themes'
Plug 'itchyny/lightline.vim'
"color highlight
Plug 'chrisbra/Colorizer'
"indentation line
"Plug 'Yggdroot/indentLine'
"commenter
Plug 'preservim/nerdcommenter'
"align
Plug 'godlygeek/tabular'
"colorschemes
Plug 'yantze/pt_black'
Plug 'plainfingers/black_is_the_color'
Plug 'ParamagicDev/vim-medic_chalk'
Plug 'haishanh/night-owl.vim'
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
Plug 'jcherven/jummidark.vim'
Plug 'rafalbromirski/vim-aurora'
call plug#end()
