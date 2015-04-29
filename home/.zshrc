ZSH_THEME="robbyrussell"
ZSH=$HOME/.oh-my-zsh

has_executable() {
    TMP=`which $1 2> /dev/null`
    [ $? -eq 0 ]
}


# tell me a fortune :)
has_executable "fortune" && has_executable "cowsay" && fortune -as | cowsay

source "$HOME/.homesick/repos/homeshick/homeshick.sh"
fpath=($HOME/.homesick/repos/homeshick/completions $fpath)

homeshick --quiet refresh

# start antigen
source $HOME/antigen/antigen.zsh

#zstyle :omz:plugins:ssh-agent agent-forwarding on
#zstyle :omz:plugins:ssh-agent identities id_dsa id_dsa2
zstyle :xals:plugins:ssh-agent agent-forwarding on
zstyle :xals:plugins:ssh-agent identities id_dsa id_dsa2

antigen bundle https://git.lahouze.org/xals/zsh-utils.git plugins/ssh-agent


# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# ZSH configuration.
#COMPLETION_WAITING_DOTS="false"
DISABLE_CORRECTION="true"
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets root)
#ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern cursor root)

# Bundles from the default repo (robbyrussell's oh-my-zsh).
#antigen bundle ssh-agent
antigen bundle git
antigen bundle git-extras
antigen bundle git-flow
antigen bundle git-prompt
antigen bundle github
#antigen bundle gitfast
antigen bundle autoenv
#antigen bundle virtualenv
#antigen bundle virtualenvwrapper
antigen bundle textmate
antigen bundle ruby
antigen bundle go
antigen bundle golang
antigen bundle osx
antigen bundle nyan
antigen bundle vundle
antigen bundle history
antigen bundle autojump
#antigen bundle jump
antigen bundle mosh
antigen bundle rsync
antigen bundle sublime
antigen bundle sudo
#antigen bundle history-substring-search
antigen bundle macports
antigen bundle brew
antigen bundle vagrant
antigen bundle encode64
antigen bundle screen
antigen bundle tmux
antigen bundle tmuxinator
antigen bundle compleat
antigen bundle colored-man
antigen bundle colorize
antigen bundle docker
antigen bundle encode64
antigen bundle extract
antigen bundle forklift
antigen bundle command-not-found

# ZSH plugin enhances the terminal environment with 256 colors.
#antigen bundle chrissicool/zsh-256color
# ZSH plugin to easily add the upstream remote to your git fork.
#antigen bundle caarlos0/zsh-add-upstream

# A zsh plugin to sync git repositories and clean them up.
#antigen bundle caarlos0/zsh-git-sync

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# Fish shell's history search functionality bundle.
#antigen bundle zsh-users/zsh-history-substring-search

# Fish-like autosuggestions for zsh bundle.
antigen bundle tarruda/zsh-autosuggestions

# A plugin to help remembering thoses aliases you defined once.
antigen bundle djui/alias-tips

# A plugin for desktop notifications of long-running commands in zsh.
antigen bundle marzocchi/zsh-notify

# Autoupdate Antigen every 7 days.
antigen bundle unixorn/autoupdate-antigen.zshplugin


# Load Adonis K's alias dotfiles.
#antigen bundle varemenos/dotfiles-aliases

# Load monokai-cobalt2 color palette for Guake.
#antigen bundle varemenos/guake-color-palettes guake-monokai-cobalt2.sh

antigen-bundle chriskempson/base16-iterm2


# Load the theme.
#antigen theme apple
#antigen theme robbyrussell
#antigen theme XsErG/zsh-themes themes/lazyuser
# Theme
# antigen-bundle arialdomartini/oh-my-git
# antigen theme arialdomartini/oh-my-git-themes arialdo-pathinline
# antigen theme arialdomartini/oh-my-git-themes arialdo-granzestyle
#antigen bundle sindresorhus/pure
antigen theme lukerandall

