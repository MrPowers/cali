# Custom executables

It's nice to install custom executables on your machine and run them like they're build in Unix commands (e.g. `echo`, `ls`).

These custom executables are stored in the `/.cali` directory.

Update the `PATH` in your `~/.bash_profile`: `export PATH=$PATH:~/.cali`

Reload the `~/.bash_profile`: `source ~/.bash_profile`

## Commands provided

The `ll` command runs `ls -ahlF`.  This also could have been implemented with an alias but hacking the path is more fun.

The `s3_ll some_bucket/some_folder` command runs `aws s3 ls --summarize --human-readable --recursive s3://some_bucket/some_folder`.

