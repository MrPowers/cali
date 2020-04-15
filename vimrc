" Visual settings
set guicursor+=a:blinkon0
set lines=35
set columns=120
set guifont=Menlo\ Regular:h18

" This sets the tab settings, but only for Python
" https://stackoverflow.com/a/12134557/1125159
autocmd Filetype python setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4

" gofmt compatible tab settings
" https://gist.github.com/joshuarubin/03badc5775848289ddc4#file-vimrc-L54
autocmd FileType go setlocal noexpandtab tabstop=4 shiftwidth=4 softtabstop=4

" option is needed for NerdCommenter to work
filetype plugin on

" Can delete this if the other approach works better
" Backup and swap files
" From Janus https://github.com/carlhuda/janus/blob/master/janus/vim/core/before/plugin/settings.vim
" set backupdir^=~/.vim/_backup//    " where to put backup files.
" set directory^=~/.vim/_temp//      " where to put swap files.

" From StackOverflow https://stackoverflow.com/a/4824781/1125159
set backupdir=$TEMPDIR//
set directory=$TEMPDIR//

" statusline
" From Janus https://github.com/carlhuda/janus/blob/master/janus/vim/core/before/plugin/statusline.vim
if has("statusline") && !&cp
  set laststatus=2  " always show the status bar

  " Start the status line
  set statusline=%f\ %m\ %r
  set statusline+=Line:%l/%L[%p%%]
  set statusline+=Col:%v
  set statusline+=Buf:#%n
  set statusline+=[%b][0x%B]
endif

