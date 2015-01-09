# make paths
mkdir -p "/usr/local/lib"
mkdir -p "/usr/local/bin"

# run scripts
sh "./defaults.sh"
sh "./binaries.sh"
sh "./apps.sh"

# install .zshrc


killall Dock
killall Finder
