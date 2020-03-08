#!/bin/sh

srcDir=$1
destDir=$2

i=0

cd $srcDir

find . | grep -v ^\.$ | cut -c 3- | while read line
do
i=$[$i+1]
echo "($i)"$line

if [ -d $line ]
then
	echo "($i)[DIR]"$line
	mkdir "$destDir/$line"
elif [ -f $line ]
then
		echo "($i)[FIL]"$line
		ln -s "$srcDir/$line" "$destDir/$line"
else
	echo "($i)[SKP]"$line
fi
done

