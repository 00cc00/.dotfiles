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

if [[ $(asdf plugin list | grep pnpm) != 'pnpm' ]]; then
  echo 'Installing pnpm asdf plugin'
  asdf plugin-add pnpm
fi

if [[ $(asdf plugin list | grep deno) != 'deno' ]]; then
  echo 'Installing deno asdf plugin'
  asdf plugin-add deno
fi

if [[ $(asdf plugin list | grep erlang) != 'erlang' ]]; then
  echo 'Installing erlang asdf plugin'
  asdf plugin-add erlang
fi

if [[ $(asdf plugin list | grep elixir) != 'elixir' ]]; then
  echo 'Installing elixir asdf plugin'
  asdf plugin-add elixir
fi

asdf install nodejs latest
asdf install ruby latest
asdf install yarn latest
asdf install pnpm latest
asdf install deno latest
asdf install erlang latest
asdf install elixir latest

asdf global nodejs latest
asdf global ruby latest
asdf global pnpm latest
asdf global deno latest
asdf global erlang latest
asdf global elixir latest

corepack enable
