
#macvim
if [[ $('uname') == "Darwin" ]];then
	alias vi='mvim -v'
else
	alias vi='vim'
fi

#reload oh_my_zsh
alias reload='source ~/.zshrc'

#cd to windows volumes
cd () {
	if   [[ "x$*" == "x..." ]]; then
		cd ../..
	elif [[ "x$*" == "x...." ]]; then
		cd ../../..
	elif [[ "x$*" == "x....." ]]; then
		cd ../../../..
	elif [[ "x$*" == "x......" ]]; then
		cd ../../../../..
	elif [ -d ~/.autoenv ]; then
		source ~/.autoenv/activate.sh
		autoenv_cd "$@"
	elif [[ "$1" =~ "^[d-h]{1}$" ]] ;then
		cd /Volumes/${1}_win
	else
		builtin cd "$@"
	fi
}
