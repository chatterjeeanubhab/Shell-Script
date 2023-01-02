echo "Enter size of array::"
read n

echo "enter array elements::"

for ((i=0;i<n;i++))
do
read arr[$i]
done

for ((i=0;i<n-1;i++))
do

 for ((j=0;j<n-1-i;j++))
 do

     if [ ${arr[j]} -gt ${arr[j+1]} ]
     then
          temp=${arr[j]}
          arr[j]=${arr[j+1]}
         arr[j+1]=$temp
    fi

 done

done
echo "SORTED ARRAY:: ${arr[@]}"
