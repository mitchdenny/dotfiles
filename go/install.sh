#!/bin/bash
which go > /dev/null
INSTALLED=$?
if [ $INSTALLED != 0 ]; then
    brew install go
else
    echo "Go already installed."
fi