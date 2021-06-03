#!/bin/bash
which node > /dev/null
INSTALLED=$?
if [ $INSTALLED != 0 ]; then
    brew install node
else
    echo "Node already installed."
fi