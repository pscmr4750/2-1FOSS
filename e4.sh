while [ 1 ]
do

echo "\n 1)OS & Ver.,Release number,Kernel Ver.\n 2)Show all available shells\n 3)Show Mouse settings\n 4)Show computer CPU info (processor type, speed..)\n 5)Show memory info\n 6)Show hard disk info (hard disk size, cache memory, model..)\n 7)File System (Mounted)"
echo "Enter option:"
read op
case $op in
	1)  echo "OS & version, release number, kernel version"
	if [ -f /etc/os-release ]
	then
		echo "OS:"
		cat /etc/os-release
	fi
	;;
	2)	echo "All available shells:"
	if [ -f /etc/shells ]
	then
		cat /etc/shells
	fi
	;;
	3)	echo "Mouse settings:"
		xinput --list 10
	;;
	4)	echo "CPU info:"
	if [ -f /proc/cpuinfo ]
	then
		cat /proc/cpuinfo
	fi
	;;
	5)	echo "Memory info:"
	if [ -f /proc/meminfo ]
	then
		cat /proc/meminfo
	fi
	;;
	6)	echo "Hard Disk info:"
		echo "Model: `cat /proc/ide/hda/model`"
		echo "Driver: `cat /proc/ide/hda/driver`"
		echo -e "Cache Size: `cat /proc/ide/hda/cache`"
	;;
	7) 	echo "File System:"
		cat /proc/mounts
	if which dialog > /dev/null 
	then
		dialog --backtitle "Linux Software Diagnostics (LSD) Shell Script Ver.1.0"--title
		"Press Up/Down keys to move"--textbox /tmp/ info.tmp.01.$$$ 21 70
	else
		cat /tmp/ info.tmp.01.$$$ |more
	fi

	rm -f/tmp/info.tmp.01..$$$
	;;
	*)	echo "Invalid option"
		exit;;
esac

done
