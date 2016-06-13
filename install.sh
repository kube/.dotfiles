# Create .zshrc that will source all dotfiles
cat > ~/.zshrc <<EOL
source ~/.dotfiles/*.zsh
EOL

# Install antigen
curl -L https://raw.githubusercontent.com/zsh-users/antigen/master/antigen.zsh > $HOME/.antigen/antigen.zsh

# Install 42 Homebrew Fix
sh -c "$(curl -fsSL https://raw.githubusercontent.com/kube/42homebrew_fix/master/install.sh)"

# Apply config
source ~/.zshrc

# Install Node
brew install node

# Install Node global modules
npm install --global gulp typescript
