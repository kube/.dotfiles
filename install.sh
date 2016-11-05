#!/bin/sh

      #########.
     ########",#:
   #########',##".
  ##'##'## .##',##.
   ## ## ## # ##",#.
    ## ## ## ## ##'
     ## ## ## :##
      ## ## ##."

# Append dotfiles sourcing to .zshrc
if ! grep -q "# Dotfiles sourcing" ~/.zshrc; then
cat >> ~/.zshrc <<EOL

# Dotfiles sourcing
source \$HOME/.dotfiles/index.sh
EOL
fi

# Install zgen
rm -rf $HOME/.zgen
git clone https://github.com/tarjoilija/zgen $HOME/.zgen

echo "Open a new terminal to finish installation"
