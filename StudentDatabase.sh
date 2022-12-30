insert(){
	echo "enter details"
	read roll name marks
	echo "$roll|$name|$marks">>student.txt
	cat student.txt
}
delete() {
	echo "Enter roll to be deleted"
	read roll
	x=`wc -l<student.txt`
	for (( i=2;i<=x;i++ ))
	do
		y=`head -n $i student.txt|tail -n 1|cut -d \| -f 1`
		if [ $roll == $y ]
		then
			break
		fi
	done
	
		rm temp.txt
	head -n $(($i-1)) student.txt>>temp.txt
	tail -n $(($x-$i)) student.txt>>temp.txt
	
	cat temp.txt>student.txt

	cat student.txt
}


update() {
	echo "Enter roll to be updated"
	read roll
	echo "enter new marks"
	read marks

	x=`wc -l<student.txt`
	for (( i=2;i<=x;i++ ))
	do
		y=`head -n $i student.txt|tail -n 1|cut -d \| -f 1`
		if [ $roll == $y ]
		then
			tempRoll=`head -n $i student.txt|tail -n 1|cut -d \| -f 1`
			tempName=`head -n $i student.txt|tail -n 1|cut -d \| -f 2`
			break
		fi
	done
	
		rm temp.txt
	head -n $(($i-1)) student.txt>>temp.txt
	echo "$tempRoll|$tempName|$marks">>temp.txt
	tail -n $(($x-$i)) student.txt>>temp.txt
	
	cat temp.txt>student.txt

	cat student.txt
}

 
display() {
	cat student.txt
}




ch=1
while [ $ch -ne 0 ] 
do
	echo "give choice 1.Insert 2.Delete 3.Update 4. Display 0.Exit"
	read c
	case $c in
	
	1) insert
	;;

	2) delete
	;;

	3) update
	;;

	4) display
	;;
	
	0) ch=0
	;;
	
	esac	

done
