# Read env secrets (Must be git-ignored)
if test -e "$XDG_CONFIG_HOME/env/env.fish"
    source "$XDG_CONFIG_HOME/env/env.fish"
end

# iTerm Shell Integration
source ~/.config/fish/.iterm2_shell_integration.fish


# pnpm
set -gx PNPM_HOME "$HOME/.local/share/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end

# .net
set -gx PATH $PATH /usr/local/share/dotnet
