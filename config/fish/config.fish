set -x -g LS_COLORS "di=38;5;27:fi=38;5;7:ln=38;5;51:pi=40;38;5;11:so=38;5;13:or=38;5;197:mi=38;5;161:ex=38;5;9:"

# set -x -g TERM "xterm-256color"

# set -x -g LC_ALL en_GB.UTF-8
# set -x -g LANG en_GB.UTF-8
set fish_greeting

set -g theme_nerd_fonts yes
set -g theme_color_scheme nord

# Paths
# test -d $HOME/dotfiles/bin                              ; and set PATH $HOME/dotfiles/bin $PATH
test -d $HOME/.local/bin                                  ; and set PATH $HOME/.local/bin/ $PATH
test -d /opt/homebrew/bin                                 ; and set PATH /opt/homebrew/bin $PATH
test -d /usr/local/sbin                                   ; and set PATH /usr/local/sbin $PATH
test -x /usr/local/share/git-core/contrib/diff-highlight  ; and set PATH /usr/local/share/git-core/contrib/diff-highlight $PATH

# typos
abbr bwre brew
abbr gti git
abbr yearn yarn

# Recursively delete `.DS_Store` files
alias cleanup_dsstore="find . -name '*.DS_Store' -type f -ls -delete"

# File size
alias fs="stat -f \"%z bytes\""

# Navigation
function ..    ; cd .. ; end
function ...   ; cd ../../ ; end
function ....  ; cd ../../../ ; end
function ..... ; cd ../../../../ ; end
function ......; cd ../../../../../ ; end

# Navigation for me
function dt       ; cd $HOME/Desktop ; end
function rnwork   ; cd $HOME/dev/rnwork ; end
function other    ; cd $HOME/dev/other ; end
function mypj     ; cd $HOME/dev/mypj ; end
function pj       ; cd $HOME/dev/pj ; end

# Utilities
function mv        ; gmv --interactive --verbose $argv ; end
function rm        ; grm --interactive --verbose $argv ; end
function cp        ; gcp --interactive --verbose $argv ; end
function d         ; du -h -d=1 $argv ; end
function dig       ; dig +nocmd any +multiline +noall +answer ; end
function grep      ; command grep --color=auto $argv ; end
function httpdump  ; sudo tcpdump -i en1 -n -s 0 -w - | grep -a -o -E "Host\: .*|GET \/.*" ; end
function ip        ; curl -s http://checkip.dyndns.com/ | sed 's/[^0-9\.]//g' ; end
function localip   ; ipconfig getifaddr en0 ; end
function sniff     ; sudo ngrep -d 'en1' -t '^(GET|POST) ' 'tcp and port 80' ; end
function urlencode ; python -c "import sys, urllib as ul; print ul.quote_plus(sys.argv[1]);" ; end
function h         ; history ; end
function j         ; jobs ; end
function v         ; vim ; end

# Gitconfig.user
test -e $HOME/.gitconfig_local ; and source $HOME/.gitconfig_local

# Need to install gh via Homebrew
# See: https://github.com/cli/cli
test -x (brew --prefix)/bin/gh   ; and function g  ; git $argv ; end
# Need to install tree via Homebrew
test -x (brew --prefix)/bin/tree ; and function l  ; tree --dirsfirst -aFCNL 1 $argv ; end
test -x (brew --prefix)/bin/tree ; and function ll ; tree --dirsfirst -ChFupDaLg 1 $argv ; end

# Golang
# test -d $HOME/go ; and set -x GOPATH (go env GOPATH)

# Rust
# test -d $HOME/.cargo; and set -x CARGO_HOME $HOME/.cargo
# test -d $CARGO_HOME/bin;  and set -x PATH $CARGO_HOME/bin $PATH

# Ruby
# Load rbenv automatically by appending
# test -x /usr/local/bin/rbenv ; and rbenv init - | source

# Python
# See: https://github.com/pyenv/pyenv#homebrew-on-mac-os-x
test -x (brew --prefix)/bin/pyenv ; and pyenv init - | source

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

# Elastic Beanstalk
# See: https://github.com/aws/aws-elastic-beanstalk-cli-setup
# test -x $HOME/.ebcli-virtual-env/executables ; and set PATH $HOME/.ebcli-virtual-env/executables $PATH

# Coreutils bin and man folders
set -x -g PATH (brew --prefix coreutils)/libexec/gnubin $PATH
# set -x -g MANPATH (brew --prefix coreutils)/libexec/gnuman $MANPATH

# Findutils bin and man folders
set -x -g PATH (brew --prefix findutils)/libexec/gnubin $PATH
# set -x -g MANPATH (brew --prefix findutils)/libexec/gnuman $MANPATH

# go bin folder
# set -x -g PATH ~/go/bin $PATH

# User bin folder
set -x -g PATH ~/bin ~/.local/bin $PATH /usr/local/sbin

# Composer
# set -x -g PATH ~/.composer/vendor/bin $PATH

if type -q fd
  set -gx FZF_DEFAULT_COMMAND "fish -c 'begin; git ls-tree -r --name-only HEAD; git ls-files --others --exclude-standard; git diff --name-only --staged; end | sort -u || fd --type f --type l --hidden --follow --exclude .git' 2> /dev/null"
  set -gx FZF_CTRL_T_COMMAND "$FZF_DEFAULT_COMMAND"
  set -gx FZF_DEFAULT_OPTS "--no-mouse -1 --multi --info=inline"
end

# fnm
# set -x -g PATH ~/.fnm $PATH
# fnm env --multi | source
fnm env | source

# yarn global
# https://github.com/yarnpkg/yarn/issues/5353#issuecomment-877905774
set -U fish_user_paths (yarn global bin) $fish_user_paths

# iTerm Shell Integration
source ~/.config/fish/.iterm2_shell_integration.fish
