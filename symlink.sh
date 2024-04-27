#!/bin/bash

target_init_lua="$HOME/.config/nvim/init.lua"
source_init_lua="$HOME/repos/mnmandahalf/dotfiles/init.lua"
target_dir="$HOME/.config/nvim/lua/plugins"
source_dir="$HOME/repos/mnmandahalf/dotfiles/lua/plugins"

if [ ! -d "$target_dir" ]; then
    mkdir -p "$target_dir"
fi

for file in "$source_dir"/*; do
    filename=$(basename "$file")
    link_path="$target_dir/$filename"

    if [ ! -e "$link_path" ]; then
        ln -s "$file" "$link_path"
    fi
done

if [ ! -e "$target_init_lua" ]; then
    ln -s "$source_init_lua" "$target_init_lua"
fi

