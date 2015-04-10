alias ls="ls -al -G"
alias mypi="ssh -p 52837 pi@72.227.100.207"
alias sites="cd ~/Sites"
alias cos431="cd /Users/nat/Copy/archives/school/cos431"
alias cos226="cd /Users/nat/Copy/archives/school/cos226"
alias cos301="cd /Users/nat/Copy/archives/school/cos301"
alias cos397="cd /Users/nat/Copy/archives/school/cos397"
alias cos420="cd /Users/nat/Copy/archives/school/cos420"
alias cos497="cd /Users/nat/Copy/archives/school/cos497"
alias cos350="cd /Users/nat/Copy/archives/school/cos350"
alias cos451="cd /Users/nat/Copy/archives/school/cos451"
alias todo="todo --all"
alias mynode="ssh nat@nat"
alias ls="ls -al -G"
alias bees="ssh -X confidox@130.111.20.140"
alias school="cd ~/Copy/archives/school"
alias cl="clear"
alias down="cd ~/Downloads"
alias macleod="cd ~/Copy/archives/school/macleod"
alias gpom="git push origin master"
alias bak="cd ../"
alias bak2="cd ../../"
alias bak3="cd ../../../"
alias bak4="cd ../../../../"
alias bako="cd $OLDPWD"

function coda() { 

	osascript -e 'tell application \"Coda 2\" to open file \"$1"\'

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
