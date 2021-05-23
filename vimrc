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
set statusline=%F%m%r%h%w%=(%{&ff}/%Y)\ (line\ %l\/%L,\ col\ %c,\ per\ %p)

" ale
let g:ale_linters = {'python': ['flake8', 'mypy']}
let g:ale_fixers = {'python': ['isort', 'black']}
let g:ale_lint_on_text_changed = 'normal'
let g:ale_lint_on_insert_leave = 1
let g:ale_fix_on_save = 1

" -------------for vim-latex
" REQUIRED. This makes vim invoke Latex-Suite when you open a tex file.
filetype plugin on

" IMPORTANT: win32 users will need to have 'shellslash' set so that latex
" can be called correctly.
set shellslash

" OPTIONAL: This enables automatic indentation as you type.
filetype indent on

" OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
" 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" The following changes the default filetype back to 'tex':
let g:tex_flavor='latex'

" Compile in pdf not dvi
let g:Tex_DefaultTargetFormat='pdf'
let g:Tex_CompileRule_pdf='pdflatex --interaction=nonstopmode $*'
" -------------for vim-latex
