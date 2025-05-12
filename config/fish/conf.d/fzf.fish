# Fuzzy finder

if command -sq fzf
    # Use fd when it is installed
    if command -sq fd
        set -gx FZF_DEFAULT_COMMAND 'fd'
        set -gx FZF_CTRL_T_COMMAND 'fd'
        set -gx FZF_ALT_C_COMMAND 'fd -t d'
    end

    # use bat and tree to show a preview of files and directories
    # NOTE: Ubuntu/Debian install `bat` as `batcat`, to be consistent with
    # other distributions set up a symlink by running:
    # `ln -s /usr/bin/batcat ~/.local/bin/bat`
    if command -sq bat; and command -sq tree
        set -gx FZF_CTRL_T_OPTS "--select-1 --exit-0 --preview \"bash -c \'(bat --style=plain --color=always --line-range :200 {} || tree -aC {}) 2> /dev/null | head -200'\""
        set -gx FZF_ALT_C_OPTS "--select-1 --exit-0 --preview 'tree -aC {} | head -200'"
    end

    # Use Nord color scheme
    set -agx FZF_DEFAULT_OPTS '
    --color fg:#D8DEE9,bg:#2E3440,hl:#A3BE8C,fg+:#D8DEE9,bg+:#434C5E,hl+:#A3BE8C
    --color pointer:#BF616A,info:#4C566A,spinner:#4C566A,header:#4C566A,prompt:#81A1C1,marker:#EBCB8B'
end
