set nobackup

" like <leader>w saves the current file
"let mapleader = ","
"let g:mapleader = ","
"
" Fast saving
nmap <leader>w :w!<cr>
" Fast quiting
nmap <leader>q :q!<cr>

map <tab> <C-w>w
"
" Fast editing of the .vimrc
map <leader>e :e! ~/.vimrc<cr>

"for NERDTree
map <F7> :NERDTreeToggle<CR>
imap <F7> <ESC>:NERDTreeToggle<CR>

set termencoding=utf-8

set encoding=utf-8

"设置文件编码
if has("win32") 
     set fileencoding=chinese 
else 
     set fileencoding=utf-8 
endif 
"设置文件编码检测类型及格式支持
set fencs=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936

"解决菜单乱码
language messages zh_CN.utf-8 

"设置VimInfo文件

set tabstop=4
set shiftwidth=4
set softtabstop=0


"配色方案
colors kevin

"行号
set number

"标尺
set ruler

"for TagList
let Tlist_Use_Right_Window=1
let Tlist_File_Fold_Auto_Close=1

map <F6> :TlistToggle<CR>
imap <F6> <ESC>:TlistToggle<CR>

"for autoclose
"let g:AutoClosePairs = {'(': ')', '{': '}', '[': ']', '"': '"', "'": "'", '<':'>'}
let g:AutoClosePairs = {'(': ')', '{': '}', '[': ']', '"': '"', '<':'>'}

"for BufExplorer
map <F8> :BufExplorerHorizontalSplit<CR>
imap <F8> <ESC>:BufExplorerHorizontalSplit<CR>

"for Voom
map <F5> :Voom<CR>
imap <F5> <ESC>:Voom<CR>

"for javacomplete
setlocal completefunc=javacomplete#CompleteParamsInfo
autocmd FileType c set omnifunc=ccomplete#Complete
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType java set omnifunc=javacomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags

"for TxtBrowser
syntax on
filetype plugin on
au BufEnter *.txt setlocal ft=txt

"for project
let loaded_project = 1

"for NERD Commenter
let NERD_java_alt_style=1

set shellslash

set grepprg=grep\ -nH\ $*

filetype indent on

let g:tex_flavor='latex'


