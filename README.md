# cali

This repo contains instruction guides to provision your machine for a good development experience.

Your machine configuration should make you productive.  It should also be reasonably easy to run.  You'll have to setup a lot of machines and the configurations will continuously evolve as your tools, software versions, and tech stacks progress.  It's good to stay on top of your machine setup and have detailed notes so you can replicate your ideal setup on a new machine.

Most settings in this guide are updated in the preferences section of the respective application.  You can open the preferences with `Command + ,`

## Homebrew, Git, GitHub

Install Homebrew: `/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"`

Install Git with `brew install git`

Run `ls -al ~/.ssh` to ensure that you don't have SSH keys on your machine already.  You should get an error message like `ls: /Users/powers/.ssh: No such file or directory`.

Generate a public key with `ssh-keygen -t rsa -b 4096 -C "your_email@example.com"`

Add your SSH key to SSH Agent [as described here](https://docs.github.com/en/free-pro-team@latest/github/authenticating-to-github/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent#adding-your-ssh-key-to-the-ssh-agent).

Configure git with these commands:

```
git config --global user.email "you@example.com"
git config --global user.name "Your Name"
```

Git clone this repo and update the instuctions as you go!

## Mac Setup

Set trackpad sensitivity to the highest sensitivity you can handle (I set it to max).  Enable touch click.  These are in System Preferences => Trackpad.

Remove all icons from your dock (you can add back the ones you want later).

Hide your dock by default.  Hover over your dock, right click, and press "Turn Hiding On".

[Download Rectangle](https://rectangleapp.com/) to get access to window resizing shortcuts.  The old suggestion was to use [Spectacle](https://www.spectacleapp.com/), but it's not maintained anymore.

Save screenshots in `~/Documents/screenshots` with these commands:

```bash
mkdir ~/Documents/screenshots
defaults write com.apple.screencapture location ~/Documents/screenshots
```

Turn off `DS_Store` file creation:

```bash
defaults write com.apple.desktopservices DSDontWriteNetworkStores true
```

Remove write access to the Desktop, so you're not tempted to add files there and clutter your life:

```bash
chmod -w ~/Desktop/
```

Remap Caps Lock to Control.  Go to Settings => Keyboard => Modifier Keys.

## Terminal

All commands in this guide use `~/.zshrc` file (legacy Mac OS versions used `~/.bash_profile`).

[Use the Option key as the meta key](https://stackoverflow.com/a/327676) by going to Terminal > Preferences > Profiles > Keyboard and checking the "Use Option as Meta key" box.

In the Terminal > Profiles > Text tab, set the color theme to Novel and the font to 16 pt.  You need to click the "Default" button in the bottom left to save these settings.

To open the window in full screen mode, go to Window => Window Size => set rows & columns to 1,000.

[prezto](https://github.com/sorin-ionescu/prezto) provides great default ZSH setups.

[fig](https://fig.io/) was acquired by Amazon, so is no longer recommended.  TODO - find a replacement.

# Chrome setup

Install [Vimium](https://chrome.google.com/webstore/detail/vimium/dbepggeogbaibhgnhhndojpepiihcmeb?hl=en).

## Text Editors

If you only develop in a single language and environment, you may only need one text editor.  If you develop in multiple languages, it can be useful to have multiple text editors.  Certain editors are quite good for particular languages (e.g. IntelliJ is great for Scala).

### Sublime

Install Sublime.

Enable the Sublime Vim extensions.

### VS Code

Go to the website and download VS Code for Mac.

You'll want to be able to open the VS Code editor from the Terminal with the `code` command.  Add this line to your `~/.zshrc` file:

```
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
```

TODO
* default text size
* enable vim codebindings

### IntelliJ

Make the font bigger.  Preferences => Editor => Font => 16

Install the IdeaVim plugin.  Preferences => Plugins => IdeaVim

### PyCharm

Make the font bigger.  Preferences => Editor => Font => 16

Install the IdeaVim plugin.  Preferences => Plugins => IdeaVim

### Vim

TODO: Figure out the best Vim plugin manager and how to install all the [Janus plugins](https://github.com/carlhuda/janus).

## Java / Scala / SBT / Spark

Install Java with [SDKMAN](https://sdkman.io/).

## Python

*conda*

Install conda following [these instructions](https://conda.io/projects/conda/en/latest/user-guide/install/index.html).  Use the package that ends with "arm64" if you're using a M3 Mac.

*poetry*

Install poetry following [these instructions](https://python-poetry.org/docs/).

*JupyterLab Desktop*

Go to the [GitHub repo](https://github.com/jupyterlab/jupyterlab-desktop) and install the JupyterLab desktop application.  Much better to develop notebooks in an application instead of browser windows.

*Scala*

Scala is installed on a per project basis by SBT.  It's not necessary to install it on your machine for multiple projects.  Most programming languages are installed on your machine and used for multiple projects.  Scala's setup is unique.

*SBT*

Install SBT with `brew install sbt`.

*Run Spark test suite*

Clone the spark-daria repo with `git clone git@github.com:MrPowers/spark-daria.git`.

`cd` into the `spark-daria` project directory and run `sbt test` to make sure your environment is properly setup.  The command should install Scala, Spark, all the other project dependencies, and successfully run all the tests.

*Additional Optional setup*

Run `brew install scala` so you can easily open up a Scala REPL for experimental development.

You can also [download Spark from the website](https://spark.apache.org/downloads.html) so you have another way to execute Spark code on your local machine.  This isn't necessary.  We've already seen how to run the test suite for an entire Spark application with SBT (cloning spark-daria and then running `sbt test`). 

## Rust

Install rustup.

Rust will be installed once rustup is installed.

## Other developer tools

* `brew install jq`
* `brew install tree`
* `brew install cloc`

## Legacy guides

Here are legacy setup guides that I once cared about, but don't work on anymore.

* [iTerm](https://github.com/MrPowers/cali/blob/master/guides/iterm.md)
* [Ruby](https://github.com/MrPowers/cali/blob/master/guides/ruby.md)
* [Go](https://github.com/MrPowers/cali/blob/master/guides/go.md)
* [Vim](https://github.com/MrPowers/cali/blob/master/guides/vim.md)
* [Python with pyenv](https://github.com/MrPowers/cali/blob/master/guides/python.md)
* Maven publishing / GPG
* AWS CLI
* bash_profile
* NPM
