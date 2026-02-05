# dotfiles

## Features

- Installs applications
- Installs binaries
- Configures a shell
- Configures macOS
- Sets up weekly backups

## Usage

Run the bootstrap script:

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
