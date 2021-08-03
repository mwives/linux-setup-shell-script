#!/bin/bash

## Gogh
echo "08" | bash -c "$(wget -qO- https://git.io/vQgMr)"

## Oh My Bash!
bash -c "$(wget https://raw.githubusercontent.com/ohmybash/oh-my-bash/master/tools/install.sh -O -)"
sed -i 's/.*OSH_THEME.*/OSH_THEME="brainy"/' ~/.bashrc

## Warnings
echo "Done!"
echo "Now just switch to the \"Argonaut\" profile"