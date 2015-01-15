" Syntastic doesn't like fish
set shell=/bin/sh

" pathogen (plugins go in their own bundle)
filetype off
call pathogen#infect()

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

" show trailing spaces
set listchars=trail:◃,nbsp:•
set list
set lcs:trail:X

" shows line numbers
set number

" highlight searched matches
set hlsearch

" indent with 2 spaces
au BufNewFile,BufReadPost *.fish   setl shiftwidth=2 tabstop=2 expandtab
au BufNewFile,BufReadPost *.coffee setl shiftwidth=2 tabstop=2 expandtab
au BufNewFile,BufReadPost *.sass   setl shiftwidth=2 tabstop=2 expandtab
au BufNewFile,BufReadPost *.scss   setl shiftwidth=2 tabstop=2 expandtab
au BufNewFile,BufReadPost *.js     setl shiftwidth=2 tabstop=2 expandtab
au BufNewFile,BufReadPost *.json   setl shiftwidth=2 tabstop=2 expandtab
au BufNewFile,BufReadPost *.html   setl shiftwidth=2 tabstop=2 expandtab
au BufNewFile,BufReadPost *.hbs    setl shiftwidth=2 tabstop=2 expandtab

au BufNewFile,BufRead     *.md     set  ft=md
au BufNewFile,BufReadPost *.md     setl shiftwidth=2 tabstop=2 expandtab

" folds using the syntax specifics
set foldmethod=syntax
set foldlevelstart=99

set wildignore=*/tmp/*,*/log/*,*/bin/*,*/.yardoc/*,*/coverage/*,*/vendor/bundle/*,*.rspec,*/public/uploads/*
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*.gitkeep
set wildignore+=*.exe,*.so,*.dat

" who needs Ex mode anyways?
nnoremap Q <nop>

" RSpec.vim mappings
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>
