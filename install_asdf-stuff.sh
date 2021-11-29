if [[ $(asdf plugin list | grep nodejs) != 'nodejs' ]]; then
  echo 'Installing nodejs asdf plugin'
  asdf plugin add nodejs
fi

if [[ $(asdf plugin list | grep ruby) != 'ruby' ]]; then
  echo 'Installing ruby asdf plugin'
  asdf plugin add ruby
fi

if [[ $(asdf plugin list | grep yarn) != 'yarn' ]]; then
  echo 'Installing ruby asdf plugin'
  asdf plugin-add yarn
fi


asdf install nodejs latest
asdf install ruby latest
asdf install yarn latest

asdf global nodejs latest
asdf global ruby latest

corepack enable
