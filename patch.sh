#!/usr/bin/env bash
for p in pack_{1..4}; do
    for dir in "$p"/*; do
        script="$dir/$(basename "$dir").script"
        if [ -f "$script" ]; then
	    cp ./nixos-logo-default-gradient-white-regular-horizontal-minimal.png "$dir/logo.png"
            cat distro_logo.script >> "$script"
        fi
    done
done
