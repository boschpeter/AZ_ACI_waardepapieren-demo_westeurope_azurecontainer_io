#!/bin/bash
# A menu driven shell script sample template 
## ----------------------------------
# Step #1: Define variables
# ----------------------------------
EDITOR=nano
PASSWD=/etc/passwd
RED='\033[0;41;30m'
STD='\033[0;0;39m'

echo "A menu is nothing but a list of commands presented to a user by a shell script"
sleep 1
 . az_aci_clone_build_ship_deploy.bash
 PROMPT=true 
# ----------------------------------
# Step #2: User defined function
# ----------------------------------
pause(){
  read -p "Press [Enter] key to continue..." fackEnterKey
} 
# function to display menus
show_menus() {
	clear
	echo "~~~~~~~~~~~~~~~~~~~~~"	
	echo " M A I N - M E N U"
	echo "~~~~~~~~~~~~~~~~~~~~~"
	echo "1. docker_build_image mock_nlx"
    echo "2. docker_build_image waardepapieren-service"
    echo "3. docker_build_image clerk-frontend"
    echo "4. Reset (docker system prune -a)"
	echo "5. reload az_aci_clone_build_ship_deploy.bash"
	echo "6. open -a Firefox 'https://hub.docker.com/?ref=login' boscp08 Peter!...."
	echo "7. open -a Firefox 'https://portal.azure.com/#home' bosch.peter@outlook.com 0l..ten"
    echo "8. open -a Firefox https://$CERT_HOST_IP:443  " #hope the clerk frontend will be stable "
	echo "9. open -a Firefox https://github.com/BoschPeter/$GIT_REPO "
	echo "10. Exit"
}
# read input from the keyboard and take a action
# invoke the one() when the user select 1 from the menu option.
# invoke the two() when the user select 2 from the menu option.
# Exit when user the user select 3 form the menu option.
read_options(){
	local choice
	read -p "Enter choice [ 1 - 10] " choice
	case $choice in
		1) docker_build_image mock-nlx  ${DOCKER_USER} ${MOCK_NLX_IMAGE} ${DOCKER_VERSION_TAG}  ;;
        2) docker_build_image waardepapieren-service ${DOCKER_USER} ${SERVICE_IMAGE} ${DOCKER_VERSION_TAG}  ;;
        3) docker_build_image clerk-frontend ${DOCKER_USER} ${CLERK_FRONTEND_IMAGE} ${DOCKER_VERSION_TAG}  ;;
        4) docker_system_prune ;;
		5) . az_aci_clone_build_ship_deploy.bash ;;
		6) open -a Firefox 'https://hub.docker.com/?ref=login' ;;
        7) open -a Firefox 'https://portal.azure.com/#home' ;;
		8) open -a Firefox https://$CERT_HOST_IP:443 ;;
		9) open -a Firefox https://github.com/BoschPeter/$GIT_REPO ;;
		10) exit 0;;
		*) echo -e "${RED}Error...${STD}" && sleep 2
	esac
}
 
# ----------------------------------------------
# Step #3: Trap CTRL+C, CTRL+Z and quit singles
# ----------------------------------------------
trap '' SIGINT SIGQUIT SIGTSTP
 
# -----------------------------------
# Step #4: Main logic - infinite loop
# ------------------------------------
while true
do
 
	show_menus
	read_options
done

