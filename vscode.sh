#/bin/bash


VSCODE_USER="${HOME}/.config/Code/User/"
if [ -d "${VSCODE_USER}" ]; then
    cp "./vscode/settings.json" "${CONFIG_VSCODE}/settings.json"
    cp "./vscode/keybindings.json" "${CONFIG_VSCODE}/keybindings.json"
    code --install-extension ms-vscode-remote.remote-containers
    code --install-extension ms-vsliveshare.vsliveshare
    code --install-extension ms-vscode.test-adapter-converter
    code --install-extension esbenp.prettier-vscode
    code --install-extension hbenl.vscode-test-explorer
    code --install-extension mechatroner.rainbow-csv
    code --install-extension mhutchie.git-graph
    code --install-extension eamodio.gitlens
fi

