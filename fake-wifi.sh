#!/bin/bash
#Coded by:D@rk_Synt@x
#Instagram: its_.error._
#Tool to Create Fake Wifi APs Easily and Neatly! 
#------------------------------------------------------#
# Author                 D@rk_Synt@x                   #
# Instagram              its_.error._                  #
# Github                https://github.com/DarkSyntax7 #
#      Follow Me On Instagram!!                        #
#------------------------------------------------------#
clear

trap 'printf "\n";stop' 2
trap 'exit 130' INT

echo -e "\033[1;91m\n[!]Tool Created By D@rk_Synt@x !!! \n\033[1;m"

read -rsn1 -p"[!]Press any key to continue....";echo

printf "\n"

if [[ $EUID -ne 0 ]]; then
   echo -e "\033[1;91m\n[!] Fake-Wifi must be run as root. Aborting....¯\_(ツ)_/¯ \n\033[1;m";
   exit 1;
fi  

requirements() {

clear

echo -e "\n[!]Installing Requirements! Please wait...." 
sleep 3

printf "\n"

apt-get install ruby

FILE=lolcat-master
if [ -d "$FILE" ]; then
echo "$FILE Already Exist!."
else
wget https://github.com/busyloop/lolcat/archive/master.zip
unzip master.zip
rm master.zip
cd lolcat-master/bin/
gem install lolcat
cd ..
fi

apt-get install pv
apt-get install figlet
apt-get install mdk3
apt-get install xterm
apt-get install toilet

sleep 1

clear

}

banner() {

sleep 2

echo "[!]Requirements Successfully Satisfied!" | pv -qL 25 | lolcat

sleep 1

clear

toilet -f big -F border "Fake-Wifi." | lolcat

echo "[BY: D@rk_Synt@x | Instagram: its_.error._ | v1.0]" | pv -qL 40 | lolcat

printf "\n"

echo "[ Tool to Create Fake Wifi APs Easily and Neatly!]" | pv -qL 40 | lolcat

printf "\n"

echo "               [ Using MDK3 ]" | pv -qL 40 | lolcat

printf "\n"

echo "        [ This Tool is Just For Fun! ]" | pv -qL 40 | lolcat

printf "\n"

sleep 2

}

main() {

echo "[!]Note: Please use a Strong Wifi-Adapter to start a Stronger Attack! with Large Range." | pv -qL 35 | lolcat

sleep 1

printf "\n"

echo -e "[!]Please choose the Network Interface:\n" | pv -qL 40 | lolcat

echo "------------------------------------------!" | pv -qL 40 | lolcat
printf "\n"
iwconfig | lolcat
echo "------------------------------------------!" | pv -qL 40 | lolcat
printf "\n"
read -p $'\033[1;91m[!]Enter Your Choice: \033[1;m' network_interface

echo -e "\n[~]Your Selected NI Card:~[ $network_interface ]\n" | pv -qL 30 | lolcat

sleep 2

clear

printf "\n[!]Instructions:\n"
sleep 1
echo -e "-----------------------------------------------------------------------!" | pv -qL 45 | lolcat
echo -e "\n[~] There is a 'fake_wifi.lst' File in this Directery!\n" | pv -qL 40 | lolcat
echo -e "\n[~] Open that File and Type your Fake AP Names that you want to show.\n" | pv -qL 40 | lolcat
echo -e "\n[~] Seperate Each Name With Enter Key!\n" | pv -qL 40 | lolcat
echo -e "-----------------------------------------------------------------------!" | pv -qL 45 | lolcat

sleep 2
printf "\n"
read -rsn1 -p"[!]Did You Have Entered The Fake AP Names?[Enter]";echo

printf "\n"
printf "[!]OK" | pv -qL 30 | lolcat

sleep 1

clear
printf "\n"
echo "[!]Putting Network Interface into Monitor Mode!..." | pv -qL 40 | lolcat
printf "\n"
timeout 5 xterm -hold -T Monitor_Mode -e "airmon-ng start $network_interface"

mon=$(echo "mon")

sleep 2

echo -e "\nPress Any Key To Start !" | pv -qL 40 | lolcat

read -rsn1 -p"_";echo

printf "\n"

printf "[~]OK!" | pv -qL 30 | lolcat
sleep 1

printf "\n"

toilet -f term -F border "Attack is Started ! ¯\_(*)_/¯" | lolcat
printf "\n"
printf "To Put Network Interface into Managed Mode, run managed_mode.sh script in terminal!" | lolcat

xterm -hold -T Attack -e "printf '\n' && toilet -f term -F border 'Attack is Started ! ¯\_(*)_/¯' | lolcat && printf '\n' && echo -e 'Check on other Devices !' | pv -qL 30 | lolcat && mdk3 $network_interface$mon b -c 1 -f wifi.lst"
}
requirements
banner
main

#------------------------------------------------------#
# Author                 D@rk_Synt@x                   #
# Instagram              its_.error._                  #
# Github                https://github.com/DarkSyntax7 #
#      Follow Me On Instagram!!                        #
#------------------------------------------------------#