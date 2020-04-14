" === PLUGINS
"
call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'dracula/vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'mileszs/ack.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
let g:coc_global_extensions = ['coc-html', 'coc-json', 'coc-prettier']
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

"COC
"
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)




" === VIM SETTINGS
"
set noswapfile
set number
set relativenumber
set ruler " display cursore @bottom rgiht
set mouse=a " inables mouse inc. scrolling
set shiftwidth=4
set ic " case insensative search
"set background=light
colorscheme delek
"set t_Co=256
"set termguicolors " 
set updatetime=300
"set signcolumn=yes




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
inoremap <silent><expr> <c-space> coc#refresh()

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
" 
:hi SignColumn ctermbg=Black
