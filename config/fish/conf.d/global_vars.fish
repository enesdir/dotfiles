set -gx EDITOR vim
set -gx VISUAL vim

# Development projects folder
set -q DEVELOPMENT_DIR; or set -gx DEVELOPMENT_DIR "$HOME/dev"

# Ensure XDG variables are set
set -q XDG_CONFIG_HOME; or set -gx XDG_CONFIG_HOME "$HOME/.config"
set -q XDG_DATA_HOME; or set -gx XDG_DATA_HOME "$HOME/.local/share"
set -q XDG_CACHE_HOME; or set -gx XDG_CACHE_HOME "$HOME/.cache"

set -gx APPLICATIONS_HISTORY_PATH "$XDG_DATA_HOME/history"

# Much faster than brew --prefix which depends on Ruby slow start time
# set -gx BREW_PREFIX /usr/local/opt

set -gx GPG_TTY (tty)
set -gx SSH_KEY_PATH "$HOME/.ssh"

set -gx LANG en_US.UTF-8
set -gx LC_ALL en_US.UTF-8

set -gx PAGER bat

set -gx GREP_COLOR "1;37;45"

set -gx POETRY_VIRTUALENVS_PATH "$HOME/.virtualenvs"

set -gx NPM_CONFIG_USERCONFIG "$XDG_CONFIG_HOME/npm/.npmrc"
set -gx NPM_CONFIG_CACHE "$XDG_CACHE_HOME/npm"

# Opt out of brew analytics
set -gx HOMEBREW_NO_ANALYTICS 1

# Python
set -gx PIP_REQUIRE_VIRTUALENV true
set -gx PIP_DEFAULT_TIMEOUT 30
set -gx PIP_CACHE_DIR "$XDG_CACHE_HOME/pip"

# Set pass password store location
# set -gx PASSWORD_STORE_DIR "$XDG_DATA_HOME/password-store"

# GPG Suite doesn't support a different home for gnupg :(
# set -gx GNUPGHOME "$XDG_CONFIG_HOME/gnupg"

# Docker - doesn't seem to work yet
# set -gx DOCKER_CONFIG "$XDG_CONFIG_HOME/docker"

set -gx SQLITE_HISTORY "$APPLICATIONS_HISTORY_PATH/sqlite_history"

set -gx PIPX_BIN_DIR "$HOME/.local/bin"
set -gx PATH $PATH $PIPX_BIN_DIR

fish_add_path --path \
    /usr/local/sbin \
    $PIPX_BIN_DIR
