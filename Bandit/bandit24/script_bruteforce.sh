#!/bin/bash
nc localhost 30002
i=0
rm list.txt 2>/dev/null
touch list.txt
while [ 9999 -ge $i ]
do
	if [ $i -lt 10 ]
	then
		echo "gb8KRRCsshuZXI0tUuR6ypOFjiZbf3G8 000$i" >> list.txt
	elif [ $i -lt 100 ]
	then
		echo "gb8KRRCsshuZXI0tUuR6ypOFjiZbf3G8 00$i" >> list.txt
	elif [ $i -lt 1000 ]
	then
		echo "gb8KRRCsshuZXI0tUuR6ypOFjiZbf3G8 0$i" >> list.txt
	else
		echo "gb8KRRCsshuZXI0tUuR6ypOFjiZbf3G8 $i" >> list.txt
	fi
	((i++))
done
