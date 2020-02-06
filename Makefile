zsh: git oh-my-zsh zsh-extra-plugins restart-zsh-config

oh-my-zsh: 
	sudo apt-get install zsh
	#oh-my-zsh
	git clone "https://github.com/robbyrussell/oh-my-zsh.git" ~/.oh-my-zsh
	cp ~/dotfiles/.zshrc ~/.zshrc
	chsh -s $(which zsh)
zsh-extra-plugins:
	#zsh-syntax-highlighting
	git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $(ZSH)/plugins/zsh-syntax-highlighting
	#z tabulator
	git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
	~/.fzf/install
restart-zsh-config:
	cp ~/dotfiles/.zshrc ~/.zshrc
python:
	sudo apt-get install python3-pip git python3.7
	sudo pip3 install virtualenvwrapper

git:
	sudo apt-get install git


