extensions=("xr0master.webstorm-intellij-darcula-theme")

for element in "${extensions[@]}"
do
  if [[ $(code --list-extensions | grep -w $element) == '' ]]; then
    echo "Installing vscode extension $element"
    code --install-extension $element
  fi
done
