count_line()
{
	wc -l $abc
}

count_word()
{
	wc -w $abc
}
echo "Select any one 1)Count_Line  2)Count Word  "
while :
do
  read INPUT_STRING
  case $INPUT_STRING in
	Count_Line)
		count_line
		break
		;;
	Count_Word)
		count_word
		break
		;;
	*)
		echo "Wrong Choice"
		;;
  esac
done
