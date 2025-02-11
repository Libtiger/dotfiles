config_dir="$HOME/test"

mkdir_recursive() {
    src_dir=$1

    find $src_dir -type d | while read -r dir; do
        dst_dir=$config_dir/$dir
        if [ ! -d $dst_dir ]; then
            mkdir -p $dst_dir
        fi
    done

}

softlink_recursive() {
    pwd=
    src_dir=$1

    find $src_dir -type f | while read -r file; do
        dst_file=$config_dir/$file
        ln -sf $PWD/$file $dst_file
    done
}

create_nvim_softlink() {
    echo "Neovim config init..."
    src_dir="nvim"
    mkdir_recursive $src_dir
    softlink_recursive $src_dir
}

create_tmux_softlink() {
    echo "Tmux config init..."
    src_dir="tmux"
    mkdir_recursive $src_dir
    softlink_recursive $src_dir
}

create_zellij_softlink() {
    echo "Zellij config init..."
    src_dir="zellij"
    mkdir_recursive $src_dir
    softlink_recursive $src_dir
}

create_starship_softlink() {
    echo "Starship config init..."
    ln -sf $PWD/starship.toml $config_dir/
}

create_softlink() {
    # nvim config
    create_nvim_softlink

    # tmux config
    create_tmux_softlink

    # zellij config
    create_zellij_softlink

    # starship config
    create_starship_softlink

    if [[ "$(uname)" == "Darwin"]]; then
        echo "This is Macos system."
        echo "Add aerospace config."
        # aerospace config
        ln -s ./aerospace.toml ~/.aerospace.toml
    fi
}

if [ ! -d $config_dir ]; then
    echo "Config dir don't exist, creating..."
    mkdir -p $config_dir
fi

create_softlink
