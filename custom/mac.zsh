
#macvim
if [[ $('uname') =~ "Darwin" ]];then
	
	alias vi='mvim -v'

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
		elif [[ "$1" =~ "^[d-h]{1}$" ]] ;then
			cd /Volumes/${1}_win
		else
			builtin cd "$@"
		fi
	}
fi
