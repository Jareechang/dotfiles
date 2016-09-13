call pathogen#infect()
call pathogen#helptags()

syntax on 
if !has("gui_running")
        let g:solarized_termtrans=1
        let g:solarized_termcolors=256
endif

colorscheme solarized 
set background=dark


" Custom mapping for moving lines
noremap <C-j> :m .+1<CR>==
nnoremap <C-k> :m .-2<CR>==
inoremap <C-j> <Esc>:m .+1<CR>==gi
inoremap <C-k> <Esc>:m .-2<CR>==gi
vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gv

let mapleader=","
set nofoldenable  
set nocompatible

let g:html_indent_inctags = "html,body,head,tbody"

autocmd FileType * setlocal shiftwidth=4 tabstop=4

" Syntax for templating engine languages
au BufNewFile,BufRead *.ejs set filetype=html

syntax on
filetype plugin indent on
set expandtab
set number
set runtimepath^=~/.vim/bundle/node
""In ~/.vim/after/ftplugin/crontab.vim
autocmd filetype crontab setlocal nobackup nowritebackup

" auto complete for html 
" vim-javascript config
set regexpengine=1
syntax enable

"ragtag plugin mapping 
imap ,/ <C-X>/
" NERDTREE config
" Open Nerdtree onstart
"autocmd vimenter * NERDTree
" map NERDTREE cmd to Ctrl + n 
map <C-m> :NERDTreeToggle<CR>
" close nerdtree on exiting vim
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
" If you prefer the Omni-Completion tip window to close when a selection is
" " made, these lines close it on movement in insert mode or when leaving
" " insert mode
autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif

" Vim multiple cursor code –––––––––––––––––––––––––––––––––––––––
set noerrorbells visualbell t_vb=
if has('autocmd')
        autocmd GUIEnter * set visualbell t_vb=
endif
"let g:multi_cursor_next_key='<C-n>'
"let g:multi_cursor_prev_key='<C-p>'
"let g:multi_cursor_skip_key='<C-x>'
"let g:multi_cursor_quit_key='<Esc>'
"let g:multi_cursor_start_key='<F6>'
let g:ycm_global_ycm_extra_conf = 'path to .ycm_extra_conf.py'
