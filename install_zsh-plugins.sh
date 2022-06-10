ZSH_PLUGINS="$HOME/.oh-my-zsh/custom/plugins"

if [ ! -d "$ZSH_PLUGINS/zsh-autosuggestions" ]; then
  git clone https://github.com/zsh-users/zsh-autosuggestions "$ZSH_PLUGINS/zsh-autosuggestions"
fi
