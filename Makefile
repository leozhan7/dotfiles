init:
	# oh-my-zsh
	sh -c "$$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
	# powerlevel9k
	git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k
	# zsh-syntax-highlighting
	git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $(ZSH)/plugins/zsh-syntax-highlighting/
	# zsh-autosuggestions
	git clone https://github.com/zsh-users/zsh-autosuggestions.git $(ZSH)/plugins/zsh-autosuggestions/
	make link
link:
	ln -fs `pwd`/bash_profile ~/.bash_profile
	ln -fs `pwd`/gitconfig ~/.gitconfig
	ln -fs `pwd`/vim ~/.vim
	ln -fs `pwd`/vimrc ~/.vimrc
	ln -fs `pwd`/bashrc ~/.bashrc
	ln -fs `pwd`/zshrc ~/.zshrc
sync:
	git pull
	git push