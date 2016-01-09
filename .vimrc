execute pathogen#infect()
colorscheme zellner
set nocompatible
syntax on
set autoindent
set shiftwidth=2
filetype plugin indent on
"let g:tmuxcomplete#trigger = 'completefunc'
runtime ftplugin/man.vim
nnoremap K :Man <cword>
nnoremap <F5> :buffers<CR>:buffer<Space>
"autocmd FileType java setlocal omnifunc=javacomplete#Complete
"nmap <F4> <Plug>(JavaComplete-Imports-Add)
"imap <F4> <Plug>(JavaComplete-Imports-Add)
