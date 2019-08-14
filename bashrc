# Set default text editor to vim
export VISUAL=vim
export EDITOR="$VISUAL"

# Enable cli coloring
PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '

# Better ls configs 
alias ls="ls --color"
alias ll="ls -lh"
alias la="ls -ah"
eval "$(dircolors -p | \
        sed 's/ 4[0-9];/ 01;/; s/;4[0-9];/;01;/g; s/;4[0-9] /;01 /' | \
        dircolors /dev/stdin)"
# ls pagination if really long
export COLUMNS  # Remember columns for subprocesses.
function ls {
    command ls -F -h --color=always -v --time-style=long-iso -C "$@" | less -R -X -F
}

# man page / terminal coloring
export LESS_TERMCAP_mb=$'\E[1;31m'     # begin bold
export LESS_TERMCAP_md=$'\E[1;36m'     # begin blink
export LESS_TERMCAP_me=$'\E[0m'        # reset bold/blink
export LESS_TERMCAP_us=$'\E[1;32m'     # begin underline
export LESS_TERMCAP_ue=$'\E[0m'        # reset underline
export GROFF_NO_SGR=1                  # for konsole and gnome-terminal

# use random sl flags
FLAGS=("-f" "-c" "-l" "-a" "-la" "-fa" "-ca" "-lf" "-cf" "-laf" "-caf")
alias sl="sl ${FLAGS[ $RANDOM % ${#FLAGS[@]}]}"

alias emacs="echo Did you mean 'vim'? | lolcat -h 1.0; sleep 0.5; vim"
alias nano="echo Did you mean 'vim'? | lolcat -h 1.0; sleep 0.5; vim"
alias pico="echo Did you mean 'vim'? | lolcat -h 1.0; sleep 0.5; vim"

