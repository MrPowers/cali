# Python setup

## pyenv

Run `brew install pyenv`, so you can easily manage multiple Python versions on your machine.

Run `echo -e 'if command -v pyenv 1>/dev/null 2>&1; then\n  eval "$(pyenv init -)"\nfi' >> ~/.zshrc` to shim in the Python executables downloaded by pyenv to your PATH.

Your machine will use the system Python version by default - you never want to run commands using the system Python version.  Install pyenv before running any Python commands.

Download a different Python version and set the global Python version to be different than the system Python.

`pyenv install --list` lists all of the Python versions that can be installed.

`3.7.5` is one of the versions that's listed.  You can run `pyenv install 3.7.5` to install this version.

After installing a different version of Python, you can run `pyenv global 3.7.5` to have pyenv route all future commands to that newly installed Python version going forward.  This will make sure you don't run Python commands with the system Python.  Remember, you never want to run commands with the system Python.

Run `pyenv versions` to make sure pyenv is using the right Python version.

Also run `echo $PATH` and make sure `/Users/powers/.pyenv/shims` is at the beginning of your PATH.

Read [this blog post to actually understand how pyenv works](https://mungingdata.com/python/how-pyenv-works-shims/).

## poetry

Run `curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py | python -` to install Poetry [as described here](https://python-poetry.org/docs/#installation).
