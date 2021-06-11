parse_git_branch() {
    git branch 2> /dev/null | sed -e'/^[^*]/d' -e's/* \(.*\)/(\1)/'
}

PS1="\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;33m\]\w \[\e[91m\]\$(parse_git_branch)\[\e[00m\]$ "