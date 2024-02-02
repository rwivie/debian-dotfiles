#!/bin/sh

# append the saved layout of workspace N to workspace M
i3-msg "workspace --no-auto-back-and-forth "1: "; append_layout /home/ron/.config/i3/workspace_1.json"

(alacritty --title htop -e htop &)
(alacritty --title follow -e grc journalctl -f &)
(alacritty --title xtail -e grc tail -f ~/.xsession-errors | ts &)
