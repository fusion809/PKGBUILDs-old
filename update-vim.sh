## This script should install the latest git release of gVim on Arch Linux, if it
## is not already installed. Otherwise it will update the version of gVim already
## installed. It will also give you the Vim configuration I use.

# Clone or update the PKGBUILDs repository
if [[ -d "$HOME/GitHub/PKGBUILDs" ]]; then
	cd $HOME/GitHub/PKGBUILDs
	git pull origin master
else
	git clone https://github.com/fusion809/PKGBUILDs ~/GitHub/PKGBUILDs
	cd $HOME/GitHub/PKGBUILDs
fi

# Packages to be built and installed
L=('gvim-git' 'vundle-git' 'vim-pathogen-git')
for i in "${L[@]}"
do
	pushd $i
	makepkg -si --noconfirm --needed
	popd
done

# Get amix's vimrc
if [[ -d "$HOME/.vim_runtime" ]]; then
	cd "$HOME/.vim_runtime"
	git pull --rebase
else
	git clone https://github.com/amix/vimrc.git $HOME/.vim_runtime
	sh ~/.vim_runtime/install_awesome_vimrc.sh
fi

# if ~/.vimrc exists this will back it up at ~/.vimrc2
if ! [[ -f "$HOME/.vimrc" ]]; then
	wget -cO- https://raw.githubusercontent.com/fusion809/vim/master/.vimrc > $HOME/.vimrc			
fi
