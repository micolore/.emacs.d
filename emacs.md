

## 基本操作

| 类型               | 命令                                                         | 备注                         |
| ------------------ | ------------------------------------------------------------ | ---------------------------- |
| 基本移动操作       | C-v/alt+v                                                    | 翻屏                         |
| 内容编辑           | C-l                                                          | 光标居中                     |
| 移动操作           | C-p/C-n                                                      | 移动光标                     |
| 移动操作           | C-a 行首对应的是C-e<br />C-b下一个字符对应的是C-f<br />M-b下一个句子对应的是M-f<br />M-< / M-> 文章开始以及结束<br />M-a / M-e 段首以及段末<br />M-g g num 跳转指定行数 |                              |
| 基本操作           | C-x C-c<br />C-z 暂时离开                                    | 关闭emacs                    |
| 内容编辑之保存操作 | C-x C-s 保存<br />                                           |                              |
| 内容编辑之选择操作 | C-x h 全选内容<br />C-x C-x 改变选取的方向<br />             |                              |
| 内容编辑之复制操作 | C-w /M-w 剪下与复制内容<br />C-y 复制选择的内容<br />        |                              |
| 内容编辑之删除操作 | C-d 删除后一个字<br />M-d 删除后一个词<br />M-del删除前一个词 |                              |
| 内容编辑之撤回操作 | C-/<br />C-x u 撤销少量                                      | 撤回                         |
| 文件操作           | C-x C-f                                                      | 打开文件                     |
| buffer操作         | C-x k<br />C-x b swich<br />C-x C-b list                     | 关闭当前buffer               |
| window操作         | C-x 0                                                        | 关闭当前window               |
| 查询操作           | C-s前<br />C-r反                                             | 当前查询swipper增强          |
| window操作         | C-x 2 水平分割， 光标没有自动跟过去<br />C-x 3 垂直分割<br />C-x 1 close other window<br />C-x 0 close<br />C-x o change<br />C-x 5 2 open window | 插件的解决方案有，ace-window |
| 命令操作           | C-g                                                          | 停止                         |
| 取消操作           | esc                                                          |                              |
| 指令操作           | M-x                                                          | 键入你想做的指令             |
| 重复指令           | C-u 【number】[comand or word]<br />M-u 【number】[comand or word]<br /> |                              |
| 基本操作           | C-x                                                          |                              |
| 文件夹             | C-x d open文件夹                                             |                              |
| 帮助操作           | C-h ？<br />C-h c cammand<br />C-h k key的定义 <br />C-h f func<br />C-h f func<br />C-h w此函数的快捷键<br /> |                              |
| 其他操作           | C-x C-t 两行对调<br />M-t 对调两个单字<br />M-^ 并入上一行<br />M-;行末加注释<br />M-c 大写第一个字母，M-i 小写第一个字母 |                              |



## 插件

| 名称、功能       | 内容                                                         | 备注                     |
| ---------------- | ------------------------------------------------------------ | ------------------------ |
| 插件包管理       |                                                              | melpa                    |
| 文件夹、buffer   |                                                              |                          |
| magit            |                                                              |                          |
| git-gutter       | 标记版本控制的diff                                           |                          |
| org-mode         | org-mode,全能的笔记工具                                      |                          |
| swipper、ivy     | a generic completion frontend for Emacs,<br />Swiper - isearch with an overview, and more. Oh, man!<br />Swiper is an alternative to isearch that uses ivy to show an overview of all matches. |                          |
| helm             | 自动完成,在其上有插件完成具体功能                            |                          |
| ido              | 同上，可以同时使用                                           | 跳转                     |
| ripgrep          |                                                              |                          |
| fzf              |                                                              |                          |
| which key        |                                                              |                          |
| Ace              |                                                              | 窗口                     |
| avy              |                                                              | 字表符号跳转，line、word |
| counsel          |                                                              |                          |
| rime             |                                                              |                          |
| use-package      |                                                              |                          |
| window-numbering | 跳转到不同的子窗口                                           | 窗口切换                 |
| swich-window     |                                                              | 窗口切换                 |
| windmove         |                                                              |                          |
| snippet          |                                                              |                          |
| All-the-icons    |                                                              |                          |
| Projectile       |                                                              |                          |
| yasnippet        | 强大的文本模板输入工具<br />A template system for Emacs      |                          |
| smex             | 让输入命令变得飞快<br />A smart M-x enhancement for Emacs    |                          |
| dired            |                                                              |                          |
| Tabbar           |                                                              | Tabbar Ruler Mode        |
| evil             | 将 Emacs变为Vim                                              |                          |
| evil-leader      | 配置leader键                                                 |                          |
| company-mode     | 自动完成输入,支持各种语言和后端                              |                          |
| auto-complete    | 同上                                                         |                          |
| flymake          | 对不同语言做语法检查                                         |                          |
| flycheck         | 同上                                                         |                          |
| expand-region    | 快捷键选中文本,可将选择区域伸缩                              |                          |
| 5⃣️                | 网络浏览器                                                   |                          |



