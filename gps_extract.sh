#!/bin/bash
# https://linuxhandbook.com/basename/ details removing the file extension using the basename command

FILE=$1
f=$(basename -- "$FILE" .txt)
echo $f
dirname=$f
# The following line removes the first 9 characters from the filename to remove "gnss_log_"
dirname=${dirname:9}
echo $dirname
mkdir $dirname
cat $1 |grep "GGA" > "$dirname/""$dirname"_GGA.txt
cat $1 |grep "GLL" > "$dirname/""$dirname"_GLL.txt
cat $1 |grep "VTG" > "$dirname/""$dirname"_VTG.txt
cat $1 |grep "RMC" > "$dirname/""$dirname"_RMC.txt
cat $1 |grep "GSA" > "$dirname/""$dirname"_GSA.txt
cat $1 |grep "GSV" > "$dirname/""$dirname"_GSV.txt
cat $1 |grep "OrientationDeg" > "$dirname/""$dirname"_OrientationDegree.txt
cat $1 |grep "Status" > "$dirname/""$dirname"_Status.txt
cat $1 |grep "Raw," > "$dirname/""$dirname"_Raw.txt
cat $1 |grep "DTM" > "$dirname/""$dirname"_DTM.txt
cat $1 |grep "GNS" > "$dirname/""$dirname"_GNS.txt
ls -l "$dirname/"*
