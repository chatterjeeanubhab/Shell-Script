reverse(){
    arg=$1
    rev=0
    while [ $arg -gt 0 ]
    do
        s=$(( arg % 10 )) 
        arg=$(( arg / 10 ))
        rev=`echo "scale=2; $rev*10 + $s"|bc`
    done 

    if [ $rev -eq $1 ]
    then 
        echo 1
    else
        echo 0
    fi
}

read -p "Enter the lower and upper range : " lr ur 

for (( i=lr ; i<=ur ; i++ ))
do 
    k=`reverse $i`
    if [ $k -eq 1 ]
    then
        echo $i
    fi
done 
