extensions=(
  "xr0master.webstorm-intellij-darcula-theme"
  "eamodio.gitlens"
  "esbenp.prettier-vscode"
  "stylelint.vscode-stylelint"
  "dbaeumer.vscode-eslint"
  "lokalise.i18n-ally"
  "orta.vscode-jest"
)

for element in "${extensions[@]}"
do
  if [[ $(code --list-extensions | grep -w $element) == '' ]]; then
    echo "Installing vscode extension $element"
    code --install-extension $element
  fi
done
