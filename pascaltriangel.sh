factorial() {
n=$1
ans=1

for (( i=1;i<=n;i++ ))
do 
	ans=$((ans*i))
done

echo $ans
}

ncr() {
n=$1
r=$2

a1=`factorial $n`
a2=`factorial $r`
z=$((n-r))
a3=`factorial $z`
y=$((a2*a3 ))
ncr=$((a1/y))
echo "$ncr"
}

echo "Enter the number of lines"
read n

for (( i=0;i<n;i++ )) 
do
	for (( k=0;k<=n-i;k++ ))
	do
		echo -n " "
	done

	for (( j=0;j<=i;j++ ))
	do
		ans=`ncr $i $j`
		echo -n " $ans"
	done
echo
done
