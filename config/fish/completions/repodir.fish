for repo in (find "$DEVELOPMENT_DIR" -mindepth 2 -maxdepth 2 -type d)
    complete -f -c repodir -a "(basename \"$repo\")"
end
