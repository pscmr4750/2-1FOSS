#Shell script to show various system configurations

echo "\n1)Currently logged user and logname \n2)Current Shell \n3)Home Directory \n4)Operating System Type \n5)Current Path Setting \n6)Current Working Directory \n7) Current logged no.of users"
echo "Enter option (1-7):"
read op
case $op in
	1) echo "Current logged user: $USER"
		echo "Logname: $LOGNAME"
	;;
	2) echo "Current Shell: $SHELL"
	;;
	3) echo "Home Directory: $HOME"
	;;
	4) echo "Operating System & it's version:"
		cat /proc/version
	;;
	5) echo "Current Path Setting: $PATH"
	;;
	6) echo "Current Working Directory:"
		pwd
	;;
	7) echo "Current logged no. of users:"
		who| wc - l 
	;;
	8) exit
	;;
	*) echo "Invalid"
	;;
esac
