" A L T   G O D T   T I L   A T   K Ø R E   V I M






"~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
" F R O S T S   G E N E R E L L E   K O N F I G U R A T I O N E R


set nocompatible		"Bruger VIM istedet for VI
set ruler			"Markørens position
"set showcmd			"Færdiggør kommandoer - kan påvirke <F5>
set backspace=indent,eol,start	"Brug backspacing

if has('mouse')			"Brug musen
  set mouse=a
endif 

colorscheme evening		"Farve-layout, der er alternativer
set incsearch			"Incremental search - søg med /
"set autoindent			"Samme indent som aktuel linje
"set smartindent			"VIM gætter indent

let mapleader = ","




"~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

"	T e X - r e l e v a n t e   k o n f i g u r a t i o n e r
"	

" REQUIRED

filetype plugin on				"VIM invokes Latex-Suite
set shellslash					"Calls latex correctly
set grepprg=grep\ -nH\ $*			"Always generates a file-name
"filetype indent on				"Automatic indentation
let g:tex_flavor='latex'			"Default filetype back to 'tex
let g:Tex_DefaultTargetFormat='pdf'		"Oversætter direkte til .pdf


" ANDET

let g:Tex_Env_align = "\\begin{align} \label{<++>}\<CR><++>\<CR>\\end{align}"
let g:Tex_Env_theorem = "\\begin{theorem} \label{<++>}\<CR><++>\<CR>\\end{theorem}"
let g:Tex_Env_enumerate = "\\begin{enumerate}[(1)]\<CR>\\item <++>\<CR>\\end{enumerate}"



" COMPILING
"" All out commented
"let LaTeXmaster = '"'.expand('%').'"'
"nmap <F8> :let LaTeXmaster = '"'.expand('%').'"'<CR>
"imap <F8> <ESC><F8>a
"nmap <F12> :execute 'w \|! pdflatex '.expand(LaTeXmaster)<CR>
"imap <F12> <ESC><F12>a
"nmap <F3> :! pdflatex<CR>

















