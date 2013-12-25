if [[ $('uname') =~ "CYGWIN" ]];then

	cd () {
		if   [[ "x$*" == "x..." ]]; then
			cd ../..
		elif [[ "x$*" == "x...." ]]; then
			cd ../../..
		elif [[ "x$*" == "x....." ]]; then
			cd ../../../..
		elif [[ "x$*" == "x......" ]]; then
			cd ../../../../..
		elif [[ "$1" =~ "^[d-h]{1}$" ]] ;then
			cd /cygdrive/${1}
		else
			builtin cd "$@"
		fi
	}
	alias vi='vi -u ~/.vimrc'
fi
