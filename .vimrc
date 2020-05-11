
"
" Kevin's Vim configurations (May 2020)
"


" *******************************************************************
"   General configurations
" *******************************************************************


" Use VIM instead of VI
set nocompatible


"
" Colour layout --- default is the same as terminal
"
"colorscheme 



" Enable syntax processing
syntax enable


"
" Spaces and tabs
"
" tabstop: number of spaces a tab counts for
set tabstop=4
" softtabstop: number of spaces a tab counts for when editing
set softtabstop=4
" expandtab: turns tab into spaces (useful for Python)
set expandtab
" These lines are old --- remove in time!
"set shiftwidth=4
"set autoindent				"copies indentation from previous line
set smartindent				"Can produce more indentation in next line      


"
" User interface
"
"Position of cursor
set ruler
" Show line numbers to the left
set number
" Horisontal line at cursor position
set cursorline
" Show last command in bottom right corner
set showcmd
" Filetype detection --- and indentation (could be useful for Python)
filetype indent on	
" wildmenu: Visual autocomplete in command menu (try :tabnew and <tab>)
set wildmenu
" Highlight matching brackets 
set showmatch

" Configure Backspacing works as usual
set backspace=indent,eol,start	



"
" Enable folding --- there are many possible specifications here
" Virker ikke helt
set foldenable
" Method of folding
set foldmethod=marker
" Level of foldings when opening file
set foldlevel=0 


"
" Seaching
"
" Search as you type (incremental search) 
set incsearch
" Highlight search results
set hlsearch
" Turn off search highlight (map :noh to <leader><space>) --- virker ikke!
"nnoremap <leader><space> :noh<CR>
" Ignore cases
set ignorecase
" Be smart --- not sure?
set smartcase


" Map leader
let mapleader = ","

" Enable mouse
if has('mouse')	
  set mouse=a
endif 

" Fast saving
nmap <space>w :w!<CR>


" Consider Gundo Toggle --- In VIM, undo is a tree, and this visualises it



" Nice when learning Vim
nnoremap <Left> :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up> :echoe "Use k"<CR>
nnoremap <Down> :echoe "Use j"<CR>


" Parantheses --- move cursor inside
inoremap () ()<esc>i
inoremap [] []<esc>i
inoremap {} {}<esc>i
inoremap "" ""<esc>i
inoremap <> <><esc>i


" On Sound --- apply if useful
"set noerrorbells
"set novisualbell
"set t_vb=
"set tm=500


" *******************************************************************
"	T e X - c o n f i g u r a t i o n s 
" *******************************************************************	


" REQUIRED. This makes vim invoke Latex-Suite when you open a tex file.
filetype plugin on


" IMPORTANT: win32 users will need to have 'shellslash' set so that latex can be called correctly.
set shellslash


" OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
" 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" The following changes the default filetype back to 'tex':
let g:tex_flavor='latex'

"Always generates a file-name
set grepprg=grep\ -nH\ $*


"Default filetype back to 'tex
let g:tex_flavor='latex'


"Compile directly to .pdf (pdflatex)
let g:Tex_DefaultTargetFormat='pdf'
let g:Tex_MultipleCompileFormats='pdf'		"Compiles multiple times



"
" Environments
"
let g:Tex_Env_align = "\\begin{align} \label{<++>}\<CR><++>\<CR>\\end{align}"
let g:Tex_Env_theorem = "\\begin{theorem} \label{<++>}\<CR><++>\<CR>\\end{theorem}"
let g:Tex_Env_proposition = "\\begin{proposition} \label{<++>}\<CR><++>\<CR>\\end{proposition}"
let g:Tex_Env_lemma = "\\begin{lemma} \label{<++>}\<CR><++>\<CR>\\end{lemma}"

let g:Tex_Env_enumerate = "\\begin{enumerate}[<++>]\<CR>\\item <++>\<CR>\\end{enumerate}"
let g:Tex_Env_itemize = "\\begin{itemize}[<++>]\<CR>\\item <++>\<CR>\\end{itemize}"

let g:Tex_Env_equation = "\\begin{equation} \label{<++>}\<CR><++>\<CR>\\end{equation}"
			

