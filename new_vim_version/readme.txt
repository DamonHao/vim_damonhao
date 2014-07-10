This vim version refer to:
https://github.com/itomsawyer/myvimrc
https://github.com/gmarik/Vundle.vim
Note：
1 The main config files are in path: ~/.vim_runtime/vimrcs;
2 The Vundle.vim is a directory,and need to be renamed to "~/.vim_runtime/bundle/vundle/".Because in 
  "~/.vim_runtime/bundle/vundle/vundle-config.vim", we set the runtime path as 
  "set rtp+=~/.vim_runtime/bundle/vundle/". 
   and set the plugin install path by
  call vundle#rc("~/.vim_runtime/bundle/vundle/")
3 In vim, execute the command :BundleInstall, so it will install the plugin by iteself;


