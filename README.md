# UI-Development-Environment-on-Mac

UI 工程师在 Mac 下的开发环境搭建，其中 Android 和 iOS 有完整的官方 IDE，因此这里列出的大部分工具都是针对 Web UI 开发。

## 摘要

* 开发工具
* 环境依赖
* 辅助工具
* 其他


## 开发工具

### iTerm2

一款替代系统终端的工具，对各种操作都有优化，[这里](https://www.iterm2.com/)下载

iTerm2 在 2016/02/21 推出了 Version3 Beta 版本，添加了不少新功能，例如整合了一系列 Shell 增强功能，session 恢复（在 iTerm2 升级、强退后继续执行原有的任务，与 tmux 类似），命令行看图，密码管理等。

其中命令行看图需要依赖 imgcat 脚本，这个脚本并没有被集成到 iTerm2 中，这里尝试了几种不同的安装方案，比较推荐使用 npm 安装：

```
npm install -g imgcat
```

密码管理器功能也相当实用，利用了系统的“钥匙串访问”功能储存账号密码信息。密码管理器的开启利用了 iTerm2 的 Triggers 功能，Triggers 本身是一个很方便的功能，设置了特定的关键词后，当 iTerm2 界面内出现这些关键词时可以发起一个操作。因此我们可以检查到如果屏幕内有密码相关关键词时，就调起密码管理器即可。
![image](https://github.com/kayo5994/UI-Development-Environment-on-Mac/blob/master/iterm2/password.png)

详细的新版本的下载和功能介绍可以浏览器[这里](https://www.iterm2.com/version3.html)，另外附上一个中文翻译的[新特性介绍](https://segmentfault.com/a/1190000004464392)。

### Zsh + Oh My Zsh

Mac 自带 Zsh，相比默认的 shell Bash，Zsh 实在强大得多，唯一的缺点就是配置相当复杂，但 Oh My Zsh 解决了这个问题，Oh My Zsh 本质是一个管理 Zsh 配置的框架，基本上直接安装了 Oh My Zsh，无需额外的配置，就可以马上上手 Zsh。

Zsh 兼容 Bash，因此从 Bash 迁移到 Zsh 几乎没有成本，如果原本有 alias 在 ~/.bashrc 中，只需直接复制到 ~/.zshrc 中即可。但 Zsh 相比 Bash 有很多很方便的功能：

* 强大的历史记录功能，例如在命令行中输入 d，然后回车，会列出最近访问过的目录列表，直接输入对应的序号即可跳转到该目录。输入 grep 然后用键盘上下键即可翻阅执行过的所有 grep 命令
* 智能拼写纠正，例如输入命令时敲错了命令的一些字母，或者没注意大小写，Zsh 都可以自动纠正
* 各种补全，路径补全和命令补全这些 Bash 也有，但 Zsh 可以做到命令参数补全，插件内容补全，触发补全只需按 Tab 键即可，补全结果还可以使用 Ctrl + n/p/f/b 上下左右切换
* 预设的 alias，Oh My Zsh 不多但很实用，包括 .. 和 ... 这些常用的 alias，git 的别名设置等。
* 很多方便的小细节，例如自动显示 git repository 所在的 branch，高亮当前文件夹名称（当然具体的高亮方案 Oh My Zsh 提供了几十种主题可以让你选择）等

安装和使用 Oh My Zsh 可以参考[这里](https://github.com/robbyrussell/oh-my-zsh)。

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
* [ctrlp.vim](https://github.com/ctrlpvim/ctrlp.vim) 快速打开项目内的文件，类似 Sublime Text 的 Cmd + P 功能，可以模糊查询定位如工程下的所有文件，打开的 buffer，buffer 内的 tag，最近访问的文件等几乎所有你想定位的内容。

### Sublime Text

Sublime Text 3 [安装地址](http://www.sublimetext.com/3)

安装 Package Control

```
import urllib.request,os; pf = 'Package Control.sublime-package'; ipp = sublime.installed_packages_path(); urllib.request.install_opener( urllib.request.build_opener( urllib.request.ProxyHandler()) ); open(os.path.join(ipp, pf), 'wb').write(urllib.request.urlopen( 'http://sublime.wbond.net/' + pf.replace(' ','%20')).read())
```

安装 Package Control 后可以利用 Package Control 安装插件，使用 Shift + Command + P 打开 Package Control，然后输入“Install Package”，然后安装 Emmet，CSS Format 等常用插件。

这里再推荐一个 Material 风格的主题 Material Theme，在 "Install Package" 中搜索主题名即可找到。安装主题后重启 Sublime，如果主题没有生效，可以手动在 Preference -> Settings - User 中手动启用主题：

```js
{
  "theme": "Material-Theme.sublime-theme",
  "color_scheme": "Packages/Material Theme/schemes/Material-Theme.tmTheme"
}
```

最后还可以加上一些常用配置：

```js
{
  "word_wrap": true, // 自动换行
  "font_size": 14 // 字号
}
```

### 浏览器们
* [Chrome](www.google.cn/intl/zh-CN/chrome)
* [Firefox](www.firefox.com.cn) 
* [Opera](www.opera.com/zh-cn) 
* Safari，系统自带
* IE，要不虚拟机，要不另外弄一台 Windows 机器，不然呢？

### Xcode
并没有什么好说的，App Store 安装。

对 UI 工程师来说，可以使用 Reveal 这款 App，它是一款可以在模拟器和真机上直接查看 View 层级结构和调试 View 的 App，还可以直接修改 UI 相关的属性值（颜色，距离）无需刷新马上生效。[官网](http://revealapp.com/)

### Android Studio
废弃 Eclipse，Android Studio 真的强大得多，[下载地址](https://developer.android.com/sdk/index.html)。

当然还需要 [JDK](http://www.oracle.com/technetwork/cn/java/javase/downloads/jdk8-downloads-2133151-zhs.html)。

### Sketch
界面开发必备

### PhotoShop
好像没啥好说的

## 环境依赖

* Homebrew [官网](http://brew.sh/)，一款 OS X 的包管理工具，可以很方便地升级 Ruby，Python 等 Mac 自带的工具，以及安装新的工具，只需一句安装命令，Homebrew 会处理好编译以及安装路径等问题。**新机器强烈建议使用 Homebrew 升级了自身的 Ruby，Python 等环境再安装下面的依赖**
* Sass `sudo gem install sass`，由于国内的网络问题，建议使用淘宝的 Ruby Gem 源替换官方源，可以点击[这里](https://ruby.taobao.org/)。
* Compass `sudo gem install compass` 
* Node.js [官网](https://nodejs.org/en/)
* gulp `sudo npm install -g gulp`
* Fontmin `npm install -g fontmin`，压缩字体的工具
* 字蛛 `npm install font-spider -g`，[官网介绍](http://font-spider.org/)
* git 系统自带，并不需要安装，但是需要配置，请参考[这里](https://github.com/chenzhiwei/linux/tree/master/git)

## 辅助工具

### Snip

截屏软件，功能简单实用，建议到[官网](http://snip.qq.com/)下载而不使用 App Store 的版本，因为官网的版本可以有滚动截屏的功能。

关于滚动截屏功能，这里有个坑，直接在 Snip 中开启“启动滚动截屏”并不会生效，需要在系统偏好设置 -> 安全性与隐私 -> 隐私 -> 辅助功能 中勾选 Snip 才可以（勾选之前需要点击设置界面左下角的解锁按钮）。

### 马克鳗
高效的设计稿标注、测量工具，用来标记设计稿倍儿棒，Mac 和 Windows 都支持，但设计稿格式目前只支持 PSD（需用最大兼容保存）、PNG、BMP、JPG格式，看上去没有打算支持 Sketch，详细介绍可以浏览[官网](http://www.getmarkman.com/)。

### Wunderlist

非常好用的 TODO App，支持的平台非常广泛，[官网](https://www.wunderlist.com/zh/)。

### Evernote

笔记类工具，支持的平台也是很广泛，功能强大，可以很方便地记录内容，甚至还有直接搜索图片中的文字的功能。

### Dash

一款开发文档集合应用，安装常用文档后可以直接离线搜索，搜索时可以同时搜索出 Google 和 StackOverflow 的相关结果。

### Charles

Mac 下唯一“能用”的抓包工具，类似 Windows 下的 Fiddler，进阶功能可以参考[《Fiddler与Charles的特殊用途 》](http://www.cnblogs.com/cos2004/archive/2013/04/17/3024171.html)

### The Unarchiver 

可以压缩和解压 rar 格式的文件，Mac 原生没有 rar 的支持，[下载](http://wakaba.c3.cx/s/apps/unarchiver)。

### CleanMyMac

清理系统、卸载软件，查看系统资源消耗等功能。

## 其他

* 触发角 在 Mac 中可以把鼠标/触控板移向屏幕的四个角落时可以触发一个操作，包括“将显示器置入睡眠状态”这个功能，配合“睡眠后需要输入密码唤醒”，可以在匆忙离开座位时滑一下鼠标就关屏，很方便。
* Mac 常用快捷键可以参考[这里](https://github.com/kayo5994/UI-Development-Environment-on-Mac/blob/master/mac/Mac_Shortcuts.jpg)，列举了绝大部分常用的快捷键。
* 壁纸 [10wallpaper.com](http://10wallpaper.com/cn/)
* 关于使用 Mac 的技巧可以看[这里](http://www.zhihu.com/question/20873070)
