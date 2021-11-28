if [[ $(asdf plugin list | grep nodejs) != 'nodejs' ]]; then
  echo 'Installing nodejs asdf plugin'
  asdf plugin add nodejs
fi

if [[ $(asdf plugin list | grep ruby) != 'ruby' ]]; then
  echo 'Installing ruby asdf plugin'
  asdf plugin add ruby
fi

asdf install nodejs latest
asdf install ruby latest
