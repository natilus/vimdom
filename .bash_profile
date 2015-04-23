alias ls="ls -al -G"
alias mypi="ssh -p 52837 72.227.100.207"
alias sites="cd ~/Sites"
alias cos431="cd /Users/natilus/Copy/school/cos491"
alias cos226="cd /Users/natilus/Copy/school/cos226"
alias cos301="cd /Users/natilus/Copy/school/cos301"
alias cos420="cd /Users/natilus/Copy/school/cos420"
alias cos497="cd /Users/natilus/Copy/school/cos497"
alias cos350="cd /Users/natilus/Copy/school/cos350"
alias cos451="cd /Users/natilus/Copy/school/cos451"
alias nat666="cd /Users/natilus/Copy/school/nat666"
alias gui="cd /Users/natilus/Desktop/macleod/gui"
alias todo="todo --all"
alias mynode="ssh nat@nat"
alias ls="ls -al -G"
alias bees="ssh -X confidox@130.111.20.140"
alias school="cd ~/Copy/school"
alias cl="clear"
alias down="cd ~/Downloads"
alias macleod="cd ~/Desktop/macleod"
alias gpush="git push origin master"
alias gpull="git pull origin master"
alias bak="cd ../"
alias bak2="cd ../../"
alias bak3="cd ../../../"
alias bak4="cd ../../../../"
alias bako="cd $OLDPWD"
alias vim="/usr/local/Cellar/vim/7.4.488/bin/vim"
function coda() { 

	osascript -e 'tell application \"Coda\" to open file \"$1"\'

}

##
# Your previous /Users/nat/.bash_profile file was backed up as /Users/nat/.bash_profile.macports-saved_2014-09-06_at_23:24:20
##

# MacPorts Installer addition on 2014-09-06_at_23:24:20: adding an appropriate PATH variable for use with MacPorts.
#export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
export PATH="/usr/local/git/bin:/usr/local/bin:/usr/bin:/usr/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.


##
# Your previous /Users/nat/.bash_profile file was backed up as /Users/nat/.bash_profile.macports-saved_2014-09-28_at_17:57:13
##

# MacPorts Installer addition on 2014-09-28_at_17:57:13: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.
# A bash function to display a growl notification using iTerm's magic
# escape sequence. This version will work under screen.

growl() {
 local msg="\\e]9;\n\n${*}\\007"
 case $TERM in
    screen*)
     echo -ne '\eP'${msg}'\e\\' ;;
     *)
     echo -ne ${msg} ;;
  esac
  return
}

function setjdk() {
    if [ $# -ne 0 ]; then
        removeFromPath '/System/Library/Frameworks/JavaVM.framework/Home/bin'
    if [ -n "${JAVA_HOME+x}" ]; then
        removeFromPath $JAVA_HOME
        fi
   export JAVA_HOME=`/usr/libexec/java_home -v $@`
   export PATH=$JAVA_HOME/bin:$PATH
  fi
}
 
function removeFromPath() {
  export PATH=$(echo $PATH | sed -E -e "s;:$1;;" -e "s;$1:?;;")
}

noded() { /usr/bin/scp -r "$@"  nat@nat:~ ;}
nodef() { /usr/bin/scp "$@" nat@nat:~ ;}

##
# Your previous /Users/nat/.bash_profile file was backed up as /Users/nat/.bash_profile.macports-saved_2014-12-24_at_11:54:17
##

# MacPorts Installer addition on 2014-12-24_at_11:54:17: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.
#export PATH="/Applications/apache-maven-3.3.1/bin:$PATH"
export M2_HOME="/Applications/apache-maven-3.3.1"
export PATH=$PATH:$M2_HOME/bin
