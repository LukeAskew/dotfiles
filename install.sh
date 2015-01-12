# make paths
mkdir -p "/usr/local/lib"
mkdir -p "/usr/local/bin"

# run scripts
sh "./defaults.sh"
sh "./binaries.sh"
sh "./apps.sh"

# configure .zshrc
echo "/usr/local/bin/zsh" >> /etc/shells
curl -o .zshrc https://gist.githubusercontent.com/LukeAskew/2357260973f7d8f42143/raw/19228adbf206ae5156f1f38df6802b66bad5a316/.zshrc

killall Dock
killall Finder
