for repo in (find "$DEVELOPMENT_DIR" -mindepth 2 -maxdepth 2 -type d)
    complete -f -c repo -a "(basename \"$repo\")"
end
