#!/usr/bin/env bash

THEME="onedark"

killall polybar
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# CONFIG_DIR=$(dirname $0)/themes/$THEME/config.ini
CONFIG_DIR=${HOME}/.config/polybar/themes/$THEME/config.ini
polybar main -c $CONFIG_DIR &
