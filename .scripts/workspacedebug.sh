#!/usr/bin/env bash

# Get the PID of the current shell
PID=$$

# Initialize previous workspace variable
prev_workspace=""

while true; do
  # Query Hyprland for clients in JSON, filter by current PID, get workspace
  workspace=$(hyprctl -j clients | jq -r ".[] | select(.pid==$PID) | .workspace")

  # If workspace changed, print it
  if [[ "$workspace" != "$prev_workspace" && -n "$workspace" ]]; then
    echo "Workspace changed: $workspace"
    prev_workspace="$workspace"
  fi

  # Poll interval (adjust if needed)
  sleep 0.5
done