# zsh-history-substring-search
# bind UP and DOWN arrow keys
# OSX
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down
	
# autosuggestions config
# Enable autosuggestions automatically
#zle-line-init() {
#    zle autosuggest-start
#}
#zle -N zle-line-init
##bindkey '^f' vi-forward-blank-word
#bindkey '^T' autosuggest-toggle

#source $ZSH/oh-my-zsh.sh
source ~/.oh-my-zsh/custom/my.zsh


# Tell antigen that you're done.
antigen apply

# end antigen



# history-substring-search config
# bind UP and DOWN arrow keys
#zmodload zsh/terminfo
#bindkey "$terminfo[kcuu1]" history-substring-search-up
#bindkey "$terminfo[kcud1]" history-substring-search-down








fpath=(/usr/local/share/zsh-completions $fpath)

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="robbyrussell"
#ZSH_THEME="random"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
#COMPLETION_WAITING_DOTS="true"


# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
#plugins=(ssh-agent git git-extras textmate ruby go golang osx nyan vundle history jump mosh rsync sublime sudo history-substring-search macports brew vagrant encode64 screen tmux tmuxinator compleat colored-man colorize docker encode64 extract forklift )
#
#source $ZSH/oh-my-zsh.sh
#
#zstyle :omz:plugins:ssh-agent agent-forwarding on
#zstyle :omz:plugins:ssh-agent identities id_dsa id_rsa
# Setup zsh-autosuggestions
#source /Users/bonis/.zsh-autosuggestions/autosuggestions.zsh
#
## Enable autosuggestions automatically
#zle-line-init() {
#    zle autosuggest-start
#}
#
#zle -N zle-line-init

## use ctrl+t to toggle autosuggestions(hopefully this wont be needed as
## zsh-autosuggestions is designed to be unobtrusive)
#bindkey '^T' autosuggest-toggle

# Customize to your needs...
#export PATH=/opt/local/bin:/opt/local/sbin:/opt/local/bin:/opt/local/sbin:/Users/bonis/.gem/ruby/1.8/bin:/Users/bonis/bin:~/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/X11/bin:/Library/OpenSC/bin:/opt/local/bin:/opt/local/sbin:/usr/local/bin:/usr/local/sbin:/usr/local/bin::/Library/Frameworks/Python.framework/Versions/Current/bin
export PATH=/usr/local/bin:/opt/local/bin:/opt/local/sbin:/opt/local/bin:/opt/local/sbin:/Users/bonis/.gem/ruby/1.8/bin:/Users/bonis/bin:~/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin:/Library/OpenSC/bin:/opt/local/bin:/opt/local/sbin:/usr/local/bin:/usr/local/sbin:/usr/local/bin::/Library/Frameworks/Python.framework/Versions/Current/bin:
# 
# For http://pkgsrc.joyent.com
#export PATH=/usr/pkg/sbin:/usr/pkg/bin:$PATH
export PATH=$PATH:/usr/pkg/sbin:/usr/pkg/bin
export MANPATH=/usr/pkg/man:$MANPATH

# Stop tar from include Resource Forks
export COPYFILE_DISABLE=true


export iOSOpenDevPath=/opt/iOSOpenDev
export iOSOpenDevDevice=Wims3GSiPhone.local
export PATH=/opt/iOSOpenDev/bin:$PATH
export MSF_DATABASE_CONFIG=/usr/local/share/metasploit-framework/config/database.yml
export VAGRANT_DEFAULT_PROVIDER="virtualbox"
export DYLD_LIBRARY_PATH=/opt/oracle/instantclient_11_2
export NLS_LANG=GERMAN_GERMANY.WE8ISO8859P9

alias pg_start='pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start'
alias pg_stop='pg_ctl -D /usr/local/var/postgres stop'

alias gistcopy="gist -s -c"
export HOMEBREW_GITHUB_API_TOKEN=6a9c94a78a5aac8879c50bee15982980da275748

export VISUAL=vim
export GREP_OPTIONS='--color=always'


