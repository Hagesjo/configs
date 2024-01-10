# ~/.zshrc
# Original:
# $Id: zshrc 144 2012-04-19 23:01:12Z gnitset $
#source ~/.zshrc_lib

setopt NO_CLOBBER
setopt NO_PROMPT_CR
setopt NO_BEEP
setopt AUTO_MENU
setopt COMPLETE_IN_WORD
setopt EXTENDED_GLOB
setopt AUTOCD
setopt INTERACTIVE_COMMENTS
setopt APPEND_HISTORY
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_SPACE
setopt SHARE_HISTORY



zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}'
zstyle ':completion::complete:*' use-cache 1
zstyle ':completion:*:descriptions' format '%U%B%d%b%u'
zstyle ':completion:*:warnings' format '%BSorry, no matches for: %d%b'
zstyle ':completion:*' special-dirs true

bindkey '^a' beginning-of-line
bindkey '^e' end-of-line
bindkey '^r' history-incremental-search-backward
bindkey '^y' yank
bindkey '^t' delete-word
bindkey '^x' copy-prev-shell-word
bindkey '^z' vi-undo-change
bindkey '\e.' insert-last-word 

autoload -U compinit
compinit -d ~/.zcompdump.`hostname`

alias py=python3

update-configs() {
	emulate -L zsh

   git clone https://github.com/hagesjo/configs.git /tmp/tmpconfigs
   rsync -a /tmp/tmpconfigs/.[^.(git)]* ~
   rm -rf /tmp/tmpconfigs &&

	zcompile ~/.zprofile 2> /dev/null
	zcompile ~/.zshrc 2> /dev/null
	zcompile ~/.zprofile.local 2> /dev/null
	zcompile ~/.zshrc.local 2> /dev/null
}

precmd() {
	if [ "$TERM" != "linux" ]; then
		echo -ne "\033]0;${USER}@${HOST}: ${PWD}\007"
	fi
}

if [ "$HAVE_RUN_ZPROFILE" != "Y" ]; then
  . ~/.zprofile
fi
if [[ -f ~/.zshrc.local ]]; then
  . ~/.zshrc.local
fi
alias ls='ls --color=auto'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias se='setxkbmap se'
alias dv='setxkbmap dvorak se'
alias svim='sudo vim'
alias fuck='sudo \!\!' 
alias grep='grep --color=always'
alias fgrep='find | grep'
alias 'gits'='git status'
