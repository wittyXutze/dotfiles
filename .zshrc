# If you come from bash you might have to change your $PATH.
#export PATH=$HOME/bin:/usr/local/bin:$PATH

fpath=($HOME/completion_zsh $fpath)
#fpath+=${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions/src

# Path to your oh-my-zsh installation.
  export ZSH="/home/withold/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
#ZSH_THEME="robbyrussell"
#ZSH_THEME="bira"
ZSH_THEME="bira"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
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
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.

#   autojump

plugins=(
  git
  fasd 
  wd
  zsh-autosuggestions 
  zsh-syntax-highlighting
)

########
# wd warp directory
########
wd() {
    . ~/.local/wd/wd.sh
}

########
# autojump
########
#[[ -s /etc/profile.d/autojump.zsh ]] && . /etc/profile.d/autojump.zsh
#[[ -s /home/withold/.autojump/etc/profile.d/autojump.sh ]] && source /home/withold/.autojump/etc/profile.d/autojump.sh
autoload -U compinit && compinit -u

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
#
# Set up the prompt

autoload -Uz promptinit
promptinit

source ~/dotfiles/.profile
. ~/.zsh_aliases

#source $ZSH/plugins/zsh-git-prompt/zshrc.sh

#PROMPT='%B%F{cyan}.%b%F{cyan}-%B%F{black}(%B%F{green}%~%B%F{black})%b%F{cyan}------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------%B%F{black}(%b%F{cyan}%n%B%F{cyan}@%b%F{cyan}%m%B%F{black})%b%F{cyan}-%}%B%F{cyan}\`$(git_super_status) -%b%F{cyan}-%B%F{white}%B%F{white}%(!.#.>) %b%f%k' 
#PROMPT='%B%m%~%b$(git_super_status) %# '

setopt histignorealldups sharehistory

# Use emacs keybindings even if our EDITOR is set to vi
bindkey -e

# Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history

# Use modern completion system
autoload -Uz compinit
compinit

zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' menu select=2
eval "$(dircolors -b)"
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
zstyle ':completion:*' menu select=long
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true

zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'

# Unterstützung meiner Laptop's im make für arm's like Daniel
export ATMEL_PROJECTS="/mnt/sdb2/new"
export VSPRJ="/mnt/projects"
export VSMSF="/mnt/projects/msf"
#export VSARM="/opt/gcc-arm-11.2-2022.02-x86_64-arm-none-eabi/"

#export PATH=/opt/gcc-arm-none-eabi-9-2019-q4-major/bin:$PATH
#export PATH=/opt/gcc-arm-11.2-2022.02-x86_64-arm-none-eabi/bin:$PATH

export PATH=/home/withold/.local/bin:$PATH


# setopt auto_pushd
# setopt pushd_ignore_dups

source /usr/share/fzf/completion.zsh
source /usr/share/fzf/key-bindings.zsh  

export PATH=$PATH:~/.cargo/bin

# source ~/bin/z/z.sh

if type exa 2>/dev/null; then
   alias ls='exa'
   alias l='exa -l --all --group-directories-first --git'
   alias ll='exa -l --all --all --group-directories-first --git'
   alias lt='exa -T --git-ignore --level=2 --group-directories-first'
   alias llt='exa -lT --git-ignore --level=2 --group-directories-first'
   alias lT='exa -T --git-ignore --level=4 --group-directories-first'
else
   alias l='ls -lah'
   alias ll='ls -alF'
   alias la='ls -A'
fi

alias myip="curl http://ipecho.net/plain; echo"

#export PATH=$PATH:/home/withold/.platformio/penv/bin/platformio
alias get_esp32='export PATH="$HOME/esp/xtensa-esp32-elf/bin:$PATH"'

ZSH_THEME_PROJECT_CFG_PROMPT_PREFIX="("
ZSH_THEME_PROJECT_CFG_PROMPT_SUFFIX=")"
ZSH_THEME_PROJECT_CFG_PROMPT_CONFIG="%{$fg_bold[magenta]%}"

