call plug#begin('~/.vim/plugged')
"  Plugings
Plug 'dense-analysis/ale'
Plug 'tpope/vim-fugitive'
Plug 'lervag/vimtex'
Plug 'sirver/ultisnips'
call plug#end()

" enable syntax highlighting
syntax enable

" set tabs to have 4 spaces
set ts=4

" indent when moving to the next line while writing code
set autoindent

" when using the >> or << commands, shift lines by 4 spaces
set shiftwidth=4

" show a visual line under the cursor's current line
set cursorline

" show line number
set number

" show the matching part of the pair for [] {} and ()
set showmatch

" dictionaries
autocmd BufEnter *.tex set spell
autocmd BufEnter *.tex set spelllang=es,en

" highlight searches:
set hlsearch
set incsearch

" enable all Python syntax highlighting features
let python_highlight_all = 1

" Folding
set foldenable
set foldmethod=manual

" Status line
set wildmenu
set laststatus=2
set statusline=%t%m%r%h%w%=(%{&ff}/%Y)\ (line\ %l\/%L,\ col\ %c,\ per\ %p)

" ale
let g:ale_linters = {'python': ['flake8', 'mypy']}
let g:ale_fixers = {'python': ['isort', 'black']}
let g:ale_lint_on_text_changed = 'normal'
let g:ale_lint_on_insert_leave = 1
let g:ale_fix_on_save = 1

" vim-latex
let g:tex_flavor='latex'
let g:tex_conceal='abdmg'

" Snippets
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'
