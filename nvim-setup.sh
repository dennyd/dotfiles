# Deps
sudo apt install python-neovim
sudo apt install python3-neovim

sudo apt-get install silversearcher-ag

python3 -m pip install pynvim
python -m pip install pynvim

# nvim image
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
chmod u+x nvim.appimage
sudo mv nvim.appimage /usr/bin/nvim 
# Alternatively use apt-get
#sudo apt install neovim

# install plug
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

# move vim settings file
mkdir --parents ~/.config/nvim; mv init.vim $_

# Update plugins
nvim -c :PlugUpdate -c :q -c :q
