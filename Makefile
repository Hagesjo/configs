all:
	@echo possible targets: ssh screen vim tmux zsh and install ('install' installs everything)

install: ssh screen vim nvim zsh tmux

ssh:
	install -d -m 0755 ${HOME}/.ssh
	install -b -m 0644 .ssh/config ${HOME}/.ssh/config

screen:
	install -b -m 0644 .screenrc ${HOME}/.screenrc

vim:
	rsync -a .vim ${HOME}
	install -b -m 0644 .vimrc ${HOME}/.vimrc

nvim:
	mkdir -p ${HOME}/.config
	ln -sf ${HOME}/.vim ${HOME}/.config/nvim
	ln -sf ${HOME}/.vimrc ${HOME}/.config/nvim/init.vim  

zsh:
	install -b -m 0644 .zshrc ${HOME}/.zshrc
	install -b -m 0644 .zprofile ${HOME}/.zprofile
	rm ${HOME}/.zcompdump* 2> /dev/null || exit 0
	zsh -c 'zcompile ${HOME}/.zshrc' 2> /dev/null || exit 0
	zsh -c 'zcompile ${HOME}/.zprofile' 2> /dev/null || exit 0
	zsh -c 'zcompile ${HOME}/.zshrc.local' 2> /dev/null || exit 0
	zsh -c 'zcompile ${HOME}/.zprofile.local' 2> /dev/null || exit 0

tmux:
	install -b -m 0644 .tmux.conf ${HOME}/.tmux.conf
