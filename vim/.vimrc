" ------------
" dctr's vimrc
" ------------

" Syntax highlighting
if has('autocmd')
 filetype plugin indent on
endif
if has('syntax') && !exists('g:syntax_on')
 syntax enable
endif

set number " Show line numbers
set showmatch " Highlight matching brace

set hlsearch " Highlight all search results
set smartcase " Enable smart-case search
set ignorecase " Always case-insensitive
set incsearch " Searches for strings incrementally

set autoindent " Auto-indent new lines
set expandtab " Expand tabs to spaces
set shiftwidth=2 " Number of auto-indent spaces
set smartindent " Enable smart-indent
set smarttab " Enable smart-tabs
set softtabstop=2 " Number of spaces per Tab

set ruler " Show row and column ruler information

set undolevels=1000 " Number of undo levels
set backspace=indent,eol,start " Backspace behaviour

" Remember certain things when we exit
"  '10  :  marks will be remembered for up to 10 previously edited files
"  "100 :  will save up to 100 lines for each register
"  :20  :  up to 20 lines of command-line history will be remembered
"  %    :  saves and restores the buffer list
"  n... :  where to save the viminfo files
set viminfo='10,\"100,:20,%,n~/.viminfo

" Restore the cursor position from previous edit session
function! ResCur()
  if line("'\"") <= line("$")
    normal! g`"
    return 1
  endif
endfunction
augroup resCur
  autocmd!
  autocmd BufWinEnter * call ResCur()
augroup END
