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
set nowritebackup
"禁用临时文件swp
setlocal noswapfile
"禁用错误提示音
set noeb
"目录树插件快捷键
map<C-t> :NERDTreeToggle<CR>
"插件管理
call pathogen#infect()
filetype plugin indent on

"header of shell 
autocmd BufNewFile *.sh :call SetTitle()
func SetTitle()
  if &filetype == 'sh'
    call setline(1,"\#!/bin/sh")
    call setline(2,"\##########################################################")
    call setline(3,"\#Creat time: ".strftime("%Y-%m-%d %H:%M:%S"))
    call setline(4,"\#Last edited: ")
    call setline(5,"\#Author: ganyi")
    call setline(6,"\#Mail: 283925583@qq.com")
    call setline(7,"\#Description:")
    call setline(8,"\##########################################################")
  endif
endfunc
