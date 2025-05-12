#!/usr/bin/env fish
echo "[user]
  name = $GIT_COMITTER_NAME
  email = $GIT_COMITTER_EMAIL" > $XDG_CONFIG_HOME/\git/\gitconfig_personal
