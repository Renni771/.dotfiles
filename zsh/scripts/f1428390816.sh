#!/bin/bash

installDocker () {
  sudo pacman -S --no-confirm docker
  sudo systemtl enable docker.service
  sudo gpasswd -a $(whoami) docker
}
