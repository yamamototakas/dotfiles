# .bash_aliases
# echo '.bash_aliases'

# Convert charset from UTF-8 to Windows CP932
#   only for several windows built-in commands 
function wincmd()
{
    CMD=$1
    shift
    $CMD $* 2>&1 | iconv -f CP932 -t UTF-8
}
alias cmd='winpty cmd'
alias psh='winpty powershell'
alias ipconfig='wincmd ipconfig'
alias netstat='wincmd netstat'
alias netsh='wincmd netsh'
alias ping='wincmd /c/windows/system32/ping'
