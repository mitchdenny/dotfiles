#!/bin/bash
which code > /dev/null
INSTALLED=$?
if [ $INSTALLED != 0 ]; then
    brew install --cask visual-studio-code
else
    echo "VSCode already installed."
fi