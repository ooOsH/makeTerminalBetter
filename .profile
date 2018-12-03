source ~/.profile
#   ---------------------------------------------------------------------------------------------------
#   1. Change Prompt
#   ---------------------------------------------------------------------------------------------------

export PS1="___________________    | \w @ \h (\u) \n| 💀 => "
export PS2="|🖕🏻 => "

#   ---------------------------------------------------------------------------------------------------
#   2. Set Paths
#   ---------------------------------------------------------------------------------------------------

export PATH="/usr/local/bin:$PATH"
#YARN
export PATH="$PATH:/opt/yarn-[version]/bin"

#   Set default blocksize for ls, df, du
#   from this: http://hints.macworld.com/comment.php?mode=view&cid=24491
#   ---------------------------------------------------------------------------------------------------

export BLOCKSIZE=1k


#   ----------------------------------------------------------------------------------------------------
#   3.  MAKE TERMINAL BETTER
#   ----------------------------------------------------------------------------------------------------

alias cp='cp -iv'                           # Preferred 'cp' implementation
alias mv='mv -iv'                           # Preferred 'mv' implementation
alias mkdir='mkdir -pv'                     # Preferred 'mkdir' implementation
alias ll='ls -FGlAhp'                       # Preferred 'ls' implementation
alias less='less -FSRXc'                    # Preferred 'less' implementation
cd() { builtin cd "$@"; ll; }               # Always list directory contents upon 'cd'
alias cd..='cd ../'                         # Go back 1 directory level (for fast typers)
alias ..='cd ../'                           # Go back 1 directory level
alias ...='cd ../../'                       # Go back 2 directory levels
alias .3='cd ../../../'                     # Go back 3 directory levels
alias .4='cd ../../../../'                  # Go back 4 directory levels
alias .5='cd ../../../../../'               # Go back 5 directory levels
alias .6='cd ../../../../../../'            # Go back 6 directory levels
alias edit='subl'                           # edit:         Opens any file in sublime editor
alias f='open -a Finder ./'                 # f:            Opens current directory in MacOS Finder
alias ~="cd ~"                              # ~:            Go Home
alias c='clear'                             # c:            Clear terminal display
alias which='type -all'                     # which:        Find executables
alias path='echo -e ${PATH//:/\\n}'         # path:         Echo all executable Paths
alias show_options='shopt'                  # Show_options: display bash options settings
alias fix_stty='stty sane'                  # fix_stty:     Restore terminal settings when screwed up
alias cic='set completion-ignore-case On'   # cic:          Make tab-completion case-insensitive
mcd () { mkdir -p "$1" && cd "$1"; }        # mcd:          Makes new Dir and jumps inside
trash () { command mv "$@" ~/.Trash ; }     # trash:        Moves a file to the MacOS trash
ql () { qlmanage -p "$*" >& /dev/null; }    # ql:           Opens any file in MacOS Quicklook Preview
alias DT='tee ~/Desktop/terminalOut.txt'    # DT:           Pipe content to file on MacOS Desktop
alias phpserver='php -S localhost:8000'



#   ----------------------------------------------------------------------------------------------------
#   4.  GIT ALIAS’#   ----------------------------------------------------------------------------------------------------

alias ga='git add'
alias gp='git push'
alias gl='git log'
alias gs='git status'
alias gd='git diff'
alias gm='git commit -m'
alias gma='git commit -am'
alias gb='git branch'
alias gc='git checkout'
alias gra='git remote add'
alias grr='git remote rm'
alias gpu='git pull'
alias gcl='git clone'
alias guns='git checkout —- .'
alias gf='git fetch'

alias gh1="git branch --merged | grep -v '\*\|master\|develop' | xargs -n 1 git branch -d"
alias gh2='git branch -r'
alias gh3='git remote prune origin'
alias gcoma='git commit --amend'
alias gcleann='git clean -n'
alias gcleanf='git clean -f'


#   ----------------------------------------------------------------------------------------------------
#   5.  NETWORKING
#   ----------------------------------------------------------------------------------------------------

alias myip='curl ip.appspot.com'                    # myip:         Public facing IP Address
alias netCons='lsof -i'                             # netCons:      Show all open TCP/IP sockets
alias flushDNS='dscacheutil -flushcache'            # flushDNS:     Flush out the DNS Cache
alias lsock='sudo /usr/sbin/lsof -i -P'             # lsock:        Display open sockets
alias lsockU='sudo /usr/sbin/lsof -nP | grep UDP'   # lsockU:       Display only open UDP sockets
alias lsockT='sudo /usr/sbin/lsof -nP | grep TCP'   # lsockT:       Display only open TCP sockets
alias ipInfo0='ipconfig getpacket en0'              # ipInfo0:      Get info on connections for en0
alias ipInfo1='ipconfig getpacket en1'              # ipInfo1:      Get info on connections for en1
alias openPorts='sudo lsof -i | grep LISTEN'        # openPorts:    All listening connections
alias showBlocked='sudo ipfw list'                  # showBlocked:  All ipfw rules inc/ blocked IPs

#   ----------------------------------------------------------------------------------------------------
#   6. ADB   
#   ----------------------------------------------------------------------------------------------------

export PATH=${PATH}:~/android-sdk-macosx/tools
export PATH=${PATH}:~/android-sdk-macosx/platform-tools


#   ----------------------------------------------------------------------------------------------------
#   7. VAGRANT   
#   ----------------------------------------------------------------------------------------------------

alias vup='vagrant up'	
alias vp='vagrant up --provision'
alias vs='vagrant ssh && cd /vagrant'
alias vh='vagrant halt'
source ~/.profile

alias phpserver='php -S localhost:8000'

#   ----------------------------------------------------------------------------------------------------
#   8. WEBPACK   
#   ----------------------------------------------------------------------------------------------------

alias wo='./node_modules/.bin/encore dev'
alias ww='./node_modules/.bin/encore dev --watch'
alias wp='./node_modules/.bin/encore production'


