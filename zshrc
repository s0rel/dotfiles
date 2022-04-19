export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(
    aliases
    colored-man-pages
    colorize
    common-aliases
    encode64
    extract
    fancy-ctrl-z
    fzf
    git
    gitignore
    macos
    mvn
    redis-cli
    sublime
    systemadmin
    systemd
    tmux
    urltools
    web-search
)

source $ZSH/oh-my-zsh.sh

# alias
alias ...=../..
alias ll='ls -lh'
alias md='mkdir -p'
alias rm='rm -iv'
alias cp='cp -iv'
alias mv='mv -iv'
alias diff='colordiff'
alias dir='dir --color=auto'
alias vdir='vdir --color=auto'
alias grep='grep --color=auto --ignore-case --with-filename --line-number'
alias egrep='egrep --color=auto --ignore-case --with-filename --line-number'
alias vi='vim -u NONE -N' #  -u NONE 表示不加载外部 vimrc， -N 关闭兼容模式 'vim --noplugin'
alias file='file --mime'
alias javac='javac -encoding UTF-8 -J-Duser.language=en'

# git alias
alias gst='git status'
alias gss='git status --short'
alias gsb='git status --short --branch'
alias ga='git add'
alias gaa='git add .'
alias gb='git branch'
alias gbr='git branch --remote'
alias gcmsg='git commit -m'
alias gd='git diff'
alias gds='git diff --staged'
alias gp='git push'
alias gl='git pull'
alias gsw='git switch'
alias gswc='git switch --create'
alias gcl='git clone --recurse-submodules'
alias glo='git log --oneline --decorate'
alias gls='git log --stat' # 查看文件改动的数量
alias gcount='git shortlog --summary --numbered' # 查看项目 commit 数量最多的人及其 commit 数量
alias ggsup='git branch --set-upstream-to=origin/$(git_current_branch)'
alias ghh='git help'



# variables
# <C-x><C-e> 在 Vim 中编辑命令，保存后重定向到 Shell 中
export EDITOR=vim
export VISUAL=vim
export SYSTEMD_EDITOR=$EDITOR
export GIT_EDITOR=vim
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8



export MAVEN_HOME=/Users/sorel/Applications/apache-maven-3.8.5
export PATH=$MAVEN_HOME/bin:$PATH

# 使用 startup.sh 开启 tomcat，使用 shutdown.sh 关闭 tomcat，不输出日志的话，可以使用 catalina.sh 来启动和关闭 tomcat
export CATALINA_HOME=/Users/sorel/Applications/apache-tomcat-9.0.41
export PATH=$CATALINA_HOME/bin:$PATH

export PATH=${PATH}:/usr/local/mysql/bin

# 查看预定义的 git 命令别名
# cat ~/.oh-my-zsh/plugins/git/git.plugin.zsh

# d 列出最近访问过的各个目录


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_BASE=/Users/sorel/.fzf/bin/fzf
export FZF_DEFAULT_COMMAND='rg'

if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH

  autoload -Uz compinit
  compinit
fi

