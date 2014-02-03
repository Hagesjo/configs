all:
	@echo possible targets ssh screen vim zsh and install

install: ssh screen vim zsh 

ssh:
	install -d -m 0755 ${HOME}/.ssh
	install -b -m 0644 .ssh_config ${HOME}/.ssh/config

screen:
	install -b -m 0644 .screenrc ${HOME}/.screenrc

vim:
	install -b -m 0644 .vimrc ${HOME}/.vimrc

zsh:
	install -b -m 0644 .zshrc ${HOME}/.zshrc
	install -b -m 0644 .zprofile ${HOME}/.zprofile
	rm ${HOME}/.zcompdump* 2> /dev/null || exit 0
	zsh -c 'zcompile ${HOME}/.zshrc' 2> /dev/null || exit 0
	zsh -c 'zcompile ${HOME}/.zprofile' 2> /dev/null || exit 0
	zsh -c 'zcompile ${HOME}/.zshrc.local' 2> /dev/null || exit 0
	zsh -c 'zcompile ${HOME}/.zprofile.local' 2> /dev/null || exit 0
