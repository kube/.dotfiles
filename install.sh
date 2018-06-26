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


# Reset zsh to finish installation
exec zsh -l
