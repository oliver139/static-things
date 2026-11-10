export PATH=$HOME/bin:/usr/local/bin:$PATH

# -------------------------------- #
# Oh my zsh
# -------------------------------- #
export ZSH="$HOME/.oh-my-zsh"
zstyle ':omz:update' mode auto      # update automatically without asking
zstyle ':omz:update' frequency 7

plugins=(sudo)
source $ZSH/oh-my-zsh.sh

# -------------------------------- #
# Alias
# -------------------------------- #
alias sl="ls"
alias ks="ls"
alias cd..="cd .."

# alias pn="pnpm"
# alias pu="pnpm env use --global"
alias pu="pnpm runtime set node -g"
alias pls="pnpm env ls"
alias plsr="pnpm env ls --remote"
alias vs="pnpm run serve || pnpm run dev"
alias pns="pnpm start"
alias pup="pnpm update -g"
alias esin="pn add -D eslint @oliver139/eslint-config"

alias regitignore="git rm -r --cached .;git add ."

alias update="pnpm self-update & brew update & omz update; wait;"

alias ncu="pnpx npm-check-updates --format group -i --packageManager pnpm"
alias ta="taze"
alias taze="pnpx taze -I"
alias nuxi="pnpx nuxi"
alias tsx="pnpx tsx"
alias nip="pnpx @antfu/nip"

# -------------------------------- #
# starship.rs
# -------------------------------- #
eval "$(starship init zsh)"

# -------------------------------- #
# PNPM
# -------------------------------- #
export PNPM_HOME="/Users/olivermak/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME/bin:"*) ;;
  *) export PATH="$PNPM_HOME/bin:$PATH" ;;
esac

export PATH="$PATH:/Users/olivermak/.local/bin"

# -------------------------------- #
# MacOS FileProvider Ignore
# -------------------------------- #
nosync() {
  [[ $# -eq 0 ]] && set -- "node_modules" ".git"
  
  for arg in "$@"; do
      mkdir -p "$arg"
      xattr -w 'com.apple.fileprovider.ignore#P' 1 "$arg"
  done
}
