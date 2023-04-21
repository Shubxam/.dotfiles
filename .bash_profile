source ~/.bash_prompt
source ~/.bashrc

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

eval "$(oh-my-posh --init --shell bash --config ~/.mytheme.omp.json)"

# Created by `pipx` on 2023-04-11 00:29:16
export PATH="$PATH:/Users/shubham/.local/bin"
eval "$(register-python-argcomplete pipx)"
[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion

alias ip='curl curlmyip.net'

export BASH_SILENCE_DEPRECATION_WARNING=1
