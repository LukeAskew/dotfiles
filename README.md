# dotfiles

## Features

- Installs Homebrew
- Installs Applications (casks)
- Installs binaries
- Configures Zsh
- Configures macOS
- Weekly cron to backup files via Mackup

## Usage

Setup crontab:

```bash
crontab -e
crontab .cron/crontab
chmod -R +x .cron
```

Run scripts:

```bash
source scripts/bootstrap.sh
```

Add a spacer to the dock:

```bash
defaults write com.apple.dock persistent-others -array-add '{tile-data={}; tile-type="spacer-tile";}'
```

## Additional Links

- [Mackup](https://github.com/lra/mackup)
- [iTerm theme](https://github.com/nathanbuchar/atom-one-dark-terminal)
- [Screen Saver](https://github.com/soffes/Clock.saver)
