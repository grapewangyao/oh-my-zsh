
#macvim
if [[ `uname -a` =~ "Ubuntu" ]];then
	

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
			cd /media/win_${1}
		else
			builtin cd "$@"
		fi
	}
fi
