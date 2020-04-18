# Vim

cali helps you build a custom Vim setup.  It provides a tiny subset of defaults.

Hardcore Vim users hate Vim distributions, [see here](https://news.ycombinator.com/item?id=4637100) [and here](https://www.reddit.com/r/vim/comments/bfyg3p/what_do_you_think_about_these_vim_distribution_on/).

I don't think Vim distributions deserve the hate.  It's best for some users to start with a distribution, get comfortable with Vim, and then switch to a custom setup after years of Vim experience.  Most brand new Vim users don't want to be messing around with Vimscript.

Yehuda Katz [learned Vim with a distribution](https://yehudakatz.com/2010/07/29/everyone-who-tried-to-convince-me-to-use-vim-was-wrong/).  I used the [janus](https://github.com/carlhuda/janus) library Yehuda contributed to for 5 years before spilling tea on my laptop and getting motivated to create a custom setup.

## Installing plugins

Advances in Vim makes building a custom setup easier.  [You don't need a package manager for Vim plugins anymore](https://stackoverflow.com/a/57738713/1125159)

You can just clone repos in the `~/.vim/pack/bundle/start` directory.

You can run the `./scripts/vim/clone_plugins.sh` script to get these plugins on your machine:

* [supertab](https://github.com/ervandew/supertab): tab completions
* [nerdcommenter](https://github.com/preservim/nerdcommenter): Press `\ c space` to comment / uncomment a visual selection
* [nerdtree](https://github.com/preservim/nerdtree): Filesystem view in Vim, some consider it an [anti-pattern](https://dev.to/kwstannard/nerdtree-an-anti-pattern-29mh)
* [ctrlp](https://github.com/ctrlpvim/ctrlp.vim): Control + P for navigating to files
* [vim-trailing-whitespace](https://github.com/bronson/vim-trailing-whitespace): Highlights trailing whitespace in red and provides :FixWhitespace to remove it

Open up the script and modify it to your liking.  Or install each plugin individually (copy & paste each line from the script).  Or [configure your plugins with Vundle](https://github.com/VundleVim/Vundle.vim).

You should use the minimal subset of plugins in theory, but it doesn't really matter.  I used Janus for years and only used 5 of the 34 plugins that it offers.  Having extra plugins doesn't really matter (although some of them annoyed me, especially [syntastic](https://github.com/vim-syntastic/syntastic)).

Janus [contains these plugins](https://github.com/carlhuda/janus/blob/60e6864fbd60dc8efa9dc4c6de40b7615452814c/.gitmodules) if you're in the mood to hunt for other plugins.

## .vimrc

You can run `./scripts/vim/vimrc_copy.sh` to clobber your local `~/.vimrc` file with the defaults from this project.

This clobbers your `~/.vimrc` file, so only run this script if you know what you're doing.

Here's an explanation of the basic components in this file.

Visual settings to set the font, number of lines, number of columns, display the line number, and turn off the blinking cursor:

```vim
set lines=41
set columns=130
set guifont=Menlo\ Regular:h18
" add line number
set number
" turn blinking cursor off
set guicursor+=a:blinkon0
```

Every language has different preferences about how to handle tabs and spaces.  Ruby likes two spaces, Python likes four spaces, and Go likes tabs.  Here's how you set these (you'll need to add these settings for each language you work with):

```vim
autocmd Filetype python setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4
autocmd FileType go setlocal noexpandtab tabstop=4 shiftwidth=4 softtabstop=4
autocmd FileType ruby setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2
```

Vim creates backup and swap files, which are stored in the current working directory by default.  These are really annoying when you're working with version control.  It's best to store these files in the tmp directory for Mac systems:

```vim
set backupdir=$TMPDIR//
set directory=$TMPDIR//
```

You'll need to use different code if you're operating system doesn't have a `TMPDIR` environment variable set.

## Other Vim distributions

[There are a bunch of Vim distributions](https://www.reddit.com/r/vim/comments/bfyg3p/what_do_you_think_about_these_vim_distribution_on/).



