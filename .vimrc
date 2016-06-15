"自动缩进，自动继承前一行的缩进方式
set autoindent
"语法高亮
syntax on
"自动检测文件类型并加载相应的设置
filetype plugin indent on
"智能对齐方式
set smartindent
set tabstop=2
"统一缩进为2
set softtabstop=2
set shiftwidth=2
set expandtab
"快速匹配
set ruler
set number
"缺省不产生备份文件
set nobackup
set nowritebackup
setlocal noswapfile
map<C-t> :NERDTreeToggle<CR>
call pathogen#infect()
