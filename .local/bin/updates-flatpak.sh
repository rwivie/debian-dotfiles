#!/bin/sh

#updates=$(flatpak update 2>/dev/null | tail -n +5 | grep -Ecv "^$|^Proceed|^Nothing")
updates=$(flatpak --user update 2>/dev/null | tail -n +5 | grep -Ecv "^$|^Proceed|^Nothing")

if [ "$updates" -gt 0 ]; then
    echo " # $updates"
else
    echo " # 0"
fi
