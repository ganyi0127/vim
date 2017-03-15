"语法高亮
syntax on
"禁用图形按钮
set go=
"自动锁进
set autoindent
"自动读取最新修改
set autoread
"显示中文帮助
if version>=603
  set helplang=cn
  set encoding=utf-8
endif
"c自动缩进
set smartindent
set softtabstop=2
"tab宽度
set tabstop=2
"缩进宽度
set shiftwidth=2
set expandtab
"显示状态栏标尺
set ruler
"显示行号
set number
"禁用备份
set nobackup

"禁用临时文件swp
set nowritebackup
"禁用错误提示音
setlocal noswapfile
"目录树插件快捷键
set noeb
"插件管理
map<C-t> :NERDTreeToggle<CR>

call pathogen#infect()
filetype plugin indent on

"header of shell 
autocmd BufNewFile *.sh,*.html :call SetTitle()
func SetTitle()
  if &filetype == 'sh'
    call setline(1,"\#!/bin/sh")
    call setline(2,"\####CopyRight#############################################")
    call setline(3,"\#file name: ".expand("%"))
    call setline(4,"\#author: ganyi")
    call setline(5,"\#create time: ".strftime("%Y-%m-%d %H:%M:%S"))
    call setline(6,"\#mail: 283925583@qq.com")
    call setline(7,"\#description:")
    call setline(8,"\##########################################################")
    call setline(9,"")
    call setline(10,"\#---Define------------------------------------------------")
    call setline(11,"")
    call setline(12,"\#---Variable----------------------------------------------")
    call setline(13,"")
    call setline(14,"\#---Array-------------------------------------------------")
    call setline(15,"")
    call setline(16,"\#---Function----------------------------------------------")
    call setline(17,"")
    call setline(18,"\#---Main--------------------------------------------------")
  elseif &filetype == 'html'
    call setline(1,"\<!DOCTYPE HTML>")
    call setline(2,"\<html lang='en'>")
    call setline(3,"\  <head>")
    call setline(4,"\    <meta charset='UTF-8'>")
    call setline(5,"\    <title></title>")
    call setline(6,"\  </head>")
    call setline(7,"\  <body>")
    call setline(8,"\    ")
    call setline(9,"\  </body>")
    call setline(10,"\</html>")
  endif
endfunc
