
# script that finds all git remote URLs in recursive directories
function findgitremotes

  # Get the current directory
  # set current_dir (pwd)

  # Find all directories that contain a .git directory
  set git_directories (find "$DEVELOPMENT_DIR" -type d -name ".git")

  # Iterate over the git directories
  for git_directory in $git_directories
    # Get the absolute path of the parent directory
    set parent_directory (dirname $git_directory)

    # Change directory to the parent directory
    cd $parent_directory

    # Get the remote URL for the origin remote
    set remote_url (git remote get-url origin)

    # Print the remote URL
    echo "Remote URL for '$parent_directory': $remote_url"

    # Append the remote URL and the parent directory to the repos.list file
    echo "$remote_url $parent_directory" >> "$DEVELOPMENT_DIR\repos.list"

    # Change directory back to the current directory
    cd $current_dir
  end
end
