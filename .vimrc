" pathogen (plugins go in their own bundle)
filetype off
call pathogen#helptags()
call pathogen#runtime_append_all_bundles()

" allows plugin indentation, file recognition, mouse in terminal, etc.
set nocompatible
syntax on
filetype plugin indent on
set mouse=a
runtime! macros/matchit.vim
augroup myfiletypes
  autocmd!
  autocmd FileType ruby,eruby,yaml set ai sw=2 sts=2 et
augroup END

" a colorscheme that's easier on the eyes especially using gvim
colorscheme desert

" quick command for Ack
nnoremap <C-F> :<C-u>Ack 

" quick command for FuzzyFinder FufFile in any directory below the project's
nnoremap <C-t> :<C-u>FufFile **/<CR>

" show trailing spaces
set listchars=trail:◃,nbsp:•
set list
set lcs:trail:X

" highlight searched matches
set hlsearch

" indent coffeescript with 2 spaces
au BufNewFile,BufReadPost *.coffee setl shiftwidth=2 expandtab
au BufNewFile,BufReadPost *.js setl shiftwidth=2 expandtab

" folds using the syntax specifics
set foldmethod=syntax
set foldlevelstart=99
