# Export

# Editor
export EDITOR=nvim

# Man
export MANPAGER="sh -c 'col -bx | bat -l man -p'"

# Rust
export PATH=~/.cargo/bin:$PATH

# Ruby
export PATH=/home/enilo/.local/share/gem/ruby/3.0.0/bin:$PATH

## Cmatrix thing
alias matrix='cmatrix -s -C cyan'

# iso and version used to install ArcoLinux
alias iso="cat /etc/dev-rel | awk -F '=' '/ISO/ {print $2}'"

# systeminfo
alias probe="sudo -E hw-probe -all -upload"

# Replace ls with exa
alias ls='exa -al --color=always --group-directories-first --icons' # preferred listing
alias la='exa -a --color=always --group-directories-first --icons'  # all files and dirs
alias ll='exa -l --color=always --group-directories-first --icons'  # long format
alias lt='exa -aT --color=always --group-directories-first --icons' # tree listing
alias l='exa -lah --color=always --group-directories-first --icons' # tree listing

# pacman unlock
alias unlock="sudo rm /var/lib/pacman/db.lck"

# available free memory
alias free="free -mt"

# continue download
alias wget="wget -c"

# readable output
alias df='df -T -h'

# userlist
alias userlist="cut -d: -f1 /etc/passwd"

# Pacman for software managment
alias search='sudo pacman -Qs'
alias remove='sudo pacman -R'
alias install='sudo pacman -S'
alias linstall='sudo pacman -U '
alias update='sudo pacman -Syyu'
alias clrcache='sudo pacman -Scc'
alias updb='paru && sudo pacman -Sy'
alias orphans='sudo pacman -Rns $(pacman -Qtdq)'

# Paru as aur helper - updates everything
alias pget='paru -S '
alias prm='paru -Rs '
alias psr='paru -Ss '
alias upall='paru -Syyu --noconfirm'

# Flatpak Update
alias fpup='flatpak update'

# Snap Update
alias sup='sudo snap refresh'

# grub update
alias grubup='sudo grub-mkconfig -o /boot/grub/grub.cfg'

# get fastest mirrors in your neighborhood
alias ram='rate-mirrors --allow-root arch | sudo tee /etc/pacman.d/mirrorlist'
alias reft='sudo systemctl enable reflector.service reflector.timer && sudo systemctl start reflector.service reflector.timer'

# quickly kill stuff
alias kc='killall conky'

# mounting the folder Public for exchange between host and guest on virtualbox
alias vbm="sudo mount -t vboxsf -o rw,uid=1000,gid=1000 Public /home/$USER/Public"

# Bash aliases
alias mkfile='touch'
alias thor='sudo thunar'
alias jctl='journalctl -p 3 -xb'
alias ssaver='xscreensaver-demo'
alias reload='cd ~ && source ~/.zshrc'
alias pingme='ping -c64 github.com'
alias cls='clear && neofetch'
alias traceme='traceroute github.com'

# hardware info --short
alias hw="hwinfo --short"

# youtube-dl
alias ytv-best='yt-dlp -f "bestvideo[ext=mp4]+bestaudio[ext=m4a]/bestvideo+bestaudio" --merge-output-format mp4 '

# GiT  command
alias gc='git clone '

# userlist
alias userlist="cut -d: -f1 /etc/passwd"

# Copy/Remove files/dirs
alias rmd='rm -r'
alias srm='sudo rm'
alias srmd='sudo rm -r'
alias cpd='cp -R'
alias scp='sudo cp'
alias scpd='sudo cp -R'

# nano
alias bashrc='sudo nvim ~/.bashrc'
alias zshrc='sudo nvim ~/.zshrc'
alias nsddm='sudo nvim /etc/sddm.conf'
alias pconf='sudo nvim /etc/pacman.conf'
alias mkpkg='sudo nvim /etc/makepkg.conf'
alias ngrub='sudo nvim /etc/default/grub'
alias smbconf='sudo nvim /etc/samba/smb.conf'
alias nmirrorlist='sudo nvim /etc/pacman.d/mirrorlist'

# cd/ aliases
alias home='cd ~'
alias etc='cd /etc/'
alias music='cd ~/Music'
alias vids='cd ~/Videos'
alias conf='cd ~/.config'
alias desk='cd ~/Desktop'
alias pics='cd ~/Pictures'
alias dldz='cd ~/Downloads'
alias docs='cd ~/Documents'
alias sapps='cd /usr/share/applications'
alias lapps='cd ~/.local/share/applications'

# switch between lightdm and sddm
alias tolightdm="sudo pacman -S lightdm lightdm-gtk-greeter lightdm-gtk-greeter-settings --noconfirm --needed ; sudo systemctl enable lightdm.service -f ; echo 'Lightm is active - reboot now'"
alias tosddm="sudo pacman -S sddm --noconfirm --needed ; sudo systemctl enable sddm.service -f ; echo 'Sddm is active - reboot now'"

# Recent Installed Packages
alias rip="expac --timefmt='%Y-%m-%d %T' '%l\t%n %v' | sort | tail -200 | nl"
alias riplong="expac --timefmt='%Y-%m-%d %T' '%l\t%n %v' | sort | tail -3000 | nl"

# shutdown or reboot
alias sr="sudo reboot"
alias ssn="sudo shutdown now"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

alias clones="cd ~/Clones"
alias oa="nvim ~/.aliases.zsh"
alias mv="mv -v"
alias cp="cp -v"
alias cat="bat --plain"
alias sz="source ~/.zshrc"
alias eve="eval $(ssh-agent -s)"
alias siz="source ~/.zshrc && echo Sourced Master!"
alias gitssh="ssh-add ~/.ssh/git_ecdsa && ssh -T git@github.com"
alias bitch="eve; gitssh"
alias gtc="cd ~/.config"
alias gnv="cd ~/.config/nvim"
