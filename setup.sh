create_softlink() {
    ln -s ./nvim ~/.config/
    ln -s ./tmux ~/.config/
    ln -s ./starship.toml ~/.config/
    ln -s ./aerospace.toml ~/.aerospace.toml
}

if [ ! -d "~/.config" ]; then
    echo "file dont exist"
    mkdir ~/.config
else
    create_softlink
fi
