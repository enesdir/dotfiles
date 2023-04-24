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
function rnwork   ; cd $HOME/dev/rnwork ; end
function other    ; cd $HOME/dev/other ; end
function mypj     ; cd $HOME/dev/mypj ; end
function pj       ; cd $HOME/dev/pj ; end

# Utilities
function mv        ; gmv --interactive --verbose $argv ; end
function rm        ; grm --interactive --verbose $argv ; end
function cp        ; gcp --interactive --verbose $argv ; end
function d         ; du -h -d=1 $argv ; end
function dig       ; dig +nocmd any +multiline +noall +answer ; end
function grep      ; command grep --color=auto $argv ; end
function httpdump  ; sudo tcpdump -i en1 -n -s 0 -w - | grep -a -o -E "Host\: .*|GET \/.*" ; end
function ip        ; curl -s http://checkip.dyndns.com/ | sed 's/[^0-9\.]//g' ; end
function localip   ; ipconfig getifaddr en0 ; end
function sniff     ; sudo ngrep -d 'en1' -t '^(GET|POST) ' 'tcp and port 80' ; end
function urlencode ; python -c "import sys, urllib as ul; print ul.quote_plus(sys.argv[1]);" ; end
function h         ; history ; end
function j         ; jobs ; end
function v         ; vim ; end
