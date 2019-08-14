# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/Users/chen/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# ZSH_THEME="robbyrussell"
ZSH_THEME="candy"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true" 
# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

#################################
# From ~/.bash_profile
#################################
#!/bin/bash

# Setting PATH for Python 2.7
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
export PATH

# Setting PATH for Android SDK
PATH="/Users/chen/Library/Android/sdk/tools:${PATH}"
export PATH
PATH="/Users/chen/Library/Android/sdk/platform-tools:${PATH}"
export PATH

# Setting PATH for Android NDK
PATH="~/Program/Android/android-ndk-r8b:${PATH}"
export PATH
PATH="~/Program/Android/android-ndk-r8b/build/tools:${PATH}"
export PATH

# Setting ANDROID_HOME
export ANDROID_HOME="/Users/chen/Library/Android/sdk"

# Setting PATH for java jdk7
# export JAVA_HOME=$(/usr/libexec/java_home)
export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.8.0_131.jdk/Contents/Home"
#export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.7.0_51.jdk/Contents/Home/
# PATH for java8
#export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_73.jdk/Contents/Home/
#export JAVA8_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_73.jdk/Contents/Home/

# Config jenv with path
eval "$(jenv init -)"
export PATH="$HOME/.jenv/bin:$PATH"

# PATH for scala
PATH=$PATH:/Users/chen/bin/scala/bin
export PATH

# Setting PATH for Gradle
#export GRADLE_HOME="/Users/chen/Program/Java/Library/gradle"
#PATH="~/Program/Java/Library/gradle-1.10/bin:${PATH}"
#PATH=$PATH:$GRADLE_HOME/bin
export PATH

# Setting for google chromium depot_tools
PATH="~/Program/Java/Library/depot_tools:${PATH}"
export PATH

# Setting PATH for EC2
export EC2_HOME="/usr/local/ec2/ec2-api-tools-1.6.14.1"
PATH=$PATH:$EC2_HOME/bin
export PATH

# Setting PATH for Spark
export SPARK_HOME="/Users/chen/git/spark/spark-2.1.0-bin-hadoop2.7"
PATH=$PATH:$SPARK_HOME/bin
export PATH

# Setting PATH for Mongodb
export PATH="~/mongodb/bin:${PATH}"

# PATH for apktool
export APK_TOOL_HOME="/Users/chen/git/reverse_engineering/android"
export PATH=$PATH:$APK_TOOL_HOME

# ADD DO TOKEN
source ~/.do/chenbot_token

# Go Path
export GOPATH=$HOME/Go
export GOROOT=/usr/local/opt/go/libexec
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$GOROOT/bin

export GOOGLE_APPLICATION_CREDENTIALS=$HOME/.keys/visionkeyfile.json

# Local user bin

# Setting PATH for NS2
#export PATH=${HOME}/Program/ns-allinone-2.35/bin:${HOME}/Program/ns-allinone-2.35/tcl8.5.10/unix:${HOME}/Program/ns-allinone-2.35/tk8.5.10/unix:${PATH}

#export LD_LIBRARY_PATH=${HOME}/Program/ns-allinone-2.35/otcl-1.14:${HOME}/Program/ns-allinone-2.35/lib

#export TCL_LIBRARY=${HOME}/Program/ns-allinone-2.35/tcl8.5.10/library

#-----------------------------------------------------
#	Greeting ...
#--------------------------------------------------


#-------------------------------------------------
#	Settings...	
#------------------------------------------------

#file completion, ignore .o
FIGNORE='.o'

#set hightlight color for grep
# export GREP_OPTIONS='--color=auto'

# set rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

#-------------------------------------------------
#	Alias...
#------------------------------------------------
# Note: temporiery stop using alias, add '\' in 
#       in front of alias.

# Setting alias for mvim via gvim
alias gvim='mvim -v'

#resign rm to be rm -i
alias rm='rm -i'

#resign ls to be ls -al
#show all file with detail info
alias ls='ls -al'

#alia the trash command
alias trash='~/Software/trash/trash'

#alia the show and hide hidden file script
alias toggleHiddenFile='~/Program/shell_script/hide_show_hidden_files/toggle_s_h.sh'

#open ssh port 22 on this machine
alias enableSSH='systemsetup -setremotelogin on'

#disable ssh port 22 on this machine
alias disableSSH='systemsetup -setremotelogin off'

#open intellij via command line
alias idea='~/.tools/intellij.sh'

#open postman
alias pm='/Applications/Postman.app/Contents/MacOS/Postman &'

#set do token to chen/hanSolotions
alias do-chen='source ~/.do/chenbot_token'
alias do-han='source ~/.do/hanSolutions'

#alias for cd to foodto directory
# alias gofoodto='cd ~/git/chatitup/FoodTo'

#alias for yarn start
alias ys='yarn start'

#alias for nps start
alias ns='npm start'

#alias for mvn clean install
alias mci='mvn clean install'

# MacPorts Installer addition on 2013-05-23_at_00:34:12: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# pyenv
if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# tabtab source for jhipster package
# uninstall by removing these lines or running `tabtab uninstall jhipster`
[[ -f /Users/chen/.config/yarn/global/node_modules/tabtab/.completions/jhipster.zsh ]] && . /Users/chen/.config/yarn/global/node_modules/tabtab/.completions/jhipster.zsh
export PATH="/usr/local/opt/postgresql@9.4/bin:$PATH"

# python path
PYTHONPATH="/Users/chen/.pyenv/versions/2.7.13/lib/python2.7/site-packages/"
export PYTHONPATH

# Go lang
export GOPATH=$HOME/Go
export GOROOT=/usr/local/opt/go/libexec
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$GOROOT/bin

# virtualenv for pyenv
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

#-------------------------------------------------
#	Keys...
#------------------------------------------------
# AWS S3 access for tianclch@gmail.com account
export AWS_ACCESS_KEY_S3_BOT="AKIAY22G3TVHAGHEBFX6"
export AWS_SECRET_ACCESS_KEY_S3_BOT="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"

