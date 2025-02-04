#!/usr/bin/env bash



echo
echo '##' gsettings list-recursively | grep 'org.mate.terminal'
echo
gsettings list-recursively | grep 'org.mate.terminal'




echo
echo '##' gsettings get org.mate.terminal.global profile-list
gsettings get org.mate.terminal.global profile-list

echo
echo '##' gsettings set org.mate.terminal.global default-profile
gsettings get org.mate.terminal.global default-profile





echo
echo '##' gsettings list-recursively "org.mate.terminal.profile:/org/mate/terminal/profiles/default/"
echo
gsettings list-recursively "org.mate.terminal.profile:/org/mate/terminal/profiles/default/"

echo
echo '##' gsettings list-keys "org.mate.terminal.profile:/org/mate/terminal/profiles/default/"
echo
gsettings list-keys "org.mate.terminal.profile:/org/mate/terminal/profiles/default/"

