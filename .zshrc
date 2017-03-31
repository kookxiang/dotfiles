export ZSH=/Users/kookxiang/.oh-my-zsh
ZSH_THEME="robbyrussell"

plugins=(git npm pip python sudo)
source $ZSH/oh-my-zsh.sh

if [[ -n $SSH_CONNECTION ]]; then
    export EDITOR='vim'
else
    export EDITOR='mvim -f'
fi

export HTTP_PROXY=http://127.0.0.1:8118
export HTTPS_PROXY=http://127.0.0.1:8118
export GOPATH="/usr/local/go"
export PATH="${PATH}:${GOPATH}/bin"
export PATH="/usr/local/sbin:$PATH"
export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.ustc.edu.cn/homebrew-bottles
export ANDROID_HOME=/usr/local/opt/android-sdk
export ANDROID_NDK_HOME=/usr/local/opt/android-ndk
export GOROOT_BOOTSTRAP=/usr/local/opt/go/

alias mvim="mvim -f"
alias zshconfig="mvim ~/.zshrc"
alias cnpm="npm --registry=https://registry.npm.taobao.org"
alias rm=trash
alias vscode="open -a Visual\ Studio\ Code"

eval $(thefuck --alias)

PROXY() {
    export HTTP_PROXY=http://127.0.0.1:8118
    export HTTPS_PROXY=http://127.0.0.1:8118
}

NOPROXY() {
    unset HTTP_PROXY HTTPS_PROXY
}

NODE_LATEST() {
    brew unlink node@6
    brew link node
}

NODE_LTS() {
    brew unlink node
    brew link node@6 --force
}

# test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
