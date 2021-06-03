#!/bin/bash
which pwsh > /dev/null
INSTALLED=$?
if [ $INSTALLED != 0 ]; then
    brew install powershell
else
    echo "PowerShell already installed."
fi