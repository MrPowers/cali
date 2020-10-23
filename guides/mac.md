# Mac Setup

Set trackpad sensitivity to the highest sensitivity you can handle (I set it to max).  Enable touch click.  These are in System Preferences => Trackpad.

Remove all icons from your dock (you can add back the ones you want later).

Hide your dock by default.

[Download Spectacle](https://www.spectacleapp.com/).

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

