# The function works by first finding all of the repository folders in the DEVELOPMENT_DIR directory. It then iterates over the list of repository folders, and for each repository folder, it does evaluates your argument
# usage
# forrepos ls
# This would print the list of files in all of the repository folders in the DEVELOPMENT_DIR directory.
function forrepos --description 'Evaluates $argv for all repo folders'
    for d in (find "$DEVELOPMENT_DIR" -mindepth 2 -maxdepth 2 ! -path . -type d)
        pushd $d
        set repo (basename $d)
        echo $repo
        eval (abbrex $argv)
        popd > /dev/null
    end
end
