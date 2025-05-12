#!/usr/bin/env fish
echo "[user]
  name = $GIT_COMMITTER_NAME
  email = $GIT_COMMITTER_EMAIL" > $XDG_CONFIG_HOME/\git/\gitconfig_personal
