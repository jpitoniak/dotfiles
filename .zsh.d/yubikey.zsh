if [[ $PATH != '*/usr/local/bin*' ]]; then
		PATH=$PATH:/usr/local/bin
fi

SSH_ASKPASS=/usr/local/bin/ssh-askpass

alias yubikey-mount="ssh-add -cs /usr/local/lib/opensc-pkcs11.so"
alias yubikey-unmount="ssh-add -e /usr/local/lib/opensc-pkcs11.so"

#eval `ssh-agent`
