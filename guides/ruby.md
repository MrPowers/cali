# Ruby setup

Run `brew install rbenv`, so you can easily manage multiple Ruby versions on your machine.

Add `eval "$(rbenv init -)"` to your `~/.zshrc` file.

Download a version of Ruby with rbenv and set the global Ruby version to default to that Ruby version (so it doesn't use the system Ruby anymore).

Run `rbenv install -l` to show the Ruby versions that can be installed.

Run `rbenv install 2.7.2` to install a Ruby version.  Run `rbenv global 2.7.2` to set Ruby 2.7.2 as your global Ruby version.

TODO: add link to blog post explaining how rbenv works in detail

## jekyll

Follow the [jekyll installation instructions](https://jekyllrb.com/docs/installation/macos/) if you'd like to access the static site generator that powers GitHub Pages.

Once rbenv is installed, you can simply run `gem install --user-install bundler jekyll` to install jekyll.

This hack is recommended to fetch the proper `gem` executable: `echo 'export PATH="$HOME/.gem/ruby/X.X.0/bin:$PATH"' >> ~/.zshrc`.  This requires manually editing the string in the bash profile when the Ruby version changes - we should search for a better solution.
