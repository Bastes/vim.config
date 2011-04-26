" pathogen (plugins go in their own bundle)
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

" quick command for FuzzyFinder FufFile in any directory below the project's
nnoremap <C-t> :<C-u>FufFile **/<CR>