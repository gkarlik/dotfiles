# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path to your oh-my-zsh installation.
export ZSH=/home/gkarlik/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="powerlevel10k/powerlevel10k"


#
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
plugins=(git docker)

# User configuration

# export PATH="/usr/bin:/bin:/usr/sbin:/sbin:$PATH"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

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
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# radare2 sflib
export SFLIBPATH=/usr/local/include/libr/sflib

PATH=$PATH:$HOME/.local/bin:$HOME/bin:$HOME/.npm-global/bin

export GOPATH=$HOME/Grzela/repos/go-workspace
export GOROOT=/opt/go
export GOINSECURE=jarvis.lan
export GOPRIVATE=jarvis.lan

export PATH=${PATH}:/opt/node/lib/node_modules/npm/bin
export PATH=${PATH}:${GOROOT}/bin:${GOPATH}/bin
export PATH=${PATH}:/opt/VSCode-Insiders
export PATH=${PATH}:/opt/google/protoc/bin
export PATH=${PATH}:/opt/flutter/bin
export PATH=${PATH}:/opt/grpcurl
export PATH=${PATH}:/opt/mitmproxy
export PATH=${PATH}:/opt/helm
export PATH=${PATH}:/opt/stern
export PATH=${PATH}:/opt/k6
export PATH=${PATH}:/opt/k9s
export PATH=${PATH}:/opt/nvim/usr/bin
export PATH=${PATH}:/home/gkarlik/.cargo/bin
export PATH=${PATH}:/home/gkarlik/Grzela/repos/go-workspace/bin

# tiny-go
export PATH=${PATH}:/opt/tiny-go/bin
export TINYGOROOT=/opt/tiny-go

export PATH=${PATH}:/opt/dart-sdk/bin
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
# dart grpc
export PATH=${PATH}:${HOME}/.pub-cache/bin
# dotnet
export DOTNET_CLI_TELEMETRY_OPTOUT=1
export DOTNET_CLI_UI_LANGUAGE=en
# terraform
export PATH=${PATH}:/opt/terraform

# monitor management
export ACER=1
export IIYAMA=1

# antlr
export CLASSPATH=".:/usr/local/lib/antlr-4.7.1-complete.jar:$CLASSPATH"
alias antlr4='java -Xmx500M -cp "/usr/local/lib/antlr-4.8-complete.jar:$CLASSPATH" org.antlr.v4.Tool'
alias grun='java -Xmx500M -cp "/usr/local/lib/antlr-4.8-complete.jar:$CLASSPATH" org.antlr.v4.gui.TestRig'

# locale
export LANG=en_US.UTF-8

# rust
# export RUST_SRC_PATH="/home/gkarlik/.rustup/toolchains/stable-x86_64-unknown-linux-gnu"

# aliases
# Easier navigation: .., ..., ~ and -
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ~="cd ~" # `cd` is probably faster to type though
alias -- -="cd -"

# Shortcuts
alias mc="mc -c -u"
alias dl="cd ~/Downloads"
alias p="cd ~/Grzela/projects"
alias w="cd ~/Grzela/work"
alias gk="cd ~/Grzela/repos/go-workspace/src/github.com/gkarlik"
alias gh="cd ~/Grzela/repos/github"
alias g="git"
alias h="history"
alias j="jobs"
alias s="sensors"
alias o="xdg-open"
alias subs="python ~/Grzela/scripts/subtitles.py"
alias k="kubectl"

# Programs

# List all files colorized in long format
alias l="ls -l ${colorflag}"

# List all files colorized in long format, including dot files
alias la="ls -la ${colorflag}"

# Common utility commands
alias q="exit"
alias c="clear"

# git stuff
alias gi="git init"
alias ga="git add ."
alias gc="git commit -am"
alias gs="git status --short"
alias gl="git log"

# curl timing
alias ct="curl -L --silent --output /dev/null --show-error --fail -w \"\ntime_namelookup: %{time_namelookup}\ntime_connect: %{time_connect}\ntime_appconnect: %{time_appconnect}\ntime_pretransfer: %{time_pretransfer}\ntime_redirect: %{time_redirect}\ntime_starttransfer: %{time_starttransfer}\ntime_total: %{time_total}\n\""

launch_vscode() {
    (VSCODE_CLI=1 /opt/VSCode-Insiders/code-insiders "$1" &)
}

# golang
alias sgp='export GOPATH=${GOPATH}:${PWD}'
alias vs=launch_vscode

# rdp
alias rdp-grzela='xfreerdp /cert-ignore /dynamic-resolution /u:"GRZELA-WIN10\grzegorz.karlik@gmail.com" /v:192.168.1.249'
alias rdp-k8k='xfreerdp /cert-ignore /dynamic-resolution /u:"dsone\k8k" /v:lt4-k8k-cem'

# grzela-pi0 motion control
alias mstart="ssh grzela-pi0 'sudo systemctl start motion'"
alias mstop="ssh grzela-pi0 'sudo systemctl stop motion'"
alias mrm="ssh grzela-pi0 './remove_videos.sh'"

cd ~/Grzela

# eval "$(starship init zsh)"

# Black        0;30     Dark Gray     1;30
# Red          0;31     Light Red     1;31
# Green        0;32     Light Green   1;32
# Brown/Orange 0;33     Yellow        1;33
# Blue         0;34     Light Blue    1;34
# Purple       0;35     Light Purple  1;35
# Cyan         0;36     Light Cyan    1;36
# Light Gray   0;37     White         1;37
RED='\033[0;31m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# important notices
# echo "--------------------------------------------------------------------------------"
# echo "                                  ${RED}IMPORTANT${NC}"
# echo "--------------------------------------------------------------------------------"
# echo "${YELLOW}[!] Docker package repository is from Fedora 31 version${NC}"
# echo "--------------------------------------------------------------------------------"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
