#!/bin/bash
which brew > /dev/null
INSTALLED=$?
if [ $INSTALLED != 0 ]; then
    /bin/bash -c s"$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
    echo "Homebrew already installed."
fi
