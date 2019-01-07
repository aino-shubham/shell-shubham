count_line()
{
	wc -l $abc
}

count_word()
{
	wc -w $abc
}

echo "Enter The name of the File"
read abc
if [ -f /home/intern5/Ass2/$abc ]
then    
        echo file exit
	echo "The Number of line in the file are"        
	count_line
	echo "THe Number of words in the file are "
	count_word
else    
        echo file does note exit
        
fi    
