# The command will find all node_modules directory inside the folder and its subfolders and execute rm -rf command on the selected files.

function rmnodemodules
    echo \nRemoving all node_modules\n
    find . -name "node_modules" -type d -prune -exec rm -rf '{}' +
end
