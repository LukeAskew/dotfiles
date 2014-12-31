#
# Application installer (via brew-cask)
#

set -e

# Apps
apps=(
  1password
  alfred
  appcleaner
  atom
  charles
  cord
  cornerstone
  dropbox
  evernote
  firefox
  flash
  flux
  font-m-plus
  forklift
  genymotion
  google-chrome
  google drive
  iterm2
  macdown
  mailbox
  opera
  qlcolorcode
  qlmarkdown
  qlprettypatch
  qlstephen
  quicklook-json
  sketch
  skype
  slack
  soundcleod
  soundflower
  spectacle
  spotify
  sublime-text3
  tower
  transmit
  vagrant
  virtualbox
  vlc
  xampp
  xscope
)

# fonts
fonts=(
  font-m-plus
  font-clear-sans
  font-roboto
)

# screen savers
screensavers=(
  fliqlo
)

# Specify the location of the apps
appdir="/Applications"

# Check for Homebrew
if test ! $(which brew); then
  echo "Installing homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

main() {

  # Ensure homebrew is installed
  homebrew

  # Install homebrew-cask
  echo "installing cask..."
  brew tap phinze/homebrew-cask
  brew install brew-cask

  # Tap alternative versions
  brew tap caskroom/versions

  # Tap the fonts
  brew tap caskroom/fonts

  # install apps
  echo "installing apps..."
  brew cask install --appdir=$appdir ${apps[@]}

  # install fonts
  echo "installing fonts..."
  brew cask install ${fonts[@]}
  
  # install screen savers
  echo "installing screen savers..."
  brew cask install ${screensavers[@]}

  # link with alfred
  alfred
  cleanup
}

homebrew() {
  if test ! $(which brew); then
    echo "Installing homebrew..."
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  fi
}

alfred() {
  brew cask alfred link
}

cleanup() {
  brew cleanup
}

main "$@"
exit 0
