link_dir ()
{
    ln -s ./nvim ~/.config/
    ln -s ./tmux ~/.config/
    ln -s ./starship.toml ~/.config/
    
}

if [ ! -d "~/.config" ];then
    echo "file dont exist"
    mkdir ~/.config
else
    link_dir
fi
