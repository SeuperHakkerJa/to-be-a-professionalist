" UI Settings
filetype on               " Detect different file types.
set mat=2                 " Show matching brackets
set nocompatible        	" Use only vim features
set number              	" Displays line numbers
set showcmd             	" Show the cmd being typed in the left hand corner
set ruler               	" Show line number and character under cursor
set wildmenu            	" Show a menu for commands with <TAB> completion
if exists( "+colorcolumn" )
    set colorcolumn=80      " set a colorcolumn if possible
else
    :2mat ErrorMsg '\%81v.' " highlight if chars over 80
endif
syntax on			        " Enable syntax highlighting
" Search settings
set ignorecase              " case insensitive matching
set incsearch               " Search as you type
set hlsearch                " Highlight searched items

" Indentation Settings
filetype plugin indent on   " Load indentation plugins based on filetype
set autoindent              " Copy indent level of previous line

" Set Indentation to 2 spaces for java files
" shiftwidth indicates how deep each indent level is for '>>' and '<<' ops
" softtabstop indicates the number of spaces each tab counts for in insert mode
" expandtab converts all tabs to spaces
autocmd FileType java set shiftwidth=2 softtabstop=2 expandtab

" Helper Functions
" Press F4 in insert mode to add a file header ( move to the first line )
function! FileHeading()
    let s:line=line(".")
    call setline(s:line,   "/**")
    call append (s:line,   " * Username:        " $USER )
    call append (s:line+1, " * Date:            " .strftime("%b %d %Y"))
    call append (s:line+2, " * Filename:        " .expand("%"))
    call append (s:line+3, " * Description:     ")
    call append (s:line+4, " * Sources of help: ")
    call append (s:line+5, " **/")
    unlet s:line
endfunction

" key remappings
imap <F4> <ESC>mz:execute FileHeading()<CR>`z4jA
" j and k don't skip wrapped lines
nnoremap j gj
nnoremap k gk
" vim:ts=4:sts=4:sw=4
