echo "Enter Character"
read ch

case $ch in 

	'A'|'E'|'I'|'O'|'U') echo "$ch is a Vowel"
	;;

	'a'|'e'|'i'|'o'|'u') echo "$ch is a Vowel"
	;;
	
	*) echo "$ch is NOT a vowel"
	;;
esac
