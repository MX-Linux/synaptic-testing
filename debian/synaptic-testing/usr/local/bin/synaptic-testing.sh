#!/bin/bash

notify-send -i deb "synaptic testing" "Adding MX TEST repository to /etc/apt/sources.list.d/"
echo deb http://main.mepis-deb.org/mx/testrepo/ mx15 test>/etc/apt/sources.list.d/mxtestrepotemp.list
x-terminal-emulator -e apt-get update 2>/dev/null
notify-send -i deb -t 10000 "synaptic testing" "Launching synaptic with MX TEST repo enabled"
synaptic 2>/dev/null
notify-send -i deb "synaptic testing" "Removing MX TEST repository from /etc/apt/sources.list.d/"
rm -f /etc/apt/sources.list.d/mxtestrepotemp.list
x-terminal-emulator -e apt-get update 2>/dev/null
