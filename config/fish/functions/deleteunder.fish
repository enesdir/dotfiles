# This function deletes all files and directories under a given directory.
# It takes one argument: the path of the directory.
function deleteUnder
    # The path of the directory
    set dir $argv[1]
    # Ask for user confirmation
    echo "Are you sure you want to delete all items under $dir? (yes/no)"
    read answer
    if test $answer = "no"
        echo "Operation cancelled."
        return
    end
    echo \nRemoving all items under $dir\n
    # Count the number of items
    set count (find $dir -mindepth 1 | wc -l)
    # Delete the items and print their paths
    find $dir -mindepth 1 -exec echo {} \; -exec rm -rf '{}' +
    echo \nDone removing $count items under $dir\n
end