alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias ls='ls --color=auto'
alias ll="ls -lh --group-directories-first"
alias lll="ls -lAh --group-directories-first"
alias l="ll"
alias j="jobs"


function gi() {
    if [[ $# -gt 0 ]]; then
        curl -L -s https://www.gitignore.io/api/$@ ;
    else
        gi visualstudio,visualstudiocode,windows,linux,vim,ruby,python,nodejs,npm,bower
    fi
}
