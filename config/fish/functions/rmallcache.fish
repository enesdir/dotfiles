# This function deletes all files and directories under the user's .cache directory.
function rmallcache
    # Get the path of the user's home directory
    set homeDir $HOME
    # Call deleteUnder with the .cache directory
    deleteUnder "$homeDir/.cache"
end