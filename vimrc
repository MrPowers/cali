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

" ruby settings
" adapted from this gist https://gist.github.com/n8henrie/3e251bfe9ac9d5ce7421
autocmd FileType ruby setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2

" option is needed for NerdCommenter to work
filetype plugin on

" NerdTree customizations
" Shows the hidden files
let NERDTreeShowHidden=1

" From StackOverflow https://stackoverflow.com/a/4824781/1125159
set backupdir=$TMPDIR//
set directory=$TMPDIR//

" Automagically indent stuff
" From StackOverflow https://superuser.com/questions/99741/how-to-add-a-new-line-with-the-same-indentation
set autoindent

