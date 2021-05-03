clear

trap 'printf "\n";stop' 2
trap 'exit 130' INT

echo -e "\033[1;91m\n[!]Tool Created By D@rk_Synt@x !!! \n\033[1;m"

read -rsn1 -p"[!]Press any key to continue....";echo

printf "\n"

if [[ $EUID -ne 0 ]]; then
   echo -e "\033[1;91m\n[!] Managed Mode must be run as root. Aborting....¯\_(ツ)_/¯ \n\033[1;m";
   exit 1;
fi  

managed_mode () {

clear 
printf "\n"
printf "Have You Enjoyed the Attack??? :)" | pv -qL 30 | lolcat 
printf "\n"
printf "[!] Putting Network Interface in Managed Mode (Normal Mode):\n" | pv -qL 30 | lolcat
iwconfig | lolcat 

echo "------------------------------------------!" | pv -qL 40 | lolcat
printf "\n"
read -p $'\033[1;91m[!]Please Choose your Network Interface as shown above: \033[1;m' network_interface

echo -e "\n[~]Your Selected NI Card:~[ $network_interface ]\n" | pv -qL 45 | lolcat

sleep 2
printf "[!] Putting $network_interface in Managed Mode:" | pv -qL 45 | lolcat
printf "\n"
airmon-ng stop $network_interface
printf "\n"
printf "[!] Done!" | lolcat
}
managed_mode 