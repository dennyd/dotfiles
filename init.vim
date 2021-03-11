" === PLUGINS
"
call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'dracula/vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'mileszs/ack.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'SirVer/ultisnips'
"Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()


""""""""""""""""""""""
"      Settings      "
""""""""""""""""""""""
"
colorscheme delek 		" my own
set shiftwidth=4
set relativenumber
set ruler 			" display cursore @bottom right position
set mouse=a 			" inables mouse inc. scrolling
"
set nocompatible                " Enables us Vim specific features
filetype off                    " Reset filetype detection first ...
filetype plugin indent on       " ... and enable filetype detection
set ttyfast                     " Indicate fast terminal conn for faster redraw
"
set laststatus=2                " Show status line always
set encoding=utf-8              " Set default encoding to UTF-8
set autoread                    " Automatically read changed files
set autoindent                  " Enabile Autoindent
"set backspace=indent,eol,start  " Makes backspace key more powerful.
set incsearch                   " Shows the match while typing
set hlsearch                    " Highlight found searches
set noerrorbells                " No beeps
set number                      " Show line numbers
set showcmd                     " Show me what I'm typing
set noswapfile                  " Don't use swapfile
set nobackup                    " Don't create annoying backup files
set splitright                  " Vertical windows should be split to right
set splitbelow                  " Horizontal windows should split to bottom
"set autowrite                   " Automatically save before :next, :make etc.
"set hidden                      " Buffer should still exist if window is closed
"set fileformats=unix,dos,mac    " Prefer Unix over Windows over OS 9 formats
set noshowmatch                 " Do not show matching brackets by flickering
"set noshowmode                  " We show the mode with airline or lightline
set ignorecase                  " Search case insensitive...
set smartcase                   " ... but not it begins with upper case
set completeopt=menu,menuone    " Show popup menu, even if there is one entry
set pumheight=10                " Completion window max size
set nocursorcolumn              " Do not highlight column (speeds up highlighting)
set nocursorline                " Do not highlight cursor (speeds up highlighting)
set lazyredraw                  " Wait to redraw


" Does not work in Terminal.app
"set background=light
"set t_Co=256
"set termguicolors " 


" Enable to copy to clipboard for operations like yank, delete, change and put
" http://stackoverflow.com/questions/20186975/vim-mac-how-to-copy-to-clipboard-without-pbcopy
"if has('unnamedplus')
  "set clipboard^=unnamed
  "set clipboard^=unnamedplus
"endif


" This enables us to undo files even if you exit Vim.
if has('persistent_undo')
  set undofile
  set undodir=~/.config/vim/tmp/undo//
endif



"""""""""""""""""""""
"      Plugins      "
"""""""""""""""""""""
"
let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI = 1
let g:NERDTreeIgnore = []
let NERDTreeWinSize=20
" Automaticaly close nvim if only NERDTree is open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Ag
" make ack not to go to the first result by default
cnoreabbrev Ack Ack!

" ag to replays ack
if executable('ag')
  let g:ackprg = 'ag --vimgrep -U --ignore="*.css" --ignore="*-lock.json" --ignore="*.html" --ignore="node_modules" '
endif

" GOLANG
"let g:go_highlight_functions = 1
autocmd BufNewFile,BufRead *.go setlocal noexpandtab tabstop=4 shiftwidth=4 
"let g:go_metalinter_autosave = 1

" vim-go
let g:go_fmt_command = "goimports"
let g:go_autodetect_gopath = 1
let g:go_list_type = "quickfix"

let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_generate_tags = 1





" === KEY BINDING
"
nmap <F7> :NERDTreeToggle<CR>
nnoremap <c-p> :FZF<cr>
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-s': 'split',
  \ 'ctrl-v': 'vsplit'
  \}
let $FZF_DEFAULT_COMMAND = 'ag -g ""'



" === STYLE
"
:hi TabLineFill ctermfg=Black ctermbg=DarkGreen
:hi TabLine ctermfg=Gray ctermbg=Black
:hi TabLineSel ctermfg=Red ctermbg=Black
:hi Title ctermfg=Gray ctermbg=Black
":hi StatusLine ctermbg=DarkCyan "ctermfg=DarkBlue
" Split line
":set fillchars+=vert:| 
:set fillchars+=vert:│

":hi LineNr ctermbg=Red
:hi VertSplit ctermbg=Blue ctermfg=Black

