source ~/.bash_prompt
source ~/.bashrc

# autocompletion
[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion

# functions

#script to update brew packages
update(){
	brew update && brew upgrade && brew cleanup
}

#Function to commit nd push local changes to github repository
github(){
	git add .
	git commit -m "$1"
	git pull --rebase
	git push -u origin $2

}

# Set Vi keybinding in Bash
set -o vi

# sets oh-my-posh config useful for VSCode
eval "$(oh-my-posh --init --shell bash --config ~/.mytheme.omp.json)"

# Created by `pipx` on 2023-04-11 00:29:16
export PATH="$PATH:/Users/shubham/.local/bin"
eval "$(register-python-argcomplete pipx)"

alias ip='curl curlmyip.net'

# alias useful for tracking dot-files
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

# removes warning that zsh is default shell in mac
export BASH_SILENCE_DEPRECATION_WARNING=1
