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
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()



" === PLUGIN SETTINGS
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


" go
let g:go_def_mapping_enabled = 0 " use coc instead

let g:go_def_mode='gopls'
let g:go_info_mode='gopls'


"let g:go_highlight_functions = 1
autocmd BufNewFile,BufRead *.go setlocal noexpandtab tabstop=4 shiftwidth=4 
let g:go_metalinter_command = "golangci-lint"
let g:go_metalinter_autosave = 1
"let g:go_metalinter_autosave_enabled = ['vet', 'errcheck']

let g:go_metalinter_autosave_enabled = [ 'vet',  'errcheck', 'gocritic', 'gosimple', 'deadcode', 'ineffassign']

let g:go_metalinter_enabled = ['misspell', 'gomnd', 'vet',  'errcheck', 'gocritic', 'gosimple', 'deadcode', 'ineffassign', 'staticcheck', 'structcheck', 'typecheck', 'unused', 'varcheck', 'asciicheck', 'bodyclose', 'contextcheck', 'durationcheck', 'exhaustive', 'exportloopref', 'gosec', 'misspell' ]



let g:go_list_type = 'quickfix'


let g:go_jump_to_error = 0


" COC
set shortmess+=c
" GoTo code navigation.
"
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <silent> rn <Plug>(coc-rename)






" === VIM SETTINGS
"
set noswapfile

set number
set relativenumber
set ruler " display cursore @bottom rgiht
set mouse=a " inables mouse inc. scrolling

" tabs
set shiftwidth=4
set tabstop=4 softtabstop=4
set expandtab
set smartindent

set scrolloff=8

set ic " case insensative search
"set background=light
colorscheme delek
"set t_Co=256
"set termguicolors " 
let mapleader=" "



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

