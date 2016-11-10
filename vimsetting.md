#正则表达式
===
##电话 
> ^((13[0-9]|(15[^4,\\D])|(18[0,0-9]))\\d{8}$
##邮箱 
> [A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}
##用户名
```grep
 ^[A-Za-z0-9]{6,20}+$
```

#创建本地SSH
  命令 ssh-keygen
  or
  ssh-keygen -t rsa -C "283925583@qq.com"
  vim ~/.ssh/id_rsa.pub to github/setting..

#连接远程git仓库
  git remote add origin https://github.com/ganyi0127/*.git
  git push -u origin master

#pathogen //插件管理
  host:https://github.com/tpope/vim-pathogen
  mkdir -p ~/.vim/autoload ~/.vim/bundle && \
  curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
  然后在~/.vimrc加入:
  execute pathogen#infect()

#vim-surround//智能包围
  host:https://github.com/tpope/vim-surround
  cd ~/.vim/bundle
  git clone git://github.com/tpope/vim-surround.git

#vim-repeat//自动重复插件
  host:https://github.com/tpope/vim-repeat
  cd ~/.vim/bundle
  git clone git://github.com/tpope/vim-repeat.git

#NERDTree//文件管理器
  host:https://github.com/scrooloose/nerdtree
  cd ~/.vim/bundle
  git clone https://github.com/scrooloose/nerdtree.git

#snipemate.vim//代码片段伴侣
  host:https://github.com/msanders/snipmate.vim
  cd ~/.vim/bundle
  git clone git://github.com/msanders/snipmate.vim.git

#syntastic//语法错误定位
  host:https://github.com/scrooloose/syntastic
  cd ~/.vim/bundle && \
  git clone https://github.com/scrooloose/syntastic.git

#vim-es6//ES6语法高亮及代码片段
  host:https://github.com/isRuslan/vim-es6
  cd ~/.vim/bundle
  git clone https://github.com/isRuslan/vim-es6.git

#jshint//Javascript语法检测
  host:https://github.com/walm/jshint.vim
  sudo npm install -g jshint
  cd ~/.vim/bundle
  git clone https://github.com/wookiehangover/jshint.vim
  vim ~/.jshintrc
    {
      "esnext":true
    }

#vim-nodejs-complete//Vim代码提示for Node.js
  git clone https://github.com/myhere/vim-nodejs-complete.git
  使用方法:在编辑js代码的时候，按ctrl-x和ctrl-o进入提示模式:

#配置Vim和Gvim
~/.vimrc
  execute pathogen#infect()
  syntax on
  filetype plugin indent on
  set ts=2
  set sw=2
  set expandtab
  set ruler 快速匹配
  set number
  map <C-t> :NERDTreeToggle<CR>
  set autoindent
  inoremap ( ()<Left>
  inoremap { {}<Left>
  inoremap [ []<Left>
  inoremap < <><Left>
  inoremap ' ''<Left>
  inoremap " ""<Left>

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

#
call pathogen#infect()
~/.gvimrc
  set lines=61
  set columns=159
  colo solarized
  set background=dark
  set guifont=Ubuntu\Mono\11
  NERDTreeToggle
