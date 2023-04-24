set -gx EDITOR vim
set -gx VISUAL vim

set -x -g LS_COLORS "di=38;5;27:fi=38;5;7:ln=38;5;51:pi=40;38;5;11:so=38;5;13:or=38;5;197:mi=38;5;161:ex=38;5;9:"

# set -x -g TERM "xterm-256color"

set -x -g LC_ALL en_US.UTF-8
set -x -g LANG en_US.UTF-8

# Development projects folder
set -q DEVELOPMENT_DIR; or set -gx DEVELOPMENT_DIR "$HOME/dev"

# Ensure XDG variables are set
set -q XDG_CONFIG_HOME; or set -gx XDG_CONFIG_HOME "$HOME/.config"
set -q XDG_DATA_HOME; or set -gx XDG_DATA_HOME "$HOME/.local/share"
set -q XDG_CACHE_HOME; or set -gx XDG_CACHE_HOME "$HOME/.cache"

set -gx APPLICATIONS_HISTORY_PATH "$XDG_DATA_HOME/history"

# Paths
# test -d $HOME/dotfiles/bin                              ; and set PATH $HOME/dotfiles/bin $PATH
test -d $HOME/.local/bin                                  ; and set PATH $HOME/.local/bin/ $PATH
test -d /opt/homebrew/bin                                 ; and set PATH /opt/homebrew/bin $PATH
test -d /usr/local/sbin                                   ; and set PATH /usr/local/sbin $PATH
test -x /usr/local/share/git-core/contrib/diff-highlight  ; and set PATH /usr/local/share/git-core/contrib/diff-highlight $PATH

# Need to install gh via Homebrew
# See: https://github.com/cli/cli
test -x (brew --prefix)/bin/gh   ; and function g  ; git $argv ; end
# Need to install tree via Homebrew
test -x (brew --prefix)/bin/tree ; and function l  ; tree --dirsfirst -aFCNL 1 $argv ; end
test -x (brew --prefix)/bin/tree ; and function ll ; tree --dirsfirst -ChFupDaLg 1 $argv ; end

# Java
# See: http://stackoverflow.com/questions/1348842/what-should-i-set-java-home-to-on-osx
# See: https://reactnative.dev/docs/environment-setup
test -x /usr/libexec/java_home ; and set -x JAVA_HOME (/usr/libexec/java_home)
test -d $JAVA_HOME/bin         ; and set -x PATH $JAVA_HOME/bin $PATH

# Android
# See: https://stackoverflow.com/questions/19986214/setting-android-home-enviromental-variable-on-mac-os-x
# See: https://reactnative.dev/docs/environment-setup
test -d $HOME/Library/Android/sdk    ; and set -x ANDROID_HOME $HOME/Library/Android/sdk
test -d $ANDROID_HOME/emulator       ; and set -x PATH $ANDROID_HOME/emulator $PATH
test -d $ANDROID_HOME/tools          ; and set -x PATH $ANDROID_HOME/tools $PATH
test -d $ANDROID_HOME/tools/bin      ; and set -x PATH $ANDROID_HOME/tools/bin $PATH
test -d $ANDROID_HOME/platform-tools ; and set -x PATH $ANDROID_HOME/platform-tools $PATH

# Coreutils bin and man folders
set -x -g PATH (brew --prefix coreutils)/libexec/gnubin $PATH
# set -x -g MANPATH (brew --prefix coreutils)/libexec/gnuman $MANPATH

# Findutils bin and man folders
set -x -g PATH (brew --prefix findutils)/libexec/gnubin $PATH
# set -x -g MANPATH (brew --prefix findutils)/libexec/gnuman $MANPATH

# User bin folder
set -x -g PATH ~/bin ~/.local/bin $PATH /usr/local/sbin

# fnm
# set -x -g PATH ~/.fnm $PATH
# fnm env --multi | source
fnm env | source

# yarn global
# https://github.com/yarnpkg/yarn/issues/5353#issuecomment-877905774
set -U fish_user_paths (yarn global bin) $fish_user_paths

# Global env
set -x -g NODE_OPTIONS --max_old_space_size=8192

# Much faster than brew --prefix which depends on Ruby slow start time
# set -gx BREW_PREFIX /usr/local/opt

set -gx SSH_KEY_PATH "$HOME/.ssh"

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

set -gx SQLITE_HISTORY "$APPLICATIONS_HISTORY_PATH/sqlite_history"

set -gx PIPX_BIN_DIR "$HOME/.local/bin"
set -gx PATH $PATH $PIPX_BIN_DIR

fish_add_path --path \
    /usr/local/sbin \
    /opt/homebrew/opt/openjdk/bin\
    $PIPX_BIN_DIR
