# For Cinnamon:
# export MUFFIN_NO_SHADOWS=1

# For Arch:
# export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/gcr/ssh"

export EDITOR="vim"
export GOPATH="/home/$USER/.local/go"

. "$HOME/.cargo/env"
. "$HOME/.local/bin/env"

export PATH="$PATH:$GOPATH/bin"
