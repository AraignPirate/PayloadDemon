#!/bin/bash
pwde=`pwd`
echo `chmod +x *`
for i in {"apk","exe","elf","scrpt"}
do
if [ -z "$( ls -A ../$i)" ]
then 
	echo -e "\e[1;36;48mTHE DIRECTORIES $i IS ALREADY EMPTY\e[0m"
else
	echo -e "\e[1;36;48m$i IS NOT EMPTY\e[0m"
	read -p "DO YOU WANT TO RESET $i IT WILL ERASE ALL DATA IN IT (y=1/n=2) : " choice
	if [ $choice -eq 1 ]
	then 	
		echo `rm ../$i/*`
	else 
		echo 
	fi		
fi
done
