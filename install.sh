#!/bin/zsh

      #########.
     ########",#:
   #########',##".
  ##'##'## .##',##.
   ## ## ## # ##",#.
    ## ## ## ## ##'
     ## ## ## :##
      ## ## ##."

# Create .zshrc that will source all dotfiles
if ! grep -q "# Source all dotfiles" "$HOME/.zshrc"; then

cat > ~/.zshrc <<EOL
# Source all dotfiles
for f in ~/.dotfiles/.*.zsh; do source \$f; done
EOL

fi

# Install zgen
rm -rf $HOME/.zgen
git clone https://github.com/tarjoilija/zgen $HOME/.zgen

echo "Open a new terminal to finish installation"
