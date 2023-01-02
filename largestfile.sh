if [ $# -eq 0 ]
then
	echo "No arguments"
fi

max=0
filename=""

for i in $*
do
	if [ -f $i ]
	then
		set `cat $i|wc`
		currFile=$i
		count=$3 
		
		if [ $count -gt $max ]
		then
			max=$count
			filename=$currFile
		fi
	fi
done

echo "Largest File is $filename"
