function zsh_stats() {
history | awk '{CMD[$2]++;count++;}END { for (a in CMD)print CMD[a] " " CMD[a]/count*100 "% " a;}' | grep -v "./" | column -c3 -s " " -t | sort -nr | nl |  head -n20
}

function uninstall_oh_my_zsh() {
/usr/bin/env ZSH=$ZSH /bin/sh $ZSH/tools/uninstall.sh
}

function upgrade_oh_my_zsh() {
/usr/bin/env ZSH=$ZSH /bin/sh $ZSH/tools/upgrade.sh
}

function take() {
mkdir -p $1
cd $1
}

function ssh(){
if [[ "$1" =~ "^0[0-9]{1}$" ]] ;then
	/usr/bin/ssh "liangwei@yunbd$1.mail.cnb.yahoo.com"
elif [[ "$1" =~ "^s1$" ]] ;then
	/usr/bin/ssh "liangwei@125.208.1.22" -p7888
elif [[ "$1" =~ "^s2$" ]] ;then
	/usr/bin/ssh "liangwei@125.208.1.21" -p7888
else
	/usr/bin/ssh $@
fi
}





