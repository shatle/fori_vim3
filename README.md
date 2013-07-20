Use [vundle](https://github.com/gmarik/vundle) to manage vim plugins

## Install

Mostly, you should move original vim's files and backup

```
mv ~/.vim ~/vim-bk
mv ~/.vimrc ~/vimrc-bk
```

1. Setup vundle

        $ git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

2. Setup and config my vimrc

        curl -L https://raw.github.com/shatle/fori_vim3/master/vimrc > ~/.vimrc

3. Install My plugins

Lauch `vim`, and run `:BundleInstall`

## (G)Vim Skills --(Chinese)

### 基本操作

#### 光标移动

```
h	左移

j	下移

k 	上移

l 	右移

0	移到行首

$	移到行尾

nG	移到第n行

fa	从光标向行尾找的第一个‘a’的位置，并移动到那里。`f`代表find的意思

Fa	从光标向行首找的第一个‘a’的位置，并移动到那里。`F`与`f`相反

Ctrl+u	向上移半屏

Ctrl+d	向下移半屏

Ctrl+f	向下移一屏

Ctrl+b	向上移一屏

```

#### 复制、粘贴、删除、恢复

```
nyy	复制n行，从当前行开始；没有n，只复制当前行

p 	将粘贴板的内容复制到当前行以下

x 	删除当前字符

dd 	删除当前行

ndd	删除从当前行开始共n行

u	返回前一操作

U	返回当前行的修改

```

对开全局的粘贴板，需要安装gvim。才能使用`"+y`

#### 查找、替换

```
# 以 "word" 代表要找的词

/word	从前往后找“word”

?word	从后往前找“word”

n	下一个"word"

N	上一个"word"

:s/old/new/ 	把当前行的第一个“old”替换为"new"

:s/old/new/g 	把当前行所有的“old”替换为"new"

:%s/old/new/g 	把所有行的所有的“old”替换为"new"

:5,10s/old/new/ 	指定第5行到第10行进行查找并替换

```

查找的高亮需要在`~/.vimrc`进行`set hlsearch`的配置，取消高亮用`:noh`

查找替换中的/word/支持正则。如，^表示首，$表示尾，\s表示空格。

#### 输入

```
i	在当前光标下输入

I	在当前行首输入

A	在当前行尾输入

o	在当前行后新建一行输入

O	在当前行前新建一行输入
```

### 多行选择并输入

    :10,20 normal I__ # _ 代表输入空格，而不是输入‘_’

代表从10行到20行，在其前面都插入两个空格

    :10,20 normal Ahello 

代表从10行到20行，在每行后面都插入"hello"字符

### 自动将 tab 转为两个空格

在配置文件中`~/.vimrc`进行以下设置：

    set tabstop=2 
    set shiftwidth=2 
    set expandtab

或者在命令行中

    :retab

### tab 操作

#### 新建 tab 页

    :tabedit {file} 

或者

    :tabe {file}


#### 切换tab

`gt`来回切换

`1gt`,`2gt` 指定跳到tab页，从1开始

#### 关闭tab页

    :tabclose {i} 

没有`i`参数，关闭当前页；有的话，关闭指定页
