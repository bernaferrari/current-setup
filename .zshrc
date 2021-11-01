# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="spaceship" # robbyrussell

plugins=(zsh-autosuggestions)

alias upd="brew upgrade --greedy && flutter upgrade --force"
alias updcask="brew upgrade --cask --greedy"

alias zshrc="code ~/.zshrc"
alias bundle!="bundle install && rake install"
alias be="bundle exec"
alias bi="bundle install"
alias bu="bundle update"
alias ri="rake install"
alias gc="git checkout"
alias gco="git checkout"
alias gcm="git checkout master"
alias gpull="git pull"
alias gpush="git push"
alias gbranch="git checkout -b"
alias gclone="git clone"
alias g="gittower ."
alias o="open ."
alias server="python -m SimpleHTTPServer"
alias python="/usr/local/bin/python3"
alias pip="/usr/local/bin/pip3"

# Download YouTube videos
alias youtube="youtube-dl"
alias yt="youtube-dl"

# Compress pngs
alias compress_png="pngquant"
alias png="pngquant"

function o() {
  z $1 && open .
}

function e() {
  _z $1
  git pull
  gittower .
  subl .
}

export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/latest/bin

export PATH="/usr/local/heroku/bin:$PATH"
export PATH="$HOME/.fastlane/bin:$PATH"
export PATH=$HOME/bin:$PATH
export PATH=$HOME/homebrew/bin:$PATH
export PATH="$PATH:/usr/local/flutter/bin"
export LD_LIBRARY_PATH=$HOME/homebrew/lib:$LD_LIBRARY_PATH

export FL_PASSWORD="yo"

# we don't want to influence the stats
export FASTLANE_SKIP_UPDATE_CHECK="1"
export FASTLANE_OPT_OUT_USAGE="1"
export FASTLANE_OPT_OUT_CRASH_REPORTING="1"

export LANG=en_US.UTF-8

# Xcode via @orta
openx(){ 
  if test -n "$(find . -maxdepth 1 -name '*.xcworkspace' -print -quit)"
  then
    echo "Opening workspace"
    open *.xcworkspace
    return
  else
    if test -n "$(find . -maxdepth 1 -name '*.xcodeproj' -print -quit)"
    then
      echo "Opening project"
      open *.xcodeproj
      return  
    else
      echo "Nothing found"
    fi
  fi
}

. /usr/local/etc/profile.d/z.sh
source $ZSH/oh-my-zsh.sh
# source $HOME/.keys

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='code'
fi

# Go to the root of the current git project, or just go one folder up
function up() {
  export git_dir="$(git rev-parse --show-toplevel 2> /dev/null)"
  if [ -z $git_dir ]
  then
    cd ..
  else
    cd $git_dir
  fi
}

# # Powerline
# function powerline_precmd() {
#     PS1="$(powerline-shell --shell zsh $?)"
# }

# function install_powerline_precmd() {
#   for s in "${precmd_functions[@]}"; do
#     if [ "$s" = "powerline_precmd" ]; then
#       return
#     fi
#   done
#   precmd_functions+=(powerline_precmd)
# }

# if [ "$TERM" != "linux" ]; then
#     install_powerline_precmd
# fi


# Init rbenv
# export PATH="/usr/local/sbin:$PATH"
# export PATH="/usr/local/opt/ruby/bin:$PATH"

export RUBY_CONFIGURE_OPTS="--with-openssl-dir=$(brew --prefix openssl@1.1)"

# Dart
export PATH="$PATH":"$HOME/.pub-cache/bin"
export PATH="$PATH:$HOME/.pub-cache/bin"export PATH="/usr/local/opt/llvm/bin:$PATH"

# Ruby
export PATH="/usr/local/opt/ruby/bin:$PATH"

# Flutter
alias detective="flutter pub global run detective"
alias build_runner="flutter pub run build_runner build --delete-conflicting-outputs"