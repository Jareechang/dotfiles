# Dotfiles
My dot configurations...
```
for(;;) {
    vi .
}
```


## Getting started

1. Install `vundle`, see instructions at [Vundle.vim](https://github.com/VundleVim/Vundle.vim)
2. Install Plugins, by running `:PluginInstall` within vim
3. Fix `YouCompleteMe` issue with python 3.6+, install macvim (`brew install macvim`)
   - Also `cd ~/.vim/bundle/YouCompleteMe/ && python3 ./install.py --ts-completer --go-completer --java-completer`
   - See [macOS instructions](https://github.com/ycm-core/YouCompleteMe#macos) for more info
4. Update theme with [vim-color-solarized](https://github.com/altercation/vim-colors-solarized)
   - clone repo then `cp vim-color-solarized/colors/solarized.vim ~/.vim/colors/solarized.vim`  
