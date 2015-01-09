# make paths
mkdir -p "/usr/local/lib"
mkdir -p "/usr/local/bin"

# run scripts
sh "./defaults.sh"
sh "./binaries.sh"
sh "./apps.sh"

# configure .zshrc
echo "/usr/local/bin/zsh" >> /etc/shells
curl -o .zshrc https://gist.githubusercontent.com/LukeAskew/2357260973f7d8f42143/raw/7d966992a610529c1daf73af0aa47d4c32b23d62/.zshrc

killall Dock
killall Finder
