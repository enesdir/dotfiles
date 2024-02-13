# The command will find all node_modules directory inside the folder and its subfolders and execute rm -rf command on the selected files.

# This function deletes all files or directories with a given name and type.
# It takes two arguments: the name of the items to delete and their type (f for files, d for directories).
# It prints the path of each item before deleting it and counts the number of deleted items.
function deleteItems --description 'This function deletes all files or directories with a given name and type-f for files, d for directories-'
    # The name of the items to delete
    set name $argv[1]
    # The type of the items to delete
    set type $argv[2]
    # A counter for the number of deleted items
    set count 0

    # Loop over each item found by the find command
    for item in (find . -name $name -type $type)
        # Print the item's path
        echo $item
        # Delete the item
        rm -rf $item
        # Increment the count
        set count (math $count+1)
    end

    # Print the total number of deleted items
    echo \nRemoved $count $name\n
end

# This function cleans up a project directory by deleting various directories and files.
# It calls the deleteItems function with the appropriate arguments for each type of item to delete.
function rmnodemodules --description 'This function cleans up a selected directory by deleting various directories and files'
    # Delete all node_modules directories
    deleteItems "node_modules" "d"
    # Delete all .yarn directories
    deleteItems ".yarn" "d"
    # Delete all .next directories
    deleteItems ".next" "d"
    # Delete all .angular directories
    deleteItems ".angular" "d"
    # Delete all .turbo directories
    deleteItems ".turbo" "d"
    # Delete all .eslintcache files
    deleteItems ".eslintcache" "f"
    # Delete all .tsbuildinfo files
    deleteItems "*.tsbuildinfo" "f"
    # Delete all coverage directories
    deleteItems "coverage" "d"
    # Delete all dist directories
    deleteItems "dist" "d"
    # Delete all dev-dist directories
    deleteItems "dev-dist" "d"
end