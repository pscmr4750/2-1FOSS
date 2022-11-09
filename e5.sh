#Scientific calc

echo "Enter a,b:"
read a b
echo "a=$a \t b=$b"
echo "a)Add \n b) Subtract \n c)Multiply \n d)Divide \n e)Remainder"
echo "\nEnter option"
read op
case $op in
	a) res=`expr $a + $b`
	    echo "\n a+b=$res"
	;;	
	b) res=`expr $a - $b`
	    echo "\n a-b=$res"
	;;
	c) res=`expr $a \* $b`
	    echo "\n a*b=$res"
	;;
	d) res=`expr $a / $b`
	    echo "\n a/b=$res"
	;;
	e) res=`expr $a % $b`
	    echo "\n a%b=$res"
	;;
	*)
		echo "Wrong option"
	;;
esac

