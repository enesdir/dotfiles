#!/usr/bin/env bash

mkdir -p "${HOME}/.config/fish" && \
curl -L https://iterm2.com/shell_integration/fish -o "${HOME}/.config/fish/.iterm2_shell_integration.fish"