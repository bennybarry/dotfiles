#!/bin/bash

mkdir -p ~/.config/
cp ./starship.toml ~/.starship.toml
curl -sS https://starship.rs/install.sh | sh
