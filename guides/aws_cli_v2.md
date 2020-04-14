# Installing the AWS CLI v2

[Here are the official instructions](https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2-mac.html).

Download the package to the current directory: `curl "https://awscli.amazonaws.com/AWSCLIV2.pkg" -o "AWSCLIV2.pkg"`

Run the macOS installer: `sudo installer -pkg ./AWSCLIV2.pkg -target /`

Run `aws configure` to configure passwords and the AWS region that should be used.

## What the installation does

A bunch of files are added to `/usr/local/aws-cli/`.

A `/usr/local/bin/aws` file is created that is symlinked to `/usr/local/aws-cli/aws`.

