" Make Vim non-compatible with old-Vim
if &compatible
  set nocompatible
endif

let g:base_dir = expand('<sfile>:p:h') 
let g:rc_dir = g:base_dir.'/rc'
execute 'set runtimepath^='.g:base_dir

" initial settings
if has('vim_starting')
  execute 'source' g:rc_dir.'/init.rc.vim'
endif

" dein.vim settings
execute 'source' g:rc_dir.'/dein.rc.vim'

" editor settings
execute 'source' g:rc_dir.'/editor.rc.vim'

