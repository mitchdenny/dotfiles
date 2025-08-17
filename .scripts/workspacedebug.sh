#!/usr/bin/env bash

while true; do
  # Query Hyprland for clients in JSON, filter by current PID, get workspace
  workspace=$(hyprctl -j clients | jq -r ".[] | select(.pid==$1) | .workspace.id")
  echo $workspace
  sleep 1
done
