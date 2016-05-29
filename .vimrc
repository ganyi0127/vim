execute pathogen#infect()
syntax on
filetype plugin indent on
set ts=2
set sw=2
set expandtab
//快速匹配
set ruler
set number
map <C-t> :NERDTreeToggle<CR>
set autoindent
map <C-s> :w<CR>
imap <C-s> <Esc>:w<CR>a
inoremap ( ()<Left>
inoremap { {}<Left>
inoremap [ []<Left>
inoremap ' ''<Left>
inoremap " ""<Left>
