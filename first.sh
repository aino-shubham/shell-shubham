sort_word()
{
	cat $abc | tr " " "\n" | sort | tr "\n" " ";
	echo
}
sort_line()
{
	sort $abc
}
sort_reverse()
{
	sort -r $abc
}
Choice()
{
	echo "Enter What you have to do With File 1)sort_word 2)sort_line"
	read val
	if [ $val == sort_word ]
	then
		sort_word
	elif [ $val == sort_line ]
	then
		sort_line
	elif [ $val == sort_reverse ]
	then
		sort_reverse
fi 
}

echo "Enter the file name"
read abc
if [ -f /home/intern5/Ass2/$abc ]
then
	echo "File exist"


else 
	echo "file does not exit"
fi	
