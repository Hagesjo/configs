All client-based settings should be saved in .CONFNAMERC.local, since .CONFNAME will sync automatically with this repo when executing update-configs in zsh.

E.g:
.zshrc will be overwritten with the latest config on the repo, but .zshrc.local will
not.

Running update-configs in zsh will still overwrite every config on the client with configs
existing in this repo. Since it should be only me using this command, I will not
bother fixing individual syncs.

To install, run:
make install
