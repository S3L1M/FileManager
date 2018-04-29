#! /bin/bash

switcher=$1
var=$2
val=$3

if  [[ "$switcher" == "--file" ]]
then
	if [ -f ="$var" ]
		then
		rm $var
		ls -l -a
	else
		touch $var
		ls -l -a
	fi

elif [ "$switcher" == "--link" ]
then
	if [ -d "$var" ] || [ -f "$var" ]
		then
		ln -s $PWD/$var ~/Desktop
		ls -l -a
	else
#echo "[E] File/Folder doesn't exist!"
fi

elif [ "$switcher" == "--perms" ]
then
        if [ -d "$var" ] || [ -f "$var" ]
                then
		chmod $val $var
		ls -l -a
	else
		#echo "[E] File/Folder doesn't exist!"
	fi

elif [[ "$switcher" == "--folder" ]]
then
	if [ -d "$var" ]
		then
		rm -r $var
		ls -l -a
	else
		#echo "Directory Doesn't Exist!"
		if [ -e "$var" ]
			then
			#echo "However, There seems to be a file with the same name ($var)"
		else
			#echo "Creating it!"
			mkdir $var
			ls -l -a
		fi
	fi

elif [ "$switcher" == "--help" ] || [ "$switcher" == "-h" ]
	then
	scr=$(basename -- "$0")
	echo "Script Usage help"
	echo "==================="
	echo "$scr --file <file name>"
	echo "Creates file if it doesn't exist, Otherwise deletes it."
	echo "==================="
	echo "$scr --folder <folder name>"
	echo "Creates folder if it doesn't exist, Otherwise deletes it."
	echo "==================="
	echo "$scr --perms <file name or folder name> <perms>"
	echo "Sets your file/folder to chosen permissions."
	echo "==================="
	echo "$scr --link <file path or folder path> <location>"
	echo "Creates a symbolic link, Placed automatically on your desktop"
else
	ls -l -a
fi

