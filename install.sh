# Create .zshrc that will source all dotfiles
if ! grep -q "# Source all dotfiles" "$HOME/.zshrc"; then

cat > ~/.zshrc <<EOL
# Source all dotfiles
for f in ~/.dotfiles/.*.zsh; do source \$f; done
EOL

fi

# Install antigen
mkdir -p $HOME/.antigen
curl -L https://raw.githubusercontent.com/zsh-users/antigen/master/antigen.zsh > $HOME/.antigen/antigen.zsh

# Source antigen
source $HOME/.antigen/antigen.zsh

# Apply config
for f in ~/.dotfiles/.*.zsh; do source $f; done
