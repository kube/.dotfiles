#!/bin/sh

      #########.
     ########",#:
   #########',##".
  ##'##'## .##',##.
   ## ## ## # ##",#.
    ## ## ## ## ##'
     ## ## ## :##
      ## ## ##."

# Install zgen
rm -rf $HOME/.zgen
git clone https://github.com/tarjoilija/zgen $HOME/.zgen


# Append dotfiles sourcing to .zshrc
if ! grep -q "# Dotfiles sourcing" ~/.zshrc; then
cat >> ~/.zshrc <<EOL

# Dotfiles sourcing
source \$HOME/.dotfiles/index.sh
EOL
fi


# Reset zsh to finish installation
exec zsh -l
