set nocompatible

call pathogen#infect()
call pathogen#helptags()

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

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/nerdcommenter'
Plugin 'preservim/nerdtree'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'pangloss/vim-javascript'
Bundle 'tpope/vim-ragtag'
Plugin 'hynek/vim-python-pep8-indent'
Plugin 'hashivim/vim-terraform'
Plugin 'mxw/vim-jsx'
Bundle 'terryma/vim-multiple-cursors'

call vundle#end()            " required

let mapleader=","
set nofoldenable  
syntax on
filetype plugin indent on
set expandtab
set number

let g:html_indent_inctags = "html,body,head,tbody"

autocmd FileType * setlocal shiftwidth=4 tabstop=4
autocmd FileType groovy setlocal shiftwidth=2 tabstop=2
autocmd FileType Vagrantfile setlocal shiftwidth=4 tabstop=4
autocmd FileType ruby setlocal expandtab shiftwidth=2 tabstop=2
autocmd FileType json setlocal expandtab shiftwidth=2 tabstop=2
autocmd FileType elm setlocal expandtab shiftwidth=2 tabstop=2

"" Syntax for templating engine languages
au BufNewFile,BufRead *.ejs set filetype=html
au BufNewFile,BufRead *.ts set filetype=javascript
au BufNewFile,BufRead *.tsx set filetype=javascript
au BufNewFile,BufRead *.json.tpl set filetype=json

set runtimepath^=~/.vim/bundle/node
"In ~/.vim/after/ftplugin/crontab.vim
autocmd filetype crontab setlocal nobackup nowritebackup

" auto complete for html 
" vim-javascript config
set regexpengine=1
let g:javascript_plugin_jsdoc = 1

"ragtag plugin mapping 
imap ,/ <C-X>/
"NERDTREE config
"Open Nerdtree onstart
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

"" Vim multiple cursor code –––––––––––––––––––––––––––––––––––––––
"set noerrorbells visualbell t_vb=
if has('autocmd')
        autocmd GUIEnter * set visualbell t_vb=
endif
let g:multi_cursor_next_key='<C-n>'
let g:multi_cursor_prev_key='<C-p>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<Esc>'
let g:multi_cursor_start_key='<F6>'
let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
let g:EditorConfig_exec_path = './.editorconfig'

function! FormatJSON()
    :%!python -m json.tool
endfunction

function! JsonToObj()
    :%s/"\(.*\)":/\1:/g
endfunction

function! ObjToJson()
    :%s/\(\w\+\):\s/"\1": /g
endfunction

let g:terraform_align=1
