#!/bin/bash
chown(){
if [[ -d $1 ]]
then 
	sudo chown jayaraghavan_f_alv:jayaraghavan_f_alv $1
	cd $1
	dir=`ls`
	for files in $dir 
	do
		chown $files
	#	echo $files
	done
	cd ..
else 
	#echo $1
	sudo chown jayaraghavan_f_alv:jayaraghavan_f_alv $1
fi
	}
chown $1

