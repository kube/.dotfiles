# Create .zshrc that will source all dotfiles
cat > ~/.zshrc <<EOL
# Source all dotfiles
for f in ~/.dotfiles/.*.zsh; do source \$f; done
EOL

# Install antigen
mkdir -p $HOME/.antigen
curl -L https://raw.githubusercontent.com/zsh-users/antigen/master/antigen.zsh > $HOME/.antigen/antigen.zsh

# Install 42 Homebrew Fix
sh -c "$(curl -fsSL https://raw.githubusercontent.com/kube/42homebrew_fix/master/install.sh)"

# Apply config
for f in ~/.dotfiles/.*.zsh; do source $f; done
EOL

# Install Node
brew install node
