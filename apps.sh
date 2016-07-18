#
# Application installer (via brew-cask)
#

set -e

# Apps
apps=(
  alfred
  atom
  cakebrew
  charles
  cord
  dropbox
  evernote
  firefox
  flash
  flux
  forklift
  intellij-idea
  iterm2-beta
  macdown
  mamp
  opera
  postbox
  sequel-pro
  sketch
  skype
  slack
  soundcleod
  soundflower
  sourcetree
  spectacle
  spotify
  sublime-text
  tower
  vagrant
  virtualbox
  visual-studio-code
  vlc
  xamarin-studio
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

  # Tap alternative versions
  brew tap caskroom/versions

  # install apps
  echo "installing apps..."
  brew cask install --appdir=$appdir ${apps[@]}

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
