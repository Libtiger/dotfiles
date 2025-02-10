create_softlink() {
  # nvim config
  ln -s ./nvim/lua ~/.config/nvim/
  ln -s ./nvim/init.lua ~/.config/nvim/

  # tmux config
  ln -s ./tmux ~/.config/

  # starship config
  ln -s ./starship.toml ~/.config/

  if [[ "$(uname)" == "Darwin"]]; then
      echo "This is Macos system."
      echo "Add aerospace config."
      # aerospace config
      ln -s ./aerospace.toml ~/.aerospace.toml
  fi
}

if [ ! -d "~/.config" ]; then
  echo "Config dir don't exist, creating..."
  mkdir ~/.config
else
  create_softlink
fi
