function repov
    set -l repo_path (repodir $argv)
    echo "$repo_path"
    cd "$repo_path"
    code -n "$repo_path"
end
