# Recursively delete `.DS_Store` files
alias cleanup_dsstore="find . -name '*.DS_Store' -type f -ls -delete"

# File size
alias fs="stat -f \"%z bytes\""

# Navigation
function ..    ; cd .. ; end
function ...   ; cd ../../ ; end
function ....  ; cd ../../../ ; end
function ..... ; cd ../../../../ ; end
function ......; cd ../../../../../ ; end

# Navigation for me
function dt       ; cd $HOME/Desktop ; end
function rnwork   ; cd $DEVELOPMENT_DIR/rnwork ; end
function other    ; cd $DEVELOPMENT_DIR/other ; end
function mypj     ; cd $DEVELOPMENT_DIR/mypj ; end
function pj       ; cd $DEVELOPMENT_DIR/pj ; end

# Utilities
function mv
    command mv -i -v $argv
end

function rm
    command rm -i -v $argv
end

function cp
    command cp -i -v $argv
end

function d
    du -h -d 1 $argv
end

function dig
    command dig +nocmd any +multiline +noall +answer $argv
end

function grep
    command grep --color=auto $argv
end

function httpdump
    sudo tcpdump -i en0 -n -s 0 -w - | grep -a -o -E "Host\: .*|GET \/.*"
end

function ip
    curl -s http://checkip.dyndns.com/ | sed 's/[^0-9\.]//g'
end

function localip
    ipconfig getifaddr en0
end

function sniff
    sudo ngrep -d 'en0' -t '^(GET|POST) ' 'tcp and port 80'
end

function urlencode
    python3 -c "import sys, urllib.parse as ul; print(ul.quote_plus(sys.argv[1]))" $argv[1]
end

function h
    history
end

function j
    jobs
end

function v
    command vim $argv
end
