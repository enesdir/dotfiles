# git clone into `$DEVELOPER_DIR` with dir structure like `githosting/org/repo`
function gtc
    set -l target (string join '' "$DEVELOPER_DIR" (string replace '.git' '' (string replace 'https://' '' $argv[1])))
    mkdir -p $target
    git clone $argv[1] $target
end
