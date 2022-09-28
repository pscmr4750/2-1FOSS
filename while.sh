#print 1-100 using while loop

echo "Enter n:"
read n
i=1
while [ $i -le $n ]
do
echo $i
i=`expr $i + 1`
done
