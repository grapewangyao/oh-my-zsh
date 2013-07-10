function ssh()
{
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
