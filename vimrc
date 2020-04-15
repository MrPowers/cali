" Visual settings
set lines=41
set columns=130
set guifont=Menlo\ Regular:h18
" add line number
set number
" turn blinking cursor off
set guicursor+=a:blinkon0

" This sets the tab settings, but only for Python
" https://stackoverflow.com/a/12134557/1125159
autocmd Filetype python setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4

" gofmt compatible tab settings
" https://gist.github.com/joshuarubin/03badc5775848289ddc4#file-vimrc-L54
autocmd FileType go setlocal noexpandtab tabstop=4 shiftwidth=4 softtabstop=4

" option is needed for NerdCommenter to work
filetype plugin on

" From StackOverflow https://stackoverflow.com/a/4824781/1125159
set backupdir=$TMPDIR//
set directory=$TMPDIR//

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






