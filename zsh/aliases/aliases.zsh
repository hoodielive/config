# Exports

# Make manpages sexy.
export MANPAGER="sh -c 'col -bx | bat -l man -p'"

# rust
export PATH="$PATH:$HOME/.cargo/bin"

# go
export GOPATH=$HOME/.config/go
export GOBIN=$HOME/.config/go/bin
export PATH=$PATH:$GOBIN
export PATH=$PATH:$GOPATH

# node
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
#[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # Loads nvm bash_completion

# nim
export PATH=/home/$USER/.local/nim-1.4.2/bin:$PATH

# emacs
# emacs that bitch mac is making your life hell
# export PATH="$PATH:/usr/local/bin/emacs"
# export EDITOR='emacsclient -a ~/.shut-up-emacs-client.sh'
export EDITOR="nvim"
export NVIM_LISTEN_ADDRESS=/tmp/nvimsocket

# Configuration Management.
alias gtc="cd ~/.config"

# Puppet aliases.
#alias proot="cd /etc/puppetlabs/puppet"
#alias prod="/etc/puppetlabs/code/environments/production"
#alias pmods="cd /etc/puppetlabs/code/environments/production/modules"

# Package Management aliases.
alias install="sudo pacman -S $1"

# Manage Neovim.
# export PATH=/home/$USER/.nvim-linux64/bin:$PATH
alias nv="nvim ~/.config/nvim/init.lua"
alias gnv="cd ~/.config/nvim"

# Utility aliases.
alias mv="mv -v"
alias cp="cp -v"
alias nvi="nvim"
alias gotoconfig="cd ~/.config"
alias clones="cd ~/Clones"
alias themer="ls ~/.oh-my-zsh/themes"
alias dope="cd ~/Clones/dope"
alias dopel="ll ~/Clones/dope"
alias vlrst=clear
alias hl="highlight"
alias eve="eval $(ssh-agent -s)"
alias sz="source ~/.zshrc && echo Sourced Master!"
alias gitssh="ssh-add ~/.ssh/git_ecdsa && ssh -T git@github.com"
alias bitch="eve; gitssh"
alias oa="nvim ~/.aliases.zsh"
alias bat="bat -p --pager=never"
alias cat="bat"

# Downloads
alias downloads="cd ~/Downloads"

# ctags based on distribution
# alias ctags="/usr/local/Cellar/ctags/5.8_1/bin/ctags"

# Fuck off Microsoft.
DOTNET_CLI_TELEMETRY_OPTOUT=1

# Clean-up Utilities
alias squery="find . -type f -iname '*.srt'"
alias squerykill="find . -type f -iname '*.srt' -exec rm -rf {} \;"

# Functions
# Stop emacs from hanging during tramp mode
if [[ "$TERM" == "dumb" ]]; then
	unset zle_bracketed_paste
	unset zle
	PS1='$ '
	return
fi

# Trash packer-start
alias trashpacker="rm -rf ~/.local/share/nvim/site/pack/packer/start/*"
