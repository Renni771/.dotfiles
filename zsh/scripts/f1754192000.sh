#!/bin/bash

fail () { printf "%s\n" "$1" >&2; exit 1; }

installFlutter () {
  checkInstalled "flutter" || fail "Flutter is already installed. Nothing to do."

  cd /tmp

  # flutter
  git clone https://aur.archlinux.org/flutter.git
  cd flutter
  makepkg -si
  cd ..

  sudo gpasswd -a $(whoami) flutterusers
  git config --global --add safe.directory /opt/flutter

  # android-studio
  git clone https://aur.archlinux.org/android-studio.git
  cd android-studio
  makepkg -si
  cd ..

  flutter doctor --android-licenses
}

checkInstalled () {
  which $1 2>/dev/null
}



