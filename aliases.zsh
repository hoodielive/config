# Export

# local bin
export PATH=$HOME/.local/bin:$PATH

# Pretty Manpages.
export MANPAGER="sh -c 'col -bx | bat -l man -p'"

# Cargo/Rust
export PATH="/home/enilo/.cargo/bin:$PATH"

# Node.js
export NVM_DIR="$HOME/.nvm"

# Export the EDITOR and VISUAL envvars.
export EDITOR=nvim
export VISUAL=nvim

# Ruby
export PATH=/home/enilo/.local/share/gem/ruby/3.0.0/bin:$PATH

# Loads nvm its self.
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  

# Loads nvm zsh_completion.
[ -s "$NVM_DIR/zsh_completion" ] && \. "$NVM_DIR/zsh_completion"


# Eval
eval "$(starship init zsh)"

# Aliases
alias mv="mv -v"
alias cp="cp -v"
alias nv="nvim"
alias cat="bat --plain"
alias sz="source ~/.zshrc"
alias oa="nvim ~/.aliases.zsh"
alias clones="cd ~/Clones"
alias gnv="cd ~/.config/nvim"
alias gtc="cd ~/.config"
alias program="ssh enilo@programmer"
alias nvi="nvim"
alias themer="ls ~/.oh-my-zsh/themes"
alias dope="cd ~/Clones/dope"
alias dopel="ll ~/Clones/dope"
alias ll="exa --long --icons"
alias llg="exa --long --icons --git"
alias vlrst=clear
alias hl="highlight"
alias eve="eval $(ssh-agent -s)"
alias gitssh="ssh-add ~/.ssh/git_ecdsa && ssh -T git@github.com"
alias bitch="eve; gitssh"
alias eguntest="ssh-add ~/.ssh/egungun_ecdsa && ssh -T enilo@10.0.1.25"
alias egun="eve; eguntest"
alias blackmagus="ssh blackmagus@blackmagus"
alias hyperconfig="nvim /mnt/c/Users/$USER/AppData/Roaming/Hyper/.hyper.js"
alias nimcode="cd ~/Clones/nim/2022"
alias modc="cd ~/Clones/modernc/2022"
alias modcpp="cd ~/Clones/moderncpp/2022/"
alias modcs="cd ~/Clones/moderncsharp/2022"
alias modjs="cd ~/Clones/modernjs/2022"
alias modpy="cd ~/Clones/modernpy/2022"
alias modrs="cd ~/Clones/modernrs/2022"
alias gamedev="cd ~/Clones/gamedev/"
alias makeher="make -C ../build"
alias cbuildher="cmake -S . -B ../build"
alias mkdir="mkdir -v"
alias tsc="tsc --noImplicitReturns --noFallthroughCasesInSwitch --strict --noUnusedLocals"
alias hog="ps -eo pcpu,pid,user,args | sort -k1 -r -n | head -10"
# dotnet tool run csharp-ls or dotnet csharp-ls

function mkcd() { mkdir -p $1 && cd $1 }
function cdf() { cd *$1*/ } # stolen from garyberhardt who stole it from @topfunky lol
function up()
{
    local DIR=$PWD
    local TARGET=$1
    while [ ! -e $DIR/$TARGET -a $DIR != "/" ]; do
        DIR=$(dirname $DIR)
    done
    test $DIR != "/" && echo $DIR/$TARGET
}

# Edit a note
function note() {
    local dropbox=$(find ~/Dropbox/* | selecta)
    if [[ -n "$dropbox" ]]; then
        (cd ~/Dropbox && vi "$dropbox")
    fi
}