## 细节

| 类型      | 命令                                                         | 备注                |
| --------- | ------------------------------------------------------------ | ------------------- |
| mode line | %%、--、**、%*                                               |                     |
| mode-c    | c-mode，就是cammad模式，关闭就是C+c，C+a                     |                     |
| mode-perl | perl-mode                                                    |                     |
| open      | emacs -nw                                                    | 命令行启动，不是gui |
| 注释      | ;; ;                                                         | 单与双不一样        |
| 按键      | ret                                                          | enter键             |
| 按键      | m（eta）对应的是词或者句子、s（uper）、S（hift）、C（trl）对应的是字 |                     |
| 配置文件  | emacs -nw ~/.emacs.d/init.el                                 | m+x load-file       |

## tips

* iterm与meta冲突

  Iterm2 meta ，不知道 LZ 说的是不是 iTerm2，iTerm2 的话在 "Preferences" -> "Profiles" -> "your Profile" -> "Keys" -> 界面的右下角有关于 left/right option key 的映射配置，改成 +Esc 就可以了

* 映射，有点类似vim的

   ```
  (global-set-key (kbd "C-x C-f") 'helm-find-files)
  ```

* 滚动条要关闭

* 删除空行 饥饿删除

* 相对行号，好像对emacs来说不是很重要

* 重启之后，回到之前的文件

  ```lisp
  (require 'session)
  (add-hook 'after-init-hook 'session-initialize)
  (desktop-save-mode t)
  ```

* 默认命令行打开而不是gui

  ```sheel
  alias emacs='emacs -nw'
  ~/.bashrc  
  /etc/profile
  ~/.zshrc
  同时可以设置emacs =ma、em，但是要注意配置文件，我用的iterm，所以配置zsh就可以。
  alias emacs='emacs -nw'
  ```

* 键盘映射

  error: Key sequence <f2> i starts with non-prefix key <f2>? #1044

  https://github.com/abo-abo/swiper/issues/1044

  感觉像是冲突了，其实并不是。

* 加载theme

* 配置文件还是需要进行分开

* ido

  Ido-mode o/c

* read-expression-map这个还不知道是做什么的

* 注释

     ```lisp
  (global-set-key (kbd "C-c C-k") 'comment-line)
  (global-set-key (kbd "C-;") 'comment-line)
     ```

* 启动，自动打开上次的文件

## 问题

* dashboard 如何进行选择
* ivy 如何进行模糊匹配，现在好像都是全匹配的

## 资料

* emacs教程

  [**http://book.emacs-china.org/#orgheadline2**](http://book.emacs-china.org/#orgheadline2)

  https://cestlaz.github.io/stories/emacs/ ***推荐

  http://ergoemacs.org/emacs/emacs_ido_mode.html ***** ****推荐

* emacs配置golang

  https://www.cnblogs.com/lienhua34/p/5839510.html golang

* emacs more plug and setting

  https://www.zhihu.com/question/21943533. All

* https://melpa.org/#/getting-started

* [https://github.com/emacs-helm/helm](https://github.com/emacs-helm/helm/wiki#install)

* https://github.com/abo-abo/swiper

* https://github.com/nlamirault/ripgrep.el

* https://github.com/abo-abo/ace-window

* https://github.com/domtronn/all-the-icons.el

* https://github.com/mattfidler/tabbar-ruler.el

* Emacs theme

  https://emacsthemes.com/themes

* https://github.com/emacs-dashboard/emacs-dashboard

* https://oremacs.com/swiper/

* other config

  https://github.com/purcell/emacs.d/blob/master/init.el

  https://jamiecollinson.com/blog/my-emacs-config/#

  https://github.com/Qquanwei/emacs

  https://github.com/redguardtoo/emacs.d

  https://www.zybuluo.com/qqiseeu/note/17692 ****

  https://tecosaur.github.io/emacs-config/config.html *
  
  https://github.com/DiegoVicen/my-emacs
  
  https://ladicle.com/post/config/#
  
* https://www.gnu.org/philosophy/free-sw.zh-cn.html 四大自由

* https://blog.csdn.net/redguardtoo/article/details/7222501 一年成功emacs高手

* https://en.wikipedia.org/wiki/Getting_Things_Done gtd

* https://sachachua.com/blog/2012/07/transcript-emacs-chat-john-wiegley/
* https://www.cnblogs.com/Open_Source/archive/2011/07/17/2108747.html org-mode教程
* https://docs.huihoo.com/homepage/shredderyin/emacs.html 王垠
* http://gitqwerty777.github.io/Emacs-tips/ Emacs 常用指令表
* https://www.gnu.org/software/emacs/manual/html_node/elisp/Window-Sizes.html window size
* https://www.gnu.org/software/emacs/manual/html_node/elisp/Buffers-and-Windows.html buf and window
* https://github.com/jwiegley/use-package use package
* https://emacs-china.org/t/ivy/12091 ivy新手教程
* http://aquamacs.org/ mac上的其他emacs 
