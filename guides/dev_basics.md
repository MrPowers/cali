# Dev Basics

Install Homebrew: `/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"`

Install Git with `brew install git`

Run `ls -al ~/.ssh` to ensure that you don't have SSH keys on your machine already.  You should get an error message like `ls: /Users/powers/.ssh: No such file or directory`.

Generate a public key with `ssh-keygen -t rsa -b 4096 -C "your_email@example.com"`

Add your SSH key to SSH Agent [as described here](https://docs.github.com/en/free-pro-team@latest/github/authenticating-to-github/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent#adding-your-ssh-key-to-the-ssh-agent).
