val=0
filePrefix=fileName
fileName=$(echo ${filePrefix}${val}.txt)
echo "testing $fileName"
while [ -f ~/$fileName ]; do
	echo $fileName exists
	val=$((val+1))
	fileName=$(echo ${filePrefix}${val}.txt)
done
echo $fileName does not exists
echo "Created file" >> ~/$fileName
