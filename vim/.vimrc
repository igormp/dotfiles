set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Plugins
Plugin 'tpope/vim-fugitive'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'w0rp/ale'
Plugin 'scrooloose/nerdtree'
Plugin 'fatih/vim-go'
" Plugin 'sjl/badwolf'
" Plugin 'kaicataldo/material.vim'
Plugin 'hzchirs/vim-material'
Plugin 'vim-airline/vim-airline'
Plugin 'wakatime/vim-wakatime'
"Plugin 'mkitt/tabline.vim'
Plugin 'psf/black'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
"Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"NERDTree toggle
map <C-t> :NERDTreeToggle<CR>

"Syntax highlight
syntax on

set ruler
set number

" Status bar
set laststatus=2

" Search mappings: These will make it so that going to the next one in a
" search will center on the line it's found in.
nnoremap n nzzzv
nnoremap N Nzzzv

if exists("*fugitive#statusline")
  set statusline+=%{fugitive#statusline()}
endif

"*****************************************************************************
"" Abbreviations
"*****************************************************************************
"" no one is really happy until you have this shortcuts
cnoreabbrev W! w!
cnoreabbrev Q! q!
cnoreabbrev Qall! qall!
cnoreabbrev Wq wq
cnoreabbrev Wa wa
cnoreabbrev wQ wq
cnoreabbrev WQ wq
cnoreabbrev W w
cnoreabbrev Q q
cnoreabbrev Qall qall

"*****************************************************************************
"" Mappings
"*****************************************************************************

set tabstop=4       " number of visual spaces per TAB
set softtabstop=4   " number of spaces in tab when editing

set showcmd             " show last command in bottom bar

set cursorline          " highlight current line

set wildmenu            " visual autocomplete for command menu

set showmatch           " highlight matching [{()}]

set incsearch           " search as characters are entered
set hlsearch            " highlight matches

" turn off search highlight
nnoremap <leader><space> :nohlsearch<CR> " <\>+<space>

" splits position
set splitbelow
set splitright

"colorscheme badwolf
set background=dark
colorscheme vim-material
"let g:material_theme_style = 'dark'
let g:material_terminal_italics = 1

if (has("termguicolors"))
  set termguicolors
endif


" Make the gutters darker than the background.
"let g:badwolf_darkgutter = 1

set mouse=a

" Airline statusline sections
"let g:airline_section_a       "(mode, crypt, paste, spell, iminsert)
"let g:airline_section_b       "(hunks, branch)[*]
"let g:airline_section_c       "(bufferline or filename)
"let g:airline_section_gutter  "(readonly, csv)
"let g:airline_section_x       "(tagbar, filetype, virtualenv)
"let g:airline_section_y       "(fileencoding, fileformat)
"let g:airline_section_z       "(percentage, line number, column number)
let g:airline_section_error=0   "(ycm_error_count, syntastic-err, eclim)
let g:airline_section_warning=0 "(ycm_warning_count, syntastic-warn, whitespace)
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme = 'material'

" Ignore vim-go warnings
let g:go_version_warning = 0
