# Ruby setup

Run `brew install rbenv`, so you can easily manage multiple Ruby versions on your machine.

Download a version of Ruby with rbenv and set the global Ruby version to default to that Ruby version (so it doesn't use the system Ruby anymore).

TODO: add link to blog post explaining how rbenv works in detail

Follow the [jekyll installation instructions](https://jekyllrb.com/docs/installation/macos/) if you'd like to access the static site generator that powers GitHub Pages.

Once rbenv is installed, you can simply run `gem install --user-install bundler jekyll` to install jekyll.  This hack is recommended to fetch the proper `gem` executable: `echo 'export PATH="$HOME/.gem/ruby/X.X.0/bin:$PATH"' >> ~/.bash_profile`.  This requires manually editing the string in the bash profile when the Ruby version changes - we should search for a better solution.

