function clone --description "clone something, cd into it."
    git clone --depth=1 $argv[1]
    cd (basename $argv[1] | sed 's/.git$//')
    # npm install
end
