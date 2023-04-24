function fish_generate_completions
    set -l complete_path ~/.dotfiles/config/fish/completions

    # Skipped due to some issue
    # echo "Generating poetry completions"
    # poetry completions fish > $complete_path/poetry.fish

    echo "Generating docker completions"
    curl -s https://raw.githubusercontent.com/docker/cli/master/contrib/completion/fish/docker.fish > $complete_path/docker.fish

    # echo "Generating pipx completions"
    # register-python-argcomplete --shell fish pipx > $complete_path/pipx.fish

    # echo "Generating chef completions"
    # chef shell-init fish > $complete_path/chef.fish
end
