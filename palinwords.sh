f1=$1
if [ -f $f1 ]
then  
  
    while read  line
    do 
        set -e `echo $line`
        for str in $*
        do
         
          k=$(echo $str|rev)
            if [ $k == $str ]
            then
                echo "$str "
            fi 
        done
    done < $f1
else
    echo "No argument"
fi
