Use [vundle](https://github.com/gmarik/vundle) to manage vim plugins

## Install

Mostly, you should move original vim's files and backup

```
mv ~/.vim ~/vim-bk
mv ~/.vimrc ~/vimrc-bk
```

1. Setup vundle

```
 $ git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
```

2. Setup and config my vimrc

```
curl -L https://raw.github.com/shatle/fori_vim3/master/vimrc > ~/.vimrc
```

3. Install My plugins

Lauch `vim`, and run `:BundleInstall`
