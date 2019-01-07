choice()
{
	echo "Enter your choice"
	read val
	if [ $val == start ]
	then starting
	
	elif [ $val == end ]
	then Ending
	
	elif [ $val == patern ]
	then pattern
	
	elif [ $val == full ]
	then fullword
	
	elif [ $val == line ]
	then wordtoword

	elif [ $val == char ]
	then character
	
	elif [ $val == endw ]
	then endswith	
	
	elif [ $val == startw ]
	then startwith	
	
	elif [ $val == diff ]
	then matchspelling	
	
	elif [ $val == Rg ]
	then Rg	

	elif [ $val == exit ]
	then exit

fi
	
}
starting()
{
	echo "enter the wor which you want to search"
	read word1
	grep --color=always -E '\b'$word1 $file
	choice
}
Ending()
{	
	
	echo "enter end the wor which you want to search"
	read word1
	grep --color=always -E $word1'\b' $file
	choice
}
pattern()
{
	
	echo "enter the wor which you want to search"
	read word1
	grep --color=always "$word1" $file	
	choice
}
fullword()
{

	echo "enter the wor which you want to search"
	read word1
	grep --color=always -w "$word1" $file
	choice
}

wordtoword()
{

	echo "word1 to word2 search  "
	read word1
	read word2
	fgrep --color=always -w $word1.*$word2 $file
	choice
}
character()
{
	echo "enter the character"
	read word1
	fgrep --color=always "$word1" $file
	choice
}
endswith()
{
	
	#echo "enter the character"
	#read word1
	grep -o '^.{3}(.{4})' $file
	choice
}
startwith()
{
	
	#echo "enter the character"
	#read word1
	grep -o '^.\{4\}' $file
	choice
}
matchspelling()
{
	
	#echo "enter the character"
	#read word1
	grep --color=always "gr[ae]y" $file
	choice
}
Rg()
{

	grep --color=always '[a-d]' a.txt 
	choice
}

echo "Enter the file name"
read file
	if [ -f /home/intern5/Ass3/$file ]
	then
		echo "file exist"
		choice
	else
		touch $file
			
fi



