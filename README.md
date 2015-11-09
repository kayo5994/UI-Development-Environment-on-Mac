# UI-Development-Environment-on-Mac

UI 工程师在 Mac 下的开发环境搭建，其中 Android 和 iOS 有完整的官方 IDE，因此这里列出的大部分工具都是针对 Web UI 开发。

## 摘要

* 开发工具
* 环境依赖
* 辅助工具
* 来点别的？

## 开发工具

### iterm2

一款替代系统终端的工具，对各种操作都有优化，[这里](https://www.iterm2.com/)下载

### Vim 配置

Mac 自带已经有 Vim 了，所以这里只需按 Web 开发常用的习惯弄好配置即可。

* [.vimrc](https://github.com/kayo5994/UI-Development-Environment-on-Mac/blob/master/vim/.vimrc) 配置文件，放置到 ~/.vimrc
* [配色方案](https://github.com/kayo5994/UI-Development-Environment-on-Mac/blob/master/vim/molokai.vim)，放置到 ~/.vim/colors
* [插件管理器](https://github.com/kayo5994/UI-Development-Environment-on-Mac/blob/master/vim/pathogen.vim)，放置到 ~/.vim/autoload 

按以上配置设置好后，在 ~/.vim/bundle 中直接使用 git clone 对应的 repo 可以直接安装需要的插件。常用插件：

* [Emmet](https://github.com/mattn/emmet-vim) 代码补全，从前的 zen-coding
* [Powerline](https://github.com/powerline/powerline) 加强状态栏，可以在 Vim 状态栏中直接显示文件编码，语言类型等信息
* [vim-commentary](https://github.com/tpope/vim-commentary) 代码注释，可以用快捷键快速注释
* [NERD Tree](https://github.com/scrooloose/nerdtree) 文件管理插件
