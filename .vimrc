set runtimepath+=~/.vim_runtime

source ~/.vim_runtime/vimrcs/vundle-config.vim
source ~/.vim_runtime/vimrcs/basic.vim

try
source ~/.vim_runtime/vimrcs/plugins_config.vim
source ~/.vim_runtime/vimrcs/extended.vim
source ~/.vim_runtime/vimrcs/custom.vim
catch
endtry
