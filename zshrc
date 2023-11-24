# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=100000000
SAVEHIST=100000000
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/lirorc/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

GUIX_PROFILE=/home/lirorc/.guix-profile
. /etc/profile

export SDL_JOYSTICK_DEVICE=/dev/input/js0

PS1="%3~ ?: "
alias vi='nvim'
alias ..='cd ..'
alias a='lf'
alias s='tmux'
#alias ls='ls --color=auto -CF'
#alias ls='ls -CF --color=always'
alias z='zathura'
alias g='guile'
alias f='gforth'
#alias uu='sudo apt update && sudo apt upgrade'
alias rr='objdump -d -Mintel --no-show-raw-insn|more'
alias ls='tree -CF -L 1'
alias la='tree -CFa -L 1'
alias ipa='ip -br a'
alias SS='ss -plunt'
alias aas='aarch64-linux-gnu-as'
alias ald='aarch64-linux-gnu-ld'
alias e='emacs --no-window-system'
alias c='musikcube'
