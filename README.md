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

## Additional Links

- [Mackup](https://github.com/lra/mackup)
- [iTerm theme](https://gist.github.com/LukeAskew/7791943)
- [Screen Saver](https://github.com/soffes/Clock.saver)
