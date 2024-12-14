create_softlink() {
  # nvim config
  ln -s ./nvim/lua ~/.config/nvim/
  ln -s ./nvim/init.lua ~/.config/nvim/

  # tmux config
  ln -s ./tmux ~/.config/

  # starship config
  ln -s ./starship.toml ~/.config/

  # aerospace config
  ln -s ./aerospace.toml ~/.aerospace.toml
}

if [ ! -d "~/.config" ]; then
  echo "file dont exist"
  mkdir ~/.config
else
  create_softlink
fi
