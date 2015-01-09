# make paths
mkdir -p "/usr/local/lib"
mkdir -p "/usr/local/bin"

# run scripts
sh "./defaults.sh"
sh "./binaries.sh"
sh "./apps.sh"

# configure .zshrc
curl -o .zshrc https://gist.githubusercontent.com/LukeAskew/2357260973f7d8f42143/raw/cae2df17ebabde171a9db01d02d0692129b91278/.zshrc

killall Dock
killall Finder
