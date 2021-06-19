#!/bin/bash
path=$(pwd)
if command -v xfce4-terminal &> /dev/null
  then
    if [[ -e "$path/bin/.setupdone" ]]
      then
        xfce4-terminal --title="PAYLOAD DEMOM" --color-bg="black" --execute $path/bin/venom_demon.sh $path &
      else
        echo "[+] Run This command for setup: cd ./bin && bash setup_demon.sh && cd .."
    fi
  else
    try=`sudo apt-get install xfce4-terminal -y &> /dev/null`
    if [[ $? -eq 0 ]]
    then
      if [[ -e "$path/bin/.setupdone" ]]
      then
        xfce4-terminal --title="PAYLOAD DEMOM" --color-bg="black" --execute $path/bin/venom_demon.sh $path &
      else
        echo "[+] Run This command for setup: cd ./bin && bash setup_demon.sh && cd .."
    fi
    else
      echo "[+] Install xfce4-terminal"
      echo "[+] using : sudo apt-get install xfce4-terminal"
    fi
fi
