# find `repo` in `~/dev`
function repodir
    set repo_path (find "$DEVELOPMENT_DIR" -mindepth 2 -maxdepth 2 -type d -name "*$argv*" | head -n 1)
    if not test "$argv"; or not test "$repo_path"
        set repo_path "$DEVELOPMENT_DIR"
    end
    echo "$repo_path"
end
