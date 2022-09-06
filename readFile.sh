echo "Number of arguments passed $#"
echo "all arguments are a single string: $*"
echo "all argumets as a separate list $@"
echo "first argument $1"

for fileName in $@;do 
	echo Reading ${fileName}
	if [ -e $fileName ]; then
	       echo "File exists, Contents are --------------------------------------------------------"
	       cat $fileName | while read line ; do
	       	echo $line
		done
		echo "END------------------------------------------------------------------------------END"
	else
		echo "file doesn't exist"
	fi
done
