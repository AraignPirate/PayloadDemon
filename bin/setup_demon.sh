#!/bin/bash
pwde=$(pwd)
echo `chmod +x *`
echo -e "\033[32m`sudo apt-get install xfce4-terminal`"
echo
for i in {"apk","exe","elf","scrpt"}
do
if [ -d "../$i" ]
then 
	echo -e "\e[1;36;48mTHE DIRECTORIES $i is ALREADY THERE\e[0m"
else
	echo -e "\e[1;36;48mCREATING DIRECTORIES FOR PAYLOAD $i\e[0m"	
	echo `mkdir ../$i`
fi
done
echo "Setup Done" > .setupdone

