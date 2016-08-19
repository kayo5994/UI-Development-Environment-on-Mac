filetype off "关闭文件类型检测
call pathogen#infect() "pathogen 插件管理
filetype plugin indent on "on打开文件类型检测, plugin允许使用插件, intent允许缩进不同文件不一致

"变量定义
let g:molokai_original=1 "修改molokai配色模式

set nocompatible "关闭vi兼容模式
set guifont=Microsoft\ Yahei\ Mono:h12:cGB2312 "设置字体
set number "设置行号
set expandtab "输入的tab自动展开成空格
set tabstop=2 "设置tab字符占据多少个空格
set shiftwidth=2 "每层缩进的空格数
set smartindent "智能缩进
set ruler "显示当前行号列号
set backspace=indent,eol,start "设置退格键可删除的类型：indent删除缩进, eol删除开头合并两行, start删除此次插入之前的内容

set cursorline "高亮显示当前行
"set cursorcolumn "高亮显示当前列
set showcmd "在状态栏显示输入的命令

set noerrorbells "关闭错误信息响铃
set novisualbell "关闭使用可视响铃代替呼叫
set vb t_vb= "设置可视铃声为空

set hlsearch "搜索时高亮显示找到的本
set incsearch "搜索输入时显示搜索结果
set ignorecase "搜索忽略大小写

set autochdir "自动切换当前目录为当前件所在的目录
"set list "显示不可见字符
"set listchars=trail:-,nbsp:.

syntax on "启用语法高亮
syntax enable
colorscheme molokai "配色方案

"快捷键映射
"inoremap ( ()<LEFT>
  "输入(时相当于输入(), 并且让光标左移一格
"inoremap [ []<LEFT>
"inoremap { {}<LEFT>
"inoremap ' ''<LEFT>
"inoremap " ""<LEFT>

" 禁止方向键 i是指插入模式下
" inoremap <Up> <Nop>
" inoremap <Down> <Nop>
" inoremap <Left> <Nop>
" inoremap <Right> <Nop>
" noremap <Up> <Nop>
" noremap <Down> <Nop>
" noremap <Left> <Nop>
" noremap <Right> <Nop>

set guioptions-=T "隐藏工具栏
set guioptions-=m "隐藏菜单栏

set laststatus=2            " 显示状态栏 (默认值为 1, 无法显示状态栏)
set statusline=\ %<%F[%1*%M%*%n%R%H]%=\ %y\ %0(%{&fileformat}\ %{&encoding}\ %c:%l/%L%)\ 
  "设置在状态行显示的信息

set shortmess=alI "不显示启动信息

"set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
"set fileencoding=utf-8
"set encoding=utf-8

"ctrlp 配置
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows

let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }
  
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
