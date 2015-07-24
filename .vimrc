"""""+========================================+
"""""| autor: Luis Alonso Calle Núñez         |
"""""| email: luis.alonso.cn at gmail dat com |
"""""| twitter: _AlonsoCN                     |
"""""+========================================+

"+=======================+
"| General Configuration |
"+=======================+
" Alt-arrow Navigation
nmap <silent> <A-Up> :wincmd k<CR>
nmap <silent> <A-Down> :wincmd j<CR>
nmap <silent> <A-Left> :wincmd h<CR>
nmap <silent> <A-Right> :wincmd l<CR>

set nocompatible " disable vi compatibility"
set history=700 " Number of things to remember in history
set hlsearch " highlight search"
set smartcase " be sensitive when there's a capital letter
set gdefault
set incsearch
set ignorecase " Do case in sensitive matching with
set hid " A buffer becomes hidden when it is abandoned

set nobackup
set nowb
set noswapfile

set encoding=utf-8
set fileencoding=utf-8

"set list
"set listchars=tab:▸\,eol:¬  " Unprintable chars mapping
set cursorline
"set cc=80


"+==========================+
"| Formatting Configuration |
"+==========================+
set fo+=o " Automatically insert the current comment leader after hitting 'o' or 'O' in Normal mode.
set fo-=r " Do not automatically insert a comment leader after an enter
set fo-=t " Do no auto-wrap text using textwidth (does not apply to comments)

set nowrap
set textwidth=0   " Don't wrap lines by default
set wildmode=longest,list " At command line, complete longest common string, then list alternatives.

set regexpengine=1 " Necessary to vim-javascript plugin
syntax enable
set background=light
"let g:solarized_termcolors=256
colorscheme solarized

filetype plugin indent on  " Automatically detect file types.


"+======================+
"| Visual Configuration |
"+======================+
set relativenumber  " Line numbers off
set showmatch  " Show matching brackets.
set matchtime=5  " Bracket blinking.
set novisualbell  " No blinking
set noerrorbells  " No noise.
set laststatus=2  " Always show status line.
set vb t_vb= " disable any beeps or flashes on error
set ruler  " Show ruler
set showcmd " Display an incomplete command in the lower right corner of the Vim window
set shortmess=atI " Shortens messages

"set list " Display unprintable characters f12 - switches
"set listchars=tab:▸\,eol:¬,extends:»,precedes:« " Unprintable chars mapping

set foldenable " Turn on folding
set foldmethod=marker " Fold on the marker
set foldlevel=100 " Don't autofold anything (but I can still fold manually)
set foldopen=block,hor,mark,percent,quickfix,tag " what movements open folds

"set mouse-=a   " Disable mouse
"set mousehide  " Hide mouse after chars typed

set splitbelow
set splitright

colo elflord

"+======================+
"| Vundle Configuration |
"+======================+

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

Plugin 'gmarik/Vundle.vim' " let Vundle manage Vundle, required
Plugin 'xolox/vim-misc'
Plugin 'tpope/vim-fugitive' " Git wrapper so awesome
Plugin 'airblade/vim-gitgutter' " A vim plugin which show a git diff in the gutter (sign colum) and stages/reverts hunks
Plugin 'tpope/vim-markdown' " Vim Markdown runtime files
Plugin 'tpope/vim-sleuth' " Heuristically set buffer options
Plugin 'tpope/vim-surround' " Plugin to quoating/parenthesizing made simple
Plugin 'scrooloose/nerdtree' " A tree explorer plugin for vim
Plugin 'scrooloose/nerdcommenter' " Vim plugin for intensely orgasmic commenting
Plugin 'scrooloose/syntastic' " Syntax checking hacks for vim
Plugin 'kien/ctrlp.vim' " Fuzzy file, buffer, mru, tag, etc finder
Plugin 'Valloric/YouCompleteMe' " Autocomplete
Plugin 'bling/vim-airline' " Lean & mean status/tabline for vim that's light as air
Plugin 'Raimondi/delimitMate' " Vim plugin, provide insert mode auto-complete for quotes, parents, brackets, etc
Plugin 'ervandew/supertab' " Perform all your vim insert mode completions with Tab
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'MattesGroeger/vim-bookmarks'
Plugin 'altercation/vim-colors-solarized'

"Plugins to HTML5
Plugin 'othree/html5.vim'
Plugin 'mattn/emmet-vim'
"Plugins to Python
Plugin 'Glench/Vim-Jinja2-Syntax'
"Plugins to Lua
Plugin 'xolox/vim-lua-inspect'
"Plugins to ValaL
Plugin 'tkztmk/vim-vala'
"Plugins to Javascript
Plugin 'pangloss/vim-javascript'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'othree/javascript-libraries-syntax.vim'

"Plugin 'fholgado/minibufexpl.vim' " Elegant buffer explorer - takes very little screen space
"Plugin 'jmcantrell/vim-virtualenv' " Work with python virtualenvs in vim
"Plugin 'majutsushi/tagbar' " Vim plugin that display tags in a window, ordered by scope
"Plugin 'kshenoy/vim-signature' " Plugin to toggle, display and navigate marks
"Plugin 'nathanaelkane/vim-indent-guides' " A vim plugin for visually displaying indent levels in code

" A code-completion engine for Vim
"Plugin 'SirVer/ultisnips' " UltiSnips - The ultimate snippet solution for Vim
"Plugin 'shawncplus/phpcomplete.vim' " Improved PHP omnicompletion

" All of your Plugins must be added before the following line
call vundle#end()		" required
filetype plugin indent on 	" required

" To ignore plugin indent changes, insted use:
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


"+========================+
"| Plugin: NERDTree |
"+========================+
map <C-n> :NERDTreeToggle<CR> " Mapping a specific key to open NERDTree (Control + N)
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif " Close vim if the only window left open is a NERDTree


"+=====================+
"| Plugin: CtrlP |
"+=====================+
" Chage the default mapping and the default command to invoke CtrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

let g:ctrlp_working_path_mode = 'ra'


"+===========================+
"| Plugin Setup: vim-airline |
"+===========================+
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'


"+======================+
"| Setup Tagbar Plugin  |
"+======================+
"nmap <F8> :TagbarToggle<CR>


"+===================+
"| Setup UltSnippets |
"+===================+
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<C-Z>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-B>"
" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"


"+=========================+
"| Setup vim-indent-guides |
"+=========================+
"let g:indent_guides_enable_on_vim_startup = 1
"let g:indent_guides_start_level = 2
"let g:indent_guides_color_change_percent = 30
"let g:indent_guides_guide_size = 1
"let g:indent_guides_exclude_filetypes = ['help', 'nerdtree']


"+===========================+
"| Setup minibuffer-explorer |
"+===========================+
"map <Leader>mbe :MBEOpen<cr>
"map <Leader>mbc :MBEClose<cr>
"map <Leader>mbt :MBEToggle<cr>

"noremap <C-TAB>   :MBEbn<CR>
"noremap <C-S-TAB> :MBEbp<CR>

"+============================+
"| Enhanced Javascript Syntax |
"+============================+
"au FileType javascript call JavaScriptFold()

"+============================+
"| Enhanced Javascript Syntax |
"+============================+
let g:used_javascript_libs = 'jquery'

"+=================+
"| Solarized Theme |
"+=================+
"let g:solarized_termtrans = 1
"let g:solarized_degrade = 1

"+============
"| Misc Setup |
"+============+
nnoremap <silent> <C-i> : nohl<CR><C-i> "<Ctrl-l> redraws the screen and remove any search highlighting

" Test
set noexpandtab " Make sure that every file uses real tabs, not spaces
set shiftround  " Round indent to multiple of 'shiftwidth'
set smartindent " Do smart indenting when starting a new line
set autoindent  " Copy indent from current line, over to the new line

" Set the tab width
let s:tabwidth=4
exec 'set tabstop='    .s:tabwidth
exec 'set shiftwidth=' .s:tabwidth
exec 'set softtabstop='.s:tabwidth

" Testing deleting trailing automaticaly
autocmd BufWritePre *.py :%s/\s\+$//e
autocmd BufWritePre *.php :%s/\s\+$//e

" Configuration YouCompleteMe
let g:ycm_global_ycm_extra_conf = '/home/alonso/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
