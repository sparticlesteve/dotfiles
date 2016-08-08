"Syntax highlighting
syntax on

"Search pattern highlighting
set hlsearch

"Statusline options
set ruler

"Autoindent preserves the same indenting as the last line
set autoindent

"Allow quick toggle of paste mode, so autoindent doesn't fuck it up
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
set showmode

"Expanded tabs are spaces for indents, not a true tab
set expandtab

"Modeline option, enable file specific settings
set modeline

"File-type based indentation
filetype plugin indent on

" Doxygen syntax highlighting
"let g:load_doxygen_syntax=1
"let g:DoxygenToolkit_commentType = "C++"
"let g:DoxygenToolkit_authorName="Steve Farrell <Steven.Farrell@cern.ch>"
"let g:DoxygenToolkit_briefTag_className = "yes"

"Shell script settings
autocmd FileType sh set shiftwidth=4
autocmd FileType sh set smarttab

"C++ settings
autocmd FileType cpp set shiftwidth=2

"Python settings
autocmd FileType python set shiftwidth=4
autocmd FileType python set smarttab

"Latex settings
autocmd FileType tex let @i='o\begin{itemize}^M\end{itemize}^[O  \item{'
autocmd FileType tex let @e='o\begin{equation}^M\end{equation}^[O  '

"Matlab settings
autocmd FileType matlab set shiftwidth=4
autocmd FileType matlab set smarttab

"Turn off automatic comment insertion
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

"Spell checking
set spellfile=~/.vim/spellfile.add
set spelllang=en_us
