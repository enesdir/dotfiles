# find `repo` in `$DEVELOPER_DIR`
function repodir
    set repo_path (find "$DEVELOPER_DIR" -mindepth 2 -maxdepth 2 -type d -name "*$argv*" | head -n 1)
    if not test "$argv"; or not test "$repo_path"
        set repo_path "$repo_base"
    end
    echo "$repo_path"
end
