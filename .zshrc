ZSH_DISABLE_COMPFIX=true
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/alexb/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

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
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source ~/.oh-my-zsh/oh-my-zsh.sh

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

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias ohmyzsh="mate ~/.oh-my-zsh"


# rbenv Fix
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"

# nodenv Fix
eval "$(nodenv init -)"

# General Aliases
alias cls="clear"
alias zshconfig="nvim ~/.zshrc"
alias nvimconfig="nvim ~/.config/nvim/"
alias nvimdir="cd ~/.config/nvim/"

# Git Aliases
alias gg="git grep"

# Learning Aliases
alias exer="cd ~/Exercism/ruby"
alias awd="cd ~/Development/AWD_Book/"
alias dep="cd ~/Development/AWD_Book/depot/"
alias cdep="open ~/Development/AWD_Book/depot_code/"
alias tst="cd ~/Development/Testing/"

# Ruby Aliases
alias be="bundle exec"

# Rails Aliases
alias cll="rails log:clear"
alias spc="bundle exec rspec --format documentation"
alias spcb="bundle exec rspec --format documentation && bundle exec standardrb --format progress"
alias spcof="rspec --format documentation --only-failures"

# HAG Aliases
alias hag="cd ~/Development/HAG/"
alias bhag="open https://github.com/Hendrick"
alias inv="cd ~/Development/HAG/inventory-exemption-request"
alias binv="open https://github.com/Hendrick/inventory-exemption-request"
alias pri="cd ~/Development/HAG/hendrick-privacy/"
alias bpri="open https://github.com/Hendrick/hendrick-privacy"
alias dom="cd ~/Development/HAG/hendrick-domains/"
alias bdom="open https://github.com/hendrick/hendrick-domains"
alias sch="cd ~/Development/HAG/schwans-parts/"
alias bsch="open https://github.com/Hendrick/schwans-parts"
alias rec="cd ~/Development/HAG/recognize/"
alias brec="open https://github.com/Hendrick/recognize"
alias atl="cd ~/Development/HAG/hendrick-atlas-v2/"
alias batl="open https://github.com/Hendrick/hendrick-atlas-v2"
alias rhf="cd ~/Development/HAG/ricky-hendrick-foundation/"
alias brhf="open https://github.com/Hendrick/ricky-hendrick-foundation"
alias ebs="cd ~/Development/HAG/hendrick-engine-builder-showdown/"
alias bebs="open https://github.com/Hendrick/hendrick-engine-builder-showdown"

# Browser Aliases
alias lcl="open http://localhost:3000/"
source /usr/local/opt/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
