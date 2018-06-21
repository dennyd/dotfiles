
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
Plugin 'ascenator/L9', {'name': 'newL9'}


" All of your Plugins must be added before the following line

"Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

Plugin 'scrooloose/nerdtree'
Plugin 'pangloss/vim-javascript'
"Plugin 'scrooloose/syntastic'
Plugin 'bling/vim-airline'
"Plugin 'itchyny/lightline.vim'
"Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'scrooloose/nerdcommenter'
Plugin 'majutsushi/tagbar'
Plugin 'honza/vim-snippets'

Plugin 'valloric/youcompleteme'

Plugin 'airblade/vim-gitgutter'
"Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'easymotion/vim-easymotion'
Plugin 'godlygeek/tabular'
" auto paranteses brackets etc
Plugin 'raimondi/delimitmate' 
Plugin 'vimwiki/vimwiki'

"set rtp+=~/.fzf
set rtp+=/usr/local/opt/fzf
Plugin 'junegunn/fzf.vim'
Plugin 'mileszs/ack.vim'

" linting
Plugin 'w0rp/ale' 
Plugin 'prettier/vim-prettier'


Plugin 'fatih/vim-go'


"Plugin 'altercation/vim-colors-solarized'

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



"syntatic options""""""""""""""""""""""""""""""""""""""
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0

"let g:syntastic_javascript_checkers = ['eslint']

"""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""" vim-js setup''''''
let g:javascript_plugin_jsdoc = 1

""""""""""""""""""""

""""""""CONTROL-P"""""""""
"ignore files
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'
""""""""""""""""'"""""""""

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
  endif
  let g:airline_symbols.space = "\ua0"


" airline options
"let g:airline_powerline_fonts = 1

let g:airline#extensions#tabline#enabled = 1
let g:airline_enable_fugitive=1
let g:airline_enable_syntastic=1
let g:airline_enable_bufferline=1
let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#tabline#show_tabs = 1
"let g:airline#extensions#tabline#show_tab_nr = 0
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#tabline#show_close_button = 0
let g:airline#extensions#tabline#show_splits = 0

  let g:airline#extensions#tabline#tab_nr_type = 2 " splits and tab number

let g:airline_theme='deus'
let g:airline_section_z=''
let g:airline_section_y=''

set laststatus=2
" let backspace delete 

"""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""  KEYBINDINGS
nmap <F8> :TagbarToggle<CR>
nmap <F7> :NERDTreeToggle<CR>
"""""""""""""""""""""""""""""

"let g:solarized_termcolors=256

set background=dark
"colorscheme solarized
"colorscheme default


set number
set relativenumber
syntax on
set ruler
set mouse=a
set autoread
set autoindent
set smartindent
"set cursorline
set background=dark

set backspace=indent,eol,start
"set whichwrap+=h,l
set hlsearch
set tabstop=4
set shiftwidth=4
set expandtab
set ic      " case insessitive search
set noswapfile
let g:ycm_server_keep_logfiles = 1
"let g:ycm_server_python_interpreter = '/usr/bin/python2.7'


set re=1
set timeoutlen=1000 ttimeoutlen=10


let g:python_host_prog = '/usr/local/bin/python'

" make ack not to go to the first result by default
cnoreabbrev Ack Ack!
" ag to replays ack
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

" ake fixers for js
let g:ale_fixers = {
\   'javascript': ['eslint'],
\}

" trying out omni
set omnifunc=syntaxcomplete#Complete
" vimwiki setup tags update
let g:vimwiki_list = [{'path': '~/vimwiki/', 'auto_tags': 1}]

" GOLANG
let g:go_metalinter_autosave = 1
let g:go_metalinter_autosave_enabled = ['vet', 'golint', 'errcheck']


" JS Prettier
let g:prettier#autoformat = 0
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue PrettierAsync

" remap ctrl-p to use fzf instead
nnoremap <c-p> :FZF<cr>

