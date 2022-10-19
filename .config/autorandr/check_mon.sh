#!/usr/bin/env bash

xrandr=$(xrandr)

monitors=$(xrandr | grep -c " connected ")
    if [[ $monitors -gt 1 ]]; then
        autorandr --load awesome-docked
    else
        autorandr --load awesome-mobile
    fi
