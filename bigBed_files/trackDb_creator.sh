#!/bin/bash
wd=/usr/local/bioinf/Rloop_beds/bigBed_files/*.bb
output=/usr/local/bioinf/Rloop_beds/bigBed_files/trackDb.txt
for i in $wd; do
	echo $i
	track=`ls $i | cut -d"." -f1,2,3 | cut -d"/" -f7`
	url=`ls $i | cut -d"/" -f7`
	shortLabel=`ls $i | cut -d"." -f1 | cut -d"_" -f4,5`
	longLabel=`ls $i | cut -d"." -f1,2,3 | cut -d"/" -f7`
	echo -e "track" $track '\n'"bigDataUrl" $url '\n'"shortLabel" $shortLabel '\n'"longLabel" $longLabel '\n'"type" "bigbed 5" '\n'"useScore" "1" '\n' >>$output
done
