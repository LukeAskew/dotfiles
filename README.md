# dotfiles

## Features

- Installs Homebrew
- Installs Applications
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

## Resources

- [Mackup](https://github.com/lra/mackup)
- [iTerm theme](https://github.com/one-dark/iterm-one-dark-theme)
- [Meslo Font](https://github.com/ryanoasis/nerd-fonts/blob/master/patched-fonts/Meslo/L/Regular/complete/Meslo%20LG%20L%20Regular%20Nerd%20Font%20Complete%20Mono.ttf)