function project_cfg_status() {
    if [[ ! -v "$PROJECT_CFG" ]]; then
        STATUS="$ZSH_THEME_PROJECT_CFG_PROMPT_PREFIX$ZSH_THEME_PROJECT_CFG_PROMPT_CONFIG$PROJECT_CFG%{${reset_color}%}$ZSH_THEME_PROJECT_CFG_PROMPT_SUFFIX "
        echo "$STATUS"
    fi
}


export PCB=/home/withold/Leiterplatten
export KICAD_CONFIG_HOME=$PCB/KiCAD_env
export KICAD_ENV=$KICAD_CONFIG_HOME

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

eval "$(oh-my-posh init zsh)"

export WINECFG_DPI=140

source /home/withold/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

export PATH="/opt/OpenPLC_Editor/matiec:$PATH"

export PATH="$HOME/.npm-global/bin:$PATH"

export PATH=/usr/local/texlive/2025/bin/x86_64-linux:$PATH
export MANPATH=/usr/local/texlive/2025/texmf-dist/doc/man:$MANPATH
export INFOPATH=/usr/local/texlive/2025/texmf-dist/doc/info:$INFOPATH
export TEXMFDIST=/usr/local/texlive/2025/texmf-dist

# In ~/.bashrc oder ~/.zshrc einfügen
ZJ_LAYOUT_DIR="${ZELLIJ_LAYOUT_DIR:-$HOME/.config/zellij/layouts}"

zjsave() {
  local dir="$ZJ_LAYOUT_DIR"
  mkdir -p "$dir" || return 1
  local name="${1:-layout_$(date +%Y-%m-%d_%H-%M-%S)}"
  local path="$dir/${name%.kdl}.kdl"
  zellij action dump-layout > "$path" && echo "Saved → $path"
}

# (optional) schnell laden + auflisten:
zjload() { local name="${1:?Usage: zjload <name|path>}"; [ -f "$name" ] && zellij -l "$name" || zellij -l "${name%.kdl}"; }
zjlist() { ls -1 "$ZJ_LAYOUT_DIR"/*.kdl 2>/dev/null | sed 's#.*/##;s#\.kdl$##'; }

alias treed='tree -L 2 -a -I ".git|.gitignore|.gitmodules" --dirsfirst'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
# source /opt/esp-idf/export.sh > /dev/null 2>&1

alias get_idf='source /opt/esp-idf/export.sh >/dev/null 2>&1'alias idf_off='deactivate'
alias idf_off='deactivate'
alias mon1="ddcutil setvcp 60 0x11 --bus 0"
alias mon2="ddcutil setvcp 60 0x12 --bus 0"
DEFAULT_USER="nobody"
PROMPT="%n@%m %~ %# "

# Force prompt after all other hooks
precmd_functions+=(set_my_prompt)
set_my_prompt() {
    PROMPT="╭─%B%{$fg[green]%}%n@%m%{$reset_color%} %B%{$fg[blue]%}%~ %{$reset_color%}
╰─%B%(!.#.$)%b "
}
eval "$(zoxide init zsh)"
function y() {
  local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
  yazi "$@" --cwd-file="$tmp"
  if cwd="$(cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
    builtin cd -- "$cwd"
  fi
  rm -f -- "$tmp"
}

# ─────────────────────────────────────────────
# IFBS Entwicklungsumgebung
# ─────────────────────────────────────────────
export IFBS_ROOT="$HOME/Dokumente/clients/ebara/IFBS"
export IFBS_STICK="$IFBS_ROOT/IFBS_usb_stick/IFBS"
export PATH="$IFBS_STICK:$PATH"

# ifbs + stage: direkt als Scripts in IFBS/ (./ifbs, ./stage)
# kein Alias nötig — Scripts erkennen Pfade automatisch

alias private-docs='cd ~/Dokumente/mkdocs && source venv/bin/activate && mkdocs serve --dev-addr 127.0.0.1:8001'
alias ifbs-docs='cd ~/Dokumente/clients/ebara/IFBS/IFBS_online_docs && source .venv/bin/activate && mkdocs serve'
alias ifbs-pdf='cd ~/Dokumente/clients/ebara/IFBS/IFBS_online_docs && source .venv/bin/activate && ENABLE_PDF_EXPORT=1 mkdocs build && echo PDF: $(pwd)/site/pdf/IFBS_Dokumentation.pdf'
