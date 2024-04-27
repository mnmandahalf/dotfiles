#!/bin/bash

target_dir="$HOME/.config/nvim/lua/plugin"
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

