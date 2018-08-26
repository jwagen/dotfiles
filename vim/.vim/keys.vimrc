"""""""""""""""""""""""""""""""
"" Key bindings
"""""""""""""""""""""""""""""""
" Save
noremap <c-s> :w<CR>

" Window movement
noremap <c-h> <c-w>h
noremap <c-l> <c-w>l
noremap <c-j> <c-w>j
noremap <c-k> <c-w>k

" Quickfix window
noremap <leader>qn :cnext<CR>
noremap <leader>qN :cprevious<CR>
noremap <leader>qq :cclose<CR>

"""""""""""""""""""""""""""""""""""""""""
"" Plugin settings
"""""""""""""""""""""""""""""""""""""""""

" Vim grep operator 
set grepprg=grep\ -rnI\ $*
nmap <leader>f <Plug>GrepOperatorOnCurrentDirectory
vmap <leader>f <Plug>GrepOperatorOnCurrentDirectory
nmap <leader><leader>f <Plug>GrepOperatorWithFilenamePrompt
vmap <leader><leader>f <Plug>GrepOperatorWithFilenamePrompt

" YCM config
noremap <leader>gg :YcmCompleter GoTo<CR>
