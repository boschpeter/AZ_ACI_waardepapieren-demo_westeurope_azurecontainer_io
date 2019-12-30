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
    echo "# ----------------------------------"
    echo "Step 1: prune "
    echo "# ----------------------------------"
    echo "#10. Reset (docker system prune-a)"
    echo "# ----------------------------------"
    echo "Step 2:   Dockerfile setters"
    echo "# ----------------------------------"
    echo "20. SET_DOCKERCOMPOSE_TRAVIS_WITHOUT_VOLUME "
    echo "21. SET_DOCKERFILE_CLERK_FRONTEND_WITHOUT_VOLUME"
    echo "22. SET_DOCKERFILE_CLERK_FRONTEND_WITHOUT_VOLUME"
    echo "23. SET_DOCEKERFILE_WAARDEPAPIEREN_WITHOUT_VOLUME"
    echo "# ----------------------------------"
    echo "#Step 3 : Networking setters" 
    echo "# ----------------------------------" 
    echo "30. SET_CLERK_FRONTEND_NGINX_CONF"
    echo "31. SET_WAARDEPAPIEREN_SERVICE_CONFIG_COMPOSE_TRAVIS_JSON"
    echo "32. SET_WAARDEPAPIEREN_CONFIG_COMPOS_JSON"
    echo "33.SET_WAARDEPAPIEREN_CONFIG_JSON"
    echo "# ----------------------------------" 
    echo "#step 4: docker-compose  docker build "
    echo "# ----------------------------------"
    echo "40. docker_compose "
    echo "41. docker_build_image mock_nlx ${DOCKER_VERSION_TAG}"
    echo "42. docker_build_image waardepapieren-service ${DOCKER_VERSION_TAG}"
    echo "33. docker_build_image clerk-frontend ${DOCKER_VERSION_TAG}"
    echo "# ----------------------------------"
    echo "#step 5: azure  "
    echo "# ----------------------------------"
    echo "50) delete_azure_resource_group $AZ_RESOURCE_GROUP "
    echo "51..) create_azure_resource_group $AZ_RESOURCE_GROUP"
    echo "52..) create_azure_container_group $AZ_RESOURCE_GROUP"
    echo "53..) restart_azure_container_group $AZ_RESOURCE_GROUP  a.ka. (re) pull docker hub"
    echo "# ----------------------------------"
    echo "#step 6 check check triple check  clone build ship deploy "
    echo "# ----------------------------------" 
    echo "60. open -a Firefox https://github.com/BoschPeter/$GIT_REPO "    #clone
    #echo "61. open -a Firefox https://github.com/BoschPeter/$GIT_REPO "    #clone
    echo "62. open -a Firefox 'https://hub.docker.com/?ref=login' boscp08 Peter!...."   #Ship
	echo "63. open -a Firefox 'https://portal.azure.com/#home' bosch.peter@outlook.com 0l..ten"
    echo "64. open -a Firefox https://$CERT_HOST_IP:443  " #hope the clerk frontend will be stable "
    echo "# ----------------------------------"
	echo "#step 9  miscelaneous "
    echo "# ----------------------------------"
    echo "90..) az login -u bosch.peter@outlook.com" 
    echo "91. the whole sjebang"
    echo "92. backup scripts"
	echo "99. reload az_aci_clone_build_ship_deploy.bash"
    echo "100 Exit"
}
# read input from the keyboard and take a action
# invoke the one() when the user select 1 from the menu option.
# invoke the two() when the user select 2 from the menu option.
# Exit when user the user select 3 form the menu option.
#https://portal.azure.com/#@boschpeteroutlook.onmicrosoft.com/resource/subscriptions/cfcb03ea-255b-42f8-beca-2d4ac30779bb/resourceGroups/Discipl_Wigo4it_ACI/providers/Microsoft.ContainerInstance/containerGroups/Discipl_Wigo4it_ACI/containers

read_options(){
	local choice
	read -p "Enter choice [ 1 - 99] " choice
	case $choice in
        10) docker_system_prune        ;;  #Reset (docker system prune-a)"
        20) docker_compose_travis_yml_without_volumes        ;;  #SET_DOCKERCOMPOSE_TRAVIS_WITHOUT_VOLUME 
        21) clerk_frontend_dockerfile_with_volumes      ;;  #SET_DOCKERFILE_CLERK_FRONTEND_WITHOUT_VOLUME
        22) clerk_frontend_dockerfile_without_volumes        ;;  #SET_DOCKERFILE_CLERK_FRONTEND_WITHOUT_VOLUME
        23) waardepapieren_service_dockerfile_without_volumes       ;;  #SET_DOCEKERFILE_WAARDEPAPIEREN_WITHOUT_VOLUME
        30) clerk_frontend_nginx_conf       ;;  #SET_CLERK_FRONTEND_NGINX_CONF
        31) waardepapieren_service_config_compose_travis_json        ;;  #SET_WAARDEPAPIEREN_SERVICE_CONFIG_COMPOSE_TRAVIS_JSON
        32) waardepapieren_service_config_compose_json        ;;  #SET_WAARDEPAPIEREN_CONFIG_COMPOS_JSON
        33) waardepapieren_service_config_json        ;;  #SET_WAARDEPAPIEREN_CONFIG_JSON
        40) docker_compose_min_f_docker      ;;  #docker_compose 
        41) docker_build_image mock_nlx ${DOCKER_VERSION_TAG}       ;;  #docker_build_image mock_nlx ${DOCKER_VERSION_TAG}
        42) docker_build_image waardepapieren-service ${DOCKER_VERSION_TAG}        ;;  #docker_build_image waardepapieren-service ${DOCKER_VERSION_TAG}
        33) docker_build_image clerk-frontend ${DOCKER_VERSION_TAG}       ;;  #docker_build_image clerk-frontend ${DOCKER_VERSION_TAG}
        50) delete_azure_resource_group          ;;  #delete_azure_resource_group $AZ_RESOURCE_GROUP 
        51) create_azure_resource_group          ;;  #create_azure_resource_group $AZ_RESOURCE_GROUP
        52) create_azure_resource_group          ;;  #create_azure_container_group $AZ_RESOURCE_GROUP
        53) restart_azure_container_group        ;;  #restart_azure_container_group $AZ_RESOURCE_GROUP  a.ka. (re) pull docker hub
        60) open -a Firefox https://github.com/BoschPeter/$GIT_REPO          ;;
        61) open -a Firefox 'https://portal.azure.com/#@boschpeteroutlook.onmicrosoft.com/resource/subscriptions/cfcb03ea-255b-42f8-beca-2d4ac30779bb/resourceGroups/${AZ_RESOURCE_GROUP}/providers/Microsoft.ContainerInstance/containerGroups/$AZ_RESOURCE_GROUP/containers'       ;;
        62) open -a Firefox 'https://hub.docker.com/?ref=login' -p boscp08 -u Peter!2020  ;; 
	    63) open -a Firefox 'https://portal.azure.com/#home' ;; # bosch.peter@outlook.com 0l..ten ;;tal.azure.com/#home' bosch.peter@outlook.com 0l..ten
        64) open -a Firefox https://$CERT_HOST_IP:443  ;; " #hope the clerk frontend will be stable after 10 minutes or so... understatement "
        90) az login -u bosch.peter@outlook.com  -p 0lifanten ;;  #az login -u bosch.peter@outlook.com" 
        92) sjebang         ;;  #the whole sjebang"
        93) write_az_clone_build_ship_deploy_bash  ;;  #backup scripts"
	    99) . az_aci_clone_build_ship_deploy.bash 
        100) Exit ;;
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

hellup

#! /bin/bash
# //////////////////////////////////////////////////////////////////////////////////////////
#    File Type   :- BASH Script (needs docker-CLI and AZURE-CLI installed)
#  
#    Description :- This script builds "waardepapieren" containers and ships images to hub.docker.com and beyond to ACI
#    Modified           Date           Description
#    --------           --------       -------------------------------------------------
#    Peter Bosch       21.12.2019      macOs configuration
#    Peter Bosch       20.12.2019      processing technical dept
#    Peter Bosch       05.12.2019      Initial version.
#
# //////////////////////////////////////////////////////////////////////////////////////////
#   File:            :az_aci_clone_build_ship_deploy.bash
#   version          :20191204 v0
#   File Type        :Bash is a command processor that typically runs in a text window 
#                     Bash can also read and execute commands from a file, called a shell script.
#   Purpose          :download - Clone - Build - Ship - Deploy https://github.com/dsicipl/waardepapieren.git     
#   Title:           : 
#   Category         :CI CD
#   Identificatie    :https://github.com/BoschPeter/AZ_ACI_waardepapieren-demo_westeurope_azurecontainer_io

#example Pim Otte
#10dec 2:35 PM @Bas Als het goed is werkt https://waardepapieren-demo.discipl.org/
#Ik had wel hier problemen met de ICTU firewall die het blokkeerde, ik moest met mijn telefoon op 4g om het werkend te krijgen

#https://waardepapieren-demo.discipl.org/    BSN=663678651
#https://waardepapieren-demo.westeurope.cloudapp.azure.com  VM
#https://waardepapieren-demo.westeurope.azurecontainer.io ACI


#'********** instructions **********
#1. enter your parameters ...
#2  modify functions docker config build files (be carefull or ask pim)
#3 run script as follows 
#  chmod +x az_clone_build_ship_deploy.bash  
#  ./az_clone_build_ship_deploy.bash


# Running
#
# The easiest way to run is using docker-compose:  but needs a (virtual) machine to run on.
#
# With docker compose you use a simple text file to define an application that consists of multiple Docker containers.
# You then run your application with a single command that does everything to implement your defined environment.

# This will start 3 applications:
#
#    clerk-frontend
#    waardepapieren-service, with embedded ephemeral-server
#    nlx-mock, which is an nlx-outway that provides access to a mock BRP service
#

#  Run docker-compose up#  Run docker-compose down  a.k.a restart.  stop /start
#
#  Alternatively, you can use an offline mock, which replicates the NLX environment.
#
#  Run docker-compose -f docker-compose-travis.yml up
#  The clerk frontend will be available at https://localhost:443 on your local pc. 
#  Below the cookbook to deploy your containers as a so called ACI Azure Container Instance. 
#  simular to k8s pod ?


#'********** parameters **********

#echo "#######################"
#echo "## FQDN
#echo "#######################" 

# This is done as follows:
#
#  Set the environment variable CERT_HOST_IP is with an IP (or domain) that the validator app can use to reach the clerk-frontend container.  
#  Ensure that the validator expo app runs on the same (wifi) network as the clerk frontend. (BSN=663678651)

## ----------------------------------
# Step #1: Define variables
# ----------------------------------
##################################################################
# Purpose: set FQDN  start of your FQDN in azure.
# Arguments: waardepapieren-demo
# Return: https://waardepapieren-demo.westeurope.azurecontainer.io
##################################################################
#AZ_DNSNAMELABEL=waardepapieren-demo   #<<<FQDN first part goes here. s
AZ_DNSNAMELABEL=discipl  # target FQDN=https://discipl.westeurope.azurecontainer.io

#TIMEZONE="ENV TZ=Europe/Amsterdam"
TIMEZONE=""

#TARGET_HOST=linux_VM
TARGET_HOST=azure_container_instance

 if [ "$TARGET_HOST" = "linux_VM" ]; then
       echo expression evaluated as linux_VM
       AZ_TLD=cloudapp.azure.com
       GIT_REPO=AZ_VM_waardepapieren-demo_westeurope_cloudapp_azure_com

 fi

if [ "$TARGET_HOST" = "azure_container_instance" ]; then
       echo expression evaluated as azure_container_instance
       AZ_TLD=azurecontainer.io
       GIT_REPO=AZ_ACI_waardepapieren-demo_westeurope_azurecontainer_io
fi

CERT_HOST_IP=$AZ_DNSNAMELABEL.westeurope."$AZ_TLD"  #FQDN linux
CERT_HOST_IP_WAARDEPAPIEREN_SERVICE_HOSTNAME=$AZ_DNSNAMELABEL.westeurope.$AZ_TLD

#tt overrule
#CERT_HOST_IP=localhost  #FQDN linux
#CERT_HOST_IP_WAARDEPAPIEREN_SERVICE_HOSTNAME=localhost


#echo "#######################"
#echo "## DOWNLOAD
#echo "#######################" 

# install git
# install docker  
# (install docker-compose)  depreciated
# install_azure_cli

#echo "#######################"
#echo "## CLONE
#echo "#######################" 

CMD_GIT_CLONE=false  

#echo "#######################"
#echo "##   docker system prune -a   #from scratch
#echo "#######################"

CMD_CONTAINER_STOP=false
CMD_IMAGE_REMOVE=false
CMD_CONTAINER_PRUNE=false

#echo "#######################"
#echo "## BUILD with docker-compose -f 
#echo "#######################" 
CMD_DOCKER_COMPOSE=false  #volumes and links depreciated
CMD_DOCKER_COMPOSE_BUILD=" --build"

#echo "#######################"
#echo "## DOCKER BUILD 
#echo "#######################"
CMD_DOCKER_BUILD_MOCK_NLX=false     #docker_build_mock_nlx
CMD_DOCKER_BUILD_WAARDEPAPIEREN_SERVICE=false #docker_build_waardepapieren_service
CMD_DOCKER_BUILD_CLERK_FRONTEND=false  #docker_build_clerk_frontend

MOCK_NLX_IMAGE=waardepapieren_mock-nlx
SERVICE_IMAGE=waardepapieren_waardepapieren-service
CLERK_FRONTEND_IMAGE=waardepapieren_clerk-frontend

DOCKER_VERSION_TAG="4.0"
#DOCKER_VERSION_TAG="2.0"
#echo "#######################"
#echo "## DOCKER SHIP 
#echo "#######################" 

DOCKER_TAG=false
DOCKER_COMMIT=false
DOCKER_USER="boscp08"  #NB repository name must be lowercase
DOCKER_PUSH=false  #hub.docker.com   NB with docker commit you loose ENV

#echo "#######################"
#echo "## AZURE DEPLOY
#echo "#######################" 
AZ_RESOURCE_GROUP="Discipl_Wigo4it_ACI"  #waardepapierenVM
CMD_AZ_RESOURCE_GROUP_DELETE=false
CMD_AZ_RESOURCE_GROUP_CREATE=false

CREATE_AZ_DEPLOY_ACI_YAML=true #@PROJECT_DIR deploy_aci.yml
CMD_AZ_CREATE_CONTAINERGROUP=false  #.. jeuh - - Running ... ..
CMD_AZ_RESTART_CONTAINERGROUP=false

#echo "#######################"
#echo "## DOWNLOAD / directories used building images on this pc 
#echo "#######################" 

if [ `uname` = 'Linux' ]
  then  HOME_DIR=/home/`whoami`    #boscp08 
  echo "linux"
fi  

if  [ `uname` = 'Darwin' ]
    then  HOME_DIR=/Users/`whoami` #boscp08   
    echo "Darwin"
fi

LOG_START_DATE_TIME=`date +%Y%m%d_%H_%M`  
PROJECT_DIR=$HOME_DIR/Projects/scratch/virtual-insanity
#GIT_REPO=AZ_ACI_waardepapieren-demo_westeurope_azurecontainer_io  see befores
GITHUB_DIR=$PROJECT_DIR/${GIT_REPO}   #git clone https://github.com/ezahr/Waardepapieren-AZURE-ACI.git 
LOG_DIR=${GITHUB_DIR}/LOG_DIR
LOG_FILE=${LOG_DIR}/LOG_${LOG_START_DATE_TIME}.log

#the_world_is_flat=true
## ...do something interesting...
#if [ "$the_world_is_flat" = true ] ; then
#    echo 'Be careful not to fall off!'
#fi

SET_DOCKERCOMPOSE_TRAVIS_WITHOUT_VOLUME=true       # mimic native Dockerfile build  #! no volumes , no links (bridged docker network)
SET_DOCKERFILE_CLERK_FRONTEND_WITHOUT_VOLUME=true  # mimic native Dockerfile build  #! no volumes , no links (bridged docker network)
SET_DOCKERFILE_WAARDEPAPIEREN_WITHOUT_VOLUME=true  # mimic native Dockerfile build  #! no volumes , no links (bridged docker network)
SET_DOCKERFILE_MOCK_NLX=true  

SET_DOCKERCOMPOSE_TRAVIS_WITH_VOLUME=false         # bypass docker-compose depreciated and causes cloud / k8s issues
SET_DOCKERFILE_CLERK_FRONTEND_WITH_VOLUME=false    # bypass docker-compose ACI cloud volume issue
SET_DOCKERFILE_WAARDEPAPIEREN_WITH_VOLUME=false    # bypass docker-compose ACI cloud bridged network issus

SET_CLERK_FRONTEND_NGINX_CONF=true
SET_WAARDEPAPIEREN_SERVICE_CONFIG_COMPOSE_TRAVIS_JSON=true
SET_WAARDEPAPIEREN_SERVICE_CONFIG_COMPOSE=true
SET_WAARDEPAPIEREN_SERVICE_CONFIG=true

#EPHEMERAL_RETENTION_TIME=86400  #24h 
EPHEMERAL_RETENTION_TIME=2591205  #30 dage

#echo "#######################"
#echo "## feedbak 
#echo "#######################" 
PROMPT=true # echo parameters
DOUBLE_CHECK=true  #cat content modified files to ${LOG_DIR}
 
#'********** end of parameters **********

#'>>> below the functions that are called by other functions
# modify at your own peril! because of configuration drift 
# main purpose of this script to show configuration for containers spinning in the cloud. 


# ----------------------------------
# Step #2: User defined function
# ----------------------------------
##################################################################
# Purpose: modify docker-compose-travis.yml 
# Arguments: 
# Return: 
##################################################################
docker_compose_travis_yml_with_volumes() {
echo "- Running ... docker_compose_travis_yml_with_volumes"

TT_DIRECTORY=${GITHUB_DIR}
TT_INSPECT_FILE=docker-compose-travis.yml 
echo ${TT_DIRECTORY}.${TT_INSPECT_FILE}

enter_touch

echo "version: '3'
services:
  waardepapieren-service:
    volumes:
      - ./waardepapieren-service/system-test/certs:/certs:ro
      - ./waardepapieren-service/system-test/ephemeral-certs:/ephemeral-certs:ro
      - ./waardepapieren-service/configuration/:/app/configuration:ro
    build: waardepapieren-service/.
    # network_mode: host
    #networks:
    #  test:
    links:
      - mock-nlx
    ports:
      - 3232:3232
      - 3233:3233
    environment:
      - WAARDEPAPIEREN_CONFIG=/app/configuration/waardepapieren-config-compose-travis.json
      # Ignore self-signed ephemeral cert issues
      - NODE_TLS_REJECT_UNAUTHORIZED=0
  clerk-frontend:
    build:
      #network_mode: host
    #  networks:
    #  test:
      context: clerk-frontend/
      args:
        - CERTIFICATE_HOST=http://${CERT_HOST_IP}:8880
    links:
      - waardepapieren-service
        ports:
      - 443:443
      - 8880:8880

    healthcheck:
      test: service nginx status
    volumes:
      - ./clerk-frontend/nginx/certs:/etc/nginx/certs:ro
  mock-nlx:
    build: mock-nlx/
    #network_mode: host
    #networks:
    #  test:
    ports:
      - 80:80
    
    #networks:
    #test:
    #driver: bridge  "  > ${TT_INSPECT_FILE} #docker-compose-travis.yml

if [ ${DOUBLE_CHECK} =  true ]
  then enter_inspect
fi 

TT_DIRECTORY=""
TT_INSPECT_FILE=""

}
##################################################################
# Purpose: modify docker-compose-travis.yml 
# Arguments: 
# Return: 
##################################################################
docker_compose_travis_yml_without_volumes() {
echo "- Running ... docker_compose_travis_yml_without_volumes"
#cd ${DOCKER_COMPOSE_DIR}
#touch docker-compose-travis.yml 
#mv docker-compose-travis.yml  docker-compose-travis_`date "+%Y%m%d-%H%M%S"`.yml

TT_DIRECTORY=${GITHUB_DIR}
TT_INSPECT_FILE=docker-compose-travis.yml 
echo ${TT_DIRECTORY}.${TT_INSPECT_FILE}

enter_touch

echo "version: '3'
services:
  waardepapieren-service:
    volumes:
      #- ./waardepapieren-service/system-test/certs:/certs:rw
      #- ./waardepapieren-service/system-test/ephemeral-certs:/ephemeral-certs:rw
      - ./waardepapieren-service/configuration/:/app/configuration2:rw  #FAKE
    build: waardepapieren-service/.
    links:
      - mock-nlx
    ports:
      - 3232:3232
      - 3233:3233
    environment:
      - WAARDEPAPIEREN_CONFIG=/app/configuration/waardepapieren-config-compose-travis.json
      # Ignore self-signed ephemeral cert issues
      - NODE_TLS_REJECT_UNAUTHORIZED=0
  clerk-frontend:
    build:
      context: clerk-frontend/
      args:
        - CERTIFICATE_HOST=http://${CERT_HOST_IP}:8880
    links:
      - waardepapieren-service
    ports:
      - 443:443
      - 8880:8880
    healthcheck:
      test: service nginx status
  #  volumes:
  #    - ./clerk-frontend/nginx/certs:/etc/nginx/certs:rw
  mock-nlx:
    build: mock-nlx/
    ports:
      - 80:80" > ${TT_INSPECT_FILE} #docker-compose-travis.yml

if [ ${DOUBLE_CHECK} = true ]
  then enter_inspect
fi 

TT_DIRECTORY=""
TT_INSPECT_FILE=""

}

##################################################################
# Purpose: set clerk-frontend Dockerfile
# Arguments: 
# Return: 
##################################################################
clerk_frontend_dockerfile_with_volumes() {
echo "- Running ... clerk_frontend_dockerfile_with_volumes"

TT_DIRECTORY=${GITHUB_DIR}/clerk-frontend
TT_INSPECT_FILE=Dockerfile 
enter_touch

echo "FROM node:10
RUN mkdir /app
ADD package.json package-lock.json /app/
ENV REACT_APP_EPHEMERAL_ENDPOINT=https://${CERT_HOST_IP}:443/api/eph
ENV REACT_APP_EPHEMERAL_WEBSOCKET_ENDPOINT=wss://${CERT_HOST_IP}:443/api/eph-ws
WORKDIR /app
RUN npm install --unsafe-perm
ADD public /app/public
ADD src /app/src
ARG CERTIFICATE_HOST
ENV REACT_APP_CERTIFICATE_HOST=${CERTIFICATE_HOST}
ENV TZ=Europe/Amsterdam
RUN npm run build

FROM nginx:1.15.8
ADD nginx/nginx.conf /etc/nginx/nginx.conf
COPY --from=0 /app/build /usr/share/nginx/html"  > ${TT_INSPECT_FILE} #Dockerfile

if [ ${DOUBLE_CHECK} =  true ]
  then enter_inspect
fi 

TT_DIRECTORY=""
TT_INSPECT_FILE=""

}


##################################################################
# Purpose: modify mock-nlx.Dockerfile
# Arguments: 
# Return: 
##################################################################
mock_nlx_dockerfile() {  

echo "- Running ... mock_nlx_dockerfile"

TT_DIRECTORY=${GITHUB_DIR}/mock-nlx
TT_INSPECT_FILE=Dockerfile 
enter_touch

echo "FROM node:10
RUN mkdir /app
ADD index.js package.json package-lock.json /app/
WORKDIR /app
$TIMEZONE
RUN npm install --production" > ${TT_INSPECT_FILE} # Dockerfile

if [ ${DOUBLE_CHECK} = true ]
  then enter_inspect
fi 

TT_DIRECTORY=""
TT_INSPECT_FILE=""

}

##################################################################
# Purpose: modify clerk-frontend.Dockerfile
# Arguments: 
# Return: 
##################################################################
clerk_frontend_dockerfile_without_volumes() {

echo "- Running ... clerk_frontend_dockerfile_without_volumes"

TT_DIRECTORY=${GITHUB_DIR}/clerk-frontend
TT_INSPECT_FILE=Dockerfile 
enter_touch

echo "FROM node:10
RUN mkdir /app
ADD package.json package-lock.json /app/
ENV REACT_APP_EPHEMERAL_ENDPOINT=https://${CERT_HOST_IP}:443/api/eph
ENV REACT_APP_EPHEMERAL_WEBSOCKET_ENDPOINT=wss://${CERT_HOST_IP}:443/api/eph-ws
WORKDIR /app
RUN npm install --unsafe-perm
ADD public /app/public
ADD src /app/src
ARG CERTIFICATE_HOST
ENV REACT_APP_CERTIFICATE_HOST=http://${CERT_HOST_IP}:8880
ENV TZ=Europe/Amsterdam
RUN npm run build

FROM nginx:1.15.8
ADD nginx/nginx.conf /etc/nginx/nginx.conf
COPY --from=0 /app/build /usr/share/nginx/html
#  volumes:
#    - ./clerk-frontend/nginx/certs:/etc/nginx/certs:rw
RUN mkdir /etc/nginx/certs
RUN apt-get update 
RUN apt-get install -y iputils-ping
RUN apt-get install -y net-tools

ADD nginx/certs/org.crt /etc/nginx/certs/org.crt
ADD nginx/certs/org.key /etc/nginx/certs/org.key"  > ${TT_INSPECT_FILE} # Dockerfile

if [ ${DOUBLE_CHECK} = true ]
  then enter_inspect
fi 

TT_DIRECTORY=""
TT_INSPECT_FILE=""

}

##################################################################
# Purpose: hack into clerk-frontend build in nginx
# Arguments: 
# Return: 
##################################################################
clerk_frontend_nginx_conf() {

echo "- Running ... clerk_frontend_nginx_conf"

TT_DIRECTORY=${GITHUB_DIR}/clerk-frontend/nginx
TT_INSPECT_FILE=nginx.conf
enter_touch

echo "events {
    worker_connections  1024;
}

http {

    map \$http_upgrade \$connection_upgrade {
        default upgrade;
        '' close;
    }

    # Http server to obtain NLX certificate
    server {
        listen 8880;

        location / {
           root /usr/share/nginx/html;
           include /etc/nginx/mime.types;
        }
    }

    server {
        listen 443 ssl;

        ssl_certificate /etc/nginx/certs/org.crt;
        ssl_certificate_key /etc/nginx/certs/org.key;

        location /api/eph/ {
               proxy_pass https://${CERT_HOST_IP_WAARDEPAPIEREN_SERVICE_HOSTNAME}:3232/;    #pdf effect
           #     proxy_pass https://waardepapieren-service:3232/;
            #     proxy_pass https://172.19.0.3:3232/;
        }

        location /api/eph-ws {
           
              proxy_pass https://${CERT_HOST_IP_WAARDEPAPIEREN_SERVICE_HOSTNAME}:3232;   # pdf effect
             #  proxy_pass https://waardepapieren-service:3232;
            #  proxy_pass https://172.19.0.3:3232;
            proxy_http_version 1.1;
            proxy_set_header Upgrade \$http_upgrade;
            proxy_set_header Connection "Upgrade";
        }
        location / {
            root /usr/share/nginx/html;
            include /etc/nginx/mime.types;
        }
    }
}" > ${TT_INSPECT_FILE}  #nginx.conf

if [ ${DOUBLE_CHECK} =  true ]
  then enter_inspect
fi 

TT_DIRECTORY=""
TT_INSPECT_FILE=""

} 

##################################################################
# Purpose: hack into waardepapieren-servcie Dockerfile
# Arguments: 
# Return: 
##################################################################
waardepapieren_service_dockerfile_with_volumes() {
echo "- Running ... waardepapieren_service_dockerfile_with_volumes"

TT_DIRECTORY=${GITHUB_DIR}/waardepapieren-service
TT_INSPECT_FILE=Dockerfile
enter_touch

echo "FROM node:10
RUN mkdir /app
ADD .babelrc package.json package-lock.json /app/
ADD src/* app/src/
ADD configuration/* app/configuration/
ENV WAARDEPAPIEREN_CONFIG /app/configuration/waardepapieren-config.json
ENV TZ=Europe/Amsterdam
WORKDIR /app
RUN npm install --production
CMD npm start"  > ${TT_INSPECT_FILE} #Dockerfile

if [ ${DOUBLE_CHECK} =  true ]
  then enter_inspect
fi 
TT_DIRECTORY=""
TT_INSPECT_FILE=""

}

##################################################################
# Purpose: hack into waardepapieren-service Dockerfile
# Arguments: 
# Return: 
##################################################################
waardepapieren_service_dockerfile_without_volumes() {
echo "- Running ... waardepapieren_service_dockerfile_without_volumes"

TT_DIRECTORY=${GITHUB_DIR}/waardepapieren-service
TT_INSPECT_FILE=Dockerfile
enter_touch

echo "FROM node:10
RUN mkdir /app
ADD .babelrc package.json package-lock.json /app/
ADD src/* app/src/
ADD configuration/* app/configuration/
#- ./waardepapieren-service/system-test/certs:/certs:ro
RUN mkdir /certs
ADD system-test/certs/org.crt /certs/org.crt
ADD system-test/certs/org.key /certs/org.key
#- ./waardepapieren-service/system-test/ephemeral-certs:/ephemeral-certs:ro
RUN mkdir /ephemeral-certs
ADD system-test/ephemeral-certs/org.crt /ephemeral-certs/
ADD system-test/ephemeral-certs/org.key /ephemeral-certs/
#- ./waardepapieren-service/configuration/:/app/configuration:ro

WORKDIR /app
RUN mkdir /configuration
ADD configuration/waardepapieren-config-compose.json /app/configuration
ADD configuration/waardepapieren-config-compose-travis.json /app/configuration
ADD configuration/waardepapieren-config.json /app/configuration
ENV WAARDEPAPIEREN_CONFIG /app/configuration/waardepapieren-config.json
ENV TZ=Europe/Amsterdam
RUN apt-get update 
RUN apt-get install -y iputils-ping
RUN apt-get install -y net-tools

RUN npm install --production
CMD npm start"  > ${TT_INSPECT_FILE} #Dockerfile

if [ ${DOUBLE_CHECK} =  true ]
  then enter_inspect
fi 
TT_DIRECTORY=""
TT_INSPECT_FILE=""

}

##################################################################
# Purpose: hack into waardepapieren-service config
# Arguments: waardepapieren_service_config_compose_travis_json 
# Return:  waardepapieren-config-compose-travis.json
##################################################################
waardepapieren_service_config_compose_travis_json() {
echo "- Running ... waardepapieren_service_config_compose_travis_json"

TT_DIRECTORY==${GITHUB_DIR}/waardepapieren-service/configuration
TT_INSPECT_FILE=waardepapieren-config-compose-travis.json
enter_touch

echo " {
   \"EPHEMERAL_ENDPOINT\" : \"https://${CERT_HOST_IP}:3232\",
   \"EPHEMERAL_WEBSOCKET_ENDPOINT\" : \"wss://${CERT_HOST_IP}:3232\",
   \"EPHEMERAL_CERT\": \"/ephemeral-certs/org.crt\",
   \"EPHEMERAL_KEY\": \"/ephemeral-certs/org.key\",
  \"NLX_OUTWAY_ENDPOINT\" : \"http://${CERT_HOST_IP}:80\",
  \"NLX_CERT\": \"/certs/org.crt\",
  \"NLX_KEY\": \"/certs/org.key\",
  \"LOG_LEVEL\": \"info\",
  \"EPHEMERAL_RETENTION_TIME\": ${EPHEMERAL_RETENTION_TIME},
  \"PRODUCT_NEED\" : \"BRP_UITTREKSEL_NEED\",
  \"SOURCE_NLX_PATH\" : \"/brp/basisregistratie/natuurlijke_personen/bsn/{BSN}\",
  \"SOURCE_ARGUMENT\" : \"BSN\",
  \"PRODUCT_ACCEPT\" : \"BRP_UITTREKSEL_ACCEPT\",
  \"PRODUCT_NAME\" : \"Gewaarmerkt digitaal afschrift van gegevens uit de basisregistratie personen (BRP)\",
  \"PRODUCT_DESCRIPTION\" : \"Uittreksel Basis Registratie Persoonsgegevens\",
  \"PRODUCT_PURPOSE\" : \"Bewijs verblijfadres in woonplaats\",
  \"SOURCE_DATA_SELECTION\" : [
    {\"Burgerservicenummer (BSN)\" : \"burgerservicenummer\"},
    {\"Woonplaats verblijfadres\" : \"verblijfadres.woonplaats\"}
  ]
} " > ${TT_INSPECT_FILE} # waardepapieren-config-compose-travis.json

if [ ${DOUBLE_CHECK} =  true ]
  then enter_inspect
fi 

TT_DIRECTORY=""
TT_INSPECT_FILE=""

}

##################################################################
# Purpose: hack into waardepapieren-service config
# Arguments: waardepapieren_service_config_json
# Return: waardepapieren-config-compose.json

##################################################################
waardepapieren_service_config_compose_json() {
echo "- Running ... waardepapieren_service_config_compose_json"

TT_DIRECTORY=${GITHUB_DIR}/waardepapieren-service/configuration
TT_INSPECT_FILE=waardepapieren-config-compose.json
enter_touch

echo " {
   \"EPHEMERAL_ENDPOINT\" : \"https://${CERT_HOST_IP}:3232\",
   \"EPHEMERAL_WEBSOCKET_ENDPOINT\" : \"wss://${CERT_HOST_IP}:3232\",
   \"EPHEMERAL_CERT\": \"/ephemeral-certs/org.crt\",
   \"EPHEMERAL_KEY\": \"/ephemeral-certs/org.key\",
  \"NLX_OUTWAY_ENDPOINT\" : \"http://${CERT_HOST_IP}:80\",
  \"NLX_CERT\": \"/certs/org.crt\",
  \"NLX_KEY\": \"/certs/org.key\",
  \"LOG_LEVEL\": \"info\",
  \"EPHEMERAL_RETENTION_TIME\": ${EPHEMERAL_RETENTION_TIME},
  \"PRODUCT_NEED\" : \"BRP_UITTREKSEL_NEED\",
  \"SOURCE_NLX_PATH\" : \"/brp/basisregistratie/natuurlijke_personen/bsn/{BSN}\",
  \"SOURCE_ARGUMENT\" : \"BSN\",
  \"PRODUCT_ACCEPT\" : \"BRP_UITTREKSEL_ACCEPT\",
  \"PRODUCT_NAME\" : \"Gewaarmerkt digitaal afschrift van gegevens uit de basisregistratie personen (BRP)\",
  \"PRODUCT_DESCRIPTION\" : \"Uittreksel Basis Registratie Persoonsgegevens\",
  \"PRODUCT_PURPOSE\" : \"Bewijs verblijfadres in woonplaats\",
  \"SOURCE_DATA_SELECTION\" : [
    {\"Burgerservicenummer (BSN)\" : \"burgerservicenummer\"},
    {\"Woonplaats verblijfadres\" : \"verblijfadres.woonplaats\"}
  ]
} " > ${TT_INSPECT_FILE} # waardepapieren-config-compose-travis.json

if [ ${DOUBLE_CHECK} =  true ]
  then enter_inspect
fi 

TT_DIRECTORY=""
TT_INSPECT_FILE=""

}

##################################################################
# Purpose: hack into waardepapieren-service config
# Arguments: waardepapieren_service_config_json 
# Return: #waardepapieren-config.json
##################################################################
waardepapieren_service_config_json() {
echo "- Running ... waardepapieren_service_config_json"

TT_DIRECTORY=${GITHUB_DIR}/waardepapieren-service/configuration
TT_INSPECT_FILE=waardepapieren-config.json
enter_touch

echo " {
   \"EPHEMERAL_ENDPOINT\" : \"https://${CERT_HOST_IP}:3232\",
   \"EPHEMERAL_WEBSOCKET_ENDPOINT\" : \"wss://${CERT_HOST_IP}:3232\",
   \"EPHEMERAL_CERT\": \"/ephemeral-certs/org.crt\",
   \"EPHEMERAL_KEY\": \"/ephemeral-certs/org.key\",
  \"NLX_OUTWAY_ENDPOINT\" : \"http://${CERT_HOST_IP}:80\",
  \"NLX_CERT\": \"/certs/org.crt\",
  \"NLX_KEY\": \"/certs/org.key\",
  \"LOG_LEVEL\": \"info\",
  \"EPHEMERAL_RETENTION_TIME\": ${EPHEMERAL_RETENTION_TIME},
  \"PRODUCT_NEED\" : \"BRP_UITTREKSEL_NEED\",
  \"SOURCE_NLX_PATH\" : \"/brp/basisregistratie/natuurlijke_personen/bsn/{BSN}\",
  \"SOURCE_ARGUMENT\" : \"BSN\",
  \"PRODUCT_ACCEPT\" : \"BRP_UITTREKSEL_ACCEPT\",
  \"PRODUCT_NAME\" : \"Gewaarmerkt digitaal afschrift van gegevens uit de basisregistratie personen (BRP)\",
  \"PRODUCT_DESCRIPTION\" : \"Uittreksel Basis Registratie Persoonsgegevens\",
  \"PRODUCT_PURPOSE\" : \"Bewijs verblijfadres in woonplaats\",
  \"SOURCE_DATA_SELECTION\" : [
    {\"Burgerservicenummer (BSN)\" : \"burgerservicenummer\"},
    {\"Woonplaats verblijfadres\" : \"verblijfadres.woonplaats\"}
  ]
} " > ${TT_INSPECT_FILE} # waardepapieren-config-compose-travis.json

if [ ${DOUBLE_CHECK} =  true ]
  then enter_inspect
fi 

TT_DIRECTORY=""
TT_INSPECT_FILE=""

}

##################################################################
# Purpose: hack into azure deploy ACI
# Arguments: 
# Return: 
##################################################################
create_azure_deploy_aci_yaml() {
echo "- Running ... create_azure_deploy_aci_yaml"

TT_DIRECTORY=${GITHUB_DIR}
TT_INSPECT_FILE=deploy-aci.yaml
enter_touch

echo "location: westeurope
name: $AZ_RESOURCE_GROUP
properties:
  containers:
  - name: ${MOCK_NLX_IMAGE}
    properties:
      image: ${DOCKER_USER}/${MOCK_NLX_IMAGE}:${DOCKER_VERSION_TAG}
      resources:
        requests:
          cpu: 1
          memoryInGb: 0.5
      ports:
      - port: 80
  - name: ${SERVICE_IMAGE}
    properties:
      image: ${DOCKER_USER}/${SERVICE_IMAGE}:${DOCKER_VERSION_TAG}
      resources:
        requests:
          cpu: 1
          memoryInGb: 0.5
      ports:
      - port: 3232
  - name: ${CLERK_FRONTEND_IMAGE}
    properties:
      image: ${DOCKER_USER}/${CLERK_FRONTEND_IMAGE}:${DOCKER_VERSION_TAG}
      resources:
        requests:
          cpu: 1
          memoryInGb: 0.5
      ports:
      - port: 443
      - port: 8880
  osType: Linux
  ipAddress:
    type: Public
    # fqdn wordt: discipl_waardepapieren.westeurope.azurecontainer.io
    dnsNameLabel: "$AZ_DNSNAMELABEL" 
    ports:
    - protocol: tcp
      port: '443' 
    - protocol: tcp
      port: '3232' 
    - protocol: tcp
      port: '80'    
    - protocol: tcp
      port: '8880'      
tags: null
type: Microsoft.ContainerInstance/containerGroups" > ${TT_INSPECT_FILE}  #deploy-aci.yaml

if [ ${DOUBLE_CHECK} =  true ]
  then enter_inspect
fi 

TT_DIRECTORY=""
TT_INSPECT_FILE=""

}

# -----------------------------------
# Step #3 Main logic - infinite loop
# ------------------------------------
#'# Structured programming:
#'# Entire program logic modularized in User defined function


### barf  
enter_cont() {
    echo
    echo
    echo -n "Press enter to Continue"
    read
}

#################################################
# Purpose: Procedure concurrent version system
# Arguments: 
# Return: 
##################################################################

git_init() {

cd $GITHUB_DIR
git init
#Initialized empty Git repository in /home/boscp08/Dropbox/Github/.git/
git config --global credential.helper store
git config --global user.email "bosch.peter@icloud.com"
git config --global user.name "BoschPeter"
git config --global user.password "Peter\!..."

}

##################################################################
# Purpose: Procedure to clone de github repo on your pc
# Arguments: 
# Return: 
##################################################################

git_clone() {
 echo "- Running ... git_clone ${GIT_REPO}"
 echo "rm -rf ${PROJECT_DIR}/${GIT_REPO} sure?"
 enter_cont
 cd ${PROJECT_DIR}
 rm -rf ${GIT_REPO}
 #git clone https://github.com/discipl/waardepapieren.git
 #git clone https://github.com/AZ_VM_waardepapieren-demo_westeurope_cloudapp_azure_com.git
 #git clone https://github.com/BoschPeter/AZ_ACI_waardepapieren-demo_westeurope_azurecontainer_io.git
 git clone https://github.com/${GIT_REPO}.git  
 
}

# /////////////////////////////////////////////////////////////////////////////////
#  Create a Header in the logfile
# /////////////////////////////////////////////////////////////////////////////////
create_logfile_header() {
    JOB_START_DATE_TIME=`date +%Y%m%d_%H_%M`
    echo $JOB_START_DATE_TIME - BEGIN JOB:                                             >> $LOG_FILE
    echo ----------------------------------------------------------------------------- >> $LOG_FILE
    }

# /////////////////////////////////////////////////////////////////////////////////
#  Create a Footer in the logfile
# /////////////////////////////////////////////////////////////////////////////////
create_logfile_footer() {
    JOB_END_DATE_TIME=`date +%Y%m%d_%H_%M`
    echo $JOB_END_DATE_TIME - END JOB :                                                >> $LOG_FILE
    echo ----------------------------------------------------------------------------- >> $LOG_FILE
    }

##################################################################
# Purpose: Procedure to create directories specified
# Arguments: 
# Return: To check if a directory exists in a shell script you can use the following:
##################################################################
create_logdir() {
     
if ! [ -d "${LOG_DIR}" ]; then
  cd $PROJECT_DIR
  sduo chmod -R 777  ${GITHUB_DIR}
  mkdir  ${LOG_DIR}
  
fi 
}

##################################################################
# Purpose: #echo ${PROJECT_DIR} | awk -F/ '{print "/"$2"/"$3"/"$4"/"$5"/"$6}'
# Arguments: directory structure  #/home/boscp08/Projects/scratch/virtual-insanity
# Return: a folder  /home/boscp08/Dropbox/tt/Waardepapieren-AZURE-ACI
##################################################################
 make_folder() 
    {
     #echo $1
    
   if ! [ -d $1 ]; then
    echo $1 > struct.txt
    sed '/^$/d;s/ /\//g' struct.txt | xargs mkdir -p 
    rm struct.txt
     
     if [ ${PROMPT} = true ]   
        then 
        echo "$1 Directorie(s) have been made"
        cd $1
        pwd
    fi   
    
    #else   echo "$1 directory already exists "
   fi

    }

##################################################################
# Purpose: Procedure to create an empty file
# Arguments: 
# Return: 
##################################################################
enter_touch () {

cd ${TT_DIRECTORY}
touch ${TT_INSPECT_FILE}
}

#
##################################################################
# DOWNLOAD-FUNCTIONS
##################################################################


##################################################################
# Purpose: Procedure to install Docker command line interface
# Arguments: 
# Return: 
##################################################################
install_docker_cli() {
  echo "-- Running ... .. install_docker_cli() "


#description	command
#1	install docker download	sudo install -y docker docker-common docker-client docker-compose
#2	enable docker daemon	systemctl enable docker
#3	and start docker daemon	systemctl start docker
#4	verify that docker daemon is active by running your first container	docker run hello-world
#but now as a 'normal' user
#g roupadd docker usermod -aG docker boscp08 systemctl restart docker docker run hello-world
#systemctl restart docker
}

##################################################################
# Purpose: Procedure to download azure command line interface
# Arguments: 
# Return: 
##################################################################
install_azure_cli() {
  echo "-- Running ... .. install_azure_cli"
udo apt-get update
  sudo apt-get install ca-certificates curl apt-transport-https lsb-release gnupg

#Down load en installeer de micro soft-handtekening sleutel:
#bash
#linux
curl -sL https://packages.microsoft.com/keys/microsoft.asc | 
    gpg --dearmor | 
    sudo tee /etc/apt/trusted.gpg.d/microsoft.asc.gpg > /dev/null

#windows


}

#
##################################################################
# Purpose: CLONE-FUNCTIONS   
##################################################################

##################################################################
# Purpose: Procedure to stop - Running ... docker containers
# Arguments: 
# Return: 
##################################################################
git_init() {
   echo "-- Running ... git init"

#boscp08@boscp08-HP-Compaq-8510p:~/Dropbox/Github$ git init
#Initialized empty Git repository in /home/boscp08/Dropbox/Github/.git/
#  sudo apt install git 
git init

git config --global credential.helper store
git config user.name "BoschPeter"

git config --global user.email "bosch.peter@icloud.com"
git config --global user.name "boschpeter"

git config --global user.password "Peter\....ß"

# git config --global user.name "ezahr"


#git clone https://github.com/ezahr/Waardepapieren-AZURE-ACI.git
#cd into 

}


















#
##################################################################
# Purpose: BUILD-FUNCTIONS
##################################################################
#


##################################################################
# Purpose: create directories if neccecary.
# Arguments: 
# Return: specified directory structure
##################################################################
create_directories() {

make_folder ${PROJECT_DIR}     

}

##################################################################
# Purpose:   show content of Dockerfile/ configfiles. 
# Arguments: 
# Return: 
##################################################################
enter_inspect() {
clear

if [ -f "${TT_INSPECT_FILE}" ]; then
 
create_logfile_header

echo "| ${LOG_START_DATE_TIME} | ${TT_INSPECT_FILE}|"                                >> $LOG_FILE  
echo "| ${LOG_START_DATE_TIME} | ${TT_DIRECTORY} |"                                  >> $LOG_FILE
echo "<code>"                                                                        >> $LOG_FILE
cat  ${TT_INSPECT_FILE}                                                              >> $LOG_FILE
echo "</code>"                                                                       >> $LOG_FILE
create_logfile_footer

else 
cd ${DOCKER_COMPOSE_DIR}
clear
echo "File ${TT_INSPECT_FILE} is missing or cannot be executed"   
enter_cont
fi

if [ ${PROMPT} = true ] 
then 
clear

echo ""
echo "========="
pathname=${TT_DIRECTORY}
echo "enter inspect : ${TT_INSPECT_FILE} " 
echo "folder   =$(basename $pathname) "
echo "git-repo =$(basename $(dirname $pathname)) "
echo "project  =$(basename $(dirname $(dirname $pathname))) "
echo "========="
echo ""
cat  ${TT_INSPECT_FILE} | more
echo ""
echo "========="
pathname=${TT_DIRECTORY}
echo "enter inspect : ${TT_INSPECT_FILE} " 
echo "folder = $(basename $pathname) "
echo "git-repo=$(basename $(dirname $pathname)) "
echo "project=$(basename $(dirname $(dirname $pathname))) "
echo "========="
enter_cont

fi

}

##################################################################
# Purpose:  docker system prune -a
# Arguments: 
# Return:   remove all docker objects  starting from scratch.
##################################################################
docker_system_prune() {
  echo "-- Running ...docker system prune -a "

docker system prune -a   
}

##################################################################
# Purpose: remove alle containers 
# Arguments: 
# Return: 
##################################################################
docker_containers_stop() {
   echo "-- Running ... .. docker_containers_stop"
  docker stop  $(docker ps -a -q)
  
}

##################################################################
# Purpose:  remove alle containers and images d
# Arguments: 
# Return:   
##################################################################
docker_images_remove() {
  echo "-- Running ... .. docker_images_remove("

docker rm $(docker ps -a -q) && docker rmi $(docker images -q)

}

##################################################################
# Purpose:  remove all stopped containers (just waist of storage} 
# Arguments: 
# Return: 
##################################################################
docker_containers_prune() {
  echo "-- Running ... .. docker_containers_prune("
  docker container prune -a   >> $LOG_FILE
}


##################################################################
# Purpose:  Procedure to build the waardepapieren images and run containers.  
# Arguments: docker-compose -f docker-compose-travis.yml up
# Return: 
##################################################################
docker_compose_min_f_docker-travis_compose_yml_up() {

echo "- building with ... docker-compose -f docker-compose-travis.yml up $CMD_DOCKER_COMPOSE_BUILD "
echo ""

cd ${DOCKER_COMPOSE_DIR}
docker-compose -f docker-compose-travis.yml up $CMD_DOCKER_COMPOSE_BUILD

}

#################################################################
# Purpose:  Procedure to build the mock-nlx image
# Arguments: docker_build_image mock-nlx boscp08 waardepapieren_mock_nlx 1.0 
# Arguments: docker_build_image mock-nlx ${DOCKER_USER} ${MOCK_NLX_IMAGE} ${DOCKER_VERSION_TAG} 
# Return: image
##################################################################


docker_build_image() {
  arg1=$1 #mock-nlx
  arg1=$2 #${DOCKER_USER}
  arg2=$3 #${MOCK_NLX_IMAGE}
  arg3=$4 #${DOCKER_VERSION_TAG}
  echo "- Running docker_build_image dir=$1 => $2/$3:$4  "
 # enter_cont

cd ${GITHUB_DIR}/$1
docker build -t $2/$3 .  #mind the dot!

if [ ${DOCKER_TAG} = true ]
clear
echo "- Running  docker tag $2/$3:latest $2/$3:$4  "
  
  #enter_cont
then docker tag $2/$3:latest $2/$3:$4
fi

if [ ${DOCKER_PUSH} = true 
clear
echo "- Running docker push $2/$3:$4  "
#enter_cont
then docker push $2/$3:$4
fi

cd ${GITHUB_DIR}


}

sjebang() {
write_az_clone_build_ship_deploy_bash   
docker_system_prune -a 
docker_build_image mock-nlx  ${DOCKER_USER} ${MOCK_NLX_IMAGE} ${DOCKER_VERSION_TAG}  
docker_build_image waardepapieren-service ${DOCKER_USER} ${SERVICE_IMAGE} ${DOCKER_VERSION_TAG}  
docker_build_image clerk-frontend ${DOCKER_USER} ${CLERK_FRONTEND_IMAGE} ${DOCKER_VERSION_TAG}  
az login -u bosch.peter@outlook.com -p 0lifanten 
delete_azure_resource_group  
create_azure_resource_group  
create_azure_container_group 
#    14) restart_azure_container_group ;;
}

##################################################################
# Purpose:  Procedure to build waardepapieren-service image
# Arguments: docker build -t boscp08/     NB . periode means from this directory 
# Return: 
##################################################################
docker_build_waardepapieren_service()  {

echo "- Running docker_build_mock_nlx "

cd ${GITHUB_DIR}/waardepapieren-service
docker build -t ${DOCKER_USER}/waardepapieren-service .

}

##################################################################
# Purpose:  Procedure to build the waardepapieren images and run containers.  
# Arguments: docker build -t boscp08/     NB . periode means from this directory 
# Return: 
##################################################################
docker_build_clerk_frontend() {

echo "- Running docker_build_clerk-frontend( "

cd ${GITHUB_DIR}/clerk-frontend
docker build -t ${DOCKER_USER}/clerk-frontend .

}


##################################################################
# Purpose: Procedure to tag docker images (Version)
# Arguments: 
# Return: 
##################################################################
docker_tag() {
clear  
#docker images
#enter_cont

create_logfile_header
echo "- Running ... docker_tag :latest  ${DOCKER_VERSION_TAG}"
echo "- Running ... docker_tag"                                                >> $LOG_FILE
docker tag waardepapieren_clerk-frontend:latest ${DOCKER_USER}/waardepapieren-clerk-frontend:${DOCKER_VERSION_TAG}  
docker tag waardepapieren_waardepapieren-service:latest  ${DOCKER_USER}/waardepapieren-service:${DOCKER_VERSION_TAG} 
docker tag waardepapieren_mock-nlx:latest ${DOCKER_USER}/waardepapieren-mock-nlx:${DOCKER_VERSION_TAG}          

docker images | grep  ${DOCKER_VERSION_TAG}                                      >> $LOG_FILE

create_logfile_footer
docker images | grep  ${DOCKER_VERSION_TAG}   
enter_cont

}

#
##################################################################
# Purpose: Ship to docker registry docker.hub.com
##################################################################
#

##################################################################
# Purpose: Procedure to tag docker images (Version)
# Arguments: 
# Return: 
##################################################################
docker_commit_pending() {
clear  
#docker images
#enter_cont

create_logfile_header
echo "- Running ... docker_commit"
echo "- Running ... docker_commit"                                    >> $LOG_FILE
docker commit waardepapieren_clerk-frontend ${DOCKER_USER}/waardepapieren-clerk-frontend:${DOCKER_VERSION_TAG}  
docker commit  waardepapieren_waardepapieren-service ${DOCKER_USER}/waardepapieren-service:${DOCKER_VERSION_TAG} 
docker commit  waardepapieren_mock-nlx ${DOCKER_USER}/waardepapieren-mock-nlx:${DOCKER_VERSION_TAG}          

docker images | grep  ${DOCKER_VERSION_TAG}   >> $LOG_FILE

create_logfile_footer
docker images | grep  ${DOCKER_VERSION_TAG}   
enter_cont

}

#
##################################################################
# Purpose: DEPLOY-FUNCTIONS 2AZURE FROM DOCKER-HUB   
##################################################################
#

##################################################################
# Purpose: Procedure to create azure resource group aka costcenter/root
# Arguments: 
# Return: 
##################################################################
create_azure_resource_group() {
echo "- Running ... create_azure_resource_group" 
 # $AZ_RESOURCE_GROUP="Discipl_Wigo4it_DockerGroup4"
#echo sure ? createw $AZ_RESOURCE_GROUP
#enter_cont
az group create --name ${AZ_RESOURCE_GROUP} --location westeurope
enter_cont
}

##################################################################
# Purpose: Procedure to delete azure resource group (a.k.a costcentre )
# Arguments: 
# Return: 
##################################################################
delete_azure_resource_group() {
 echo "- Running ... delete_azure_resource_group"
 echo "***  You are about to delete resource group ${AZ_RESOURCE_GROUP}"
  echo "***" 
  echo "az login succeeded ?" 
  enter_cont
az group delete --name ${AZ_RESOURCE_GROUP}
enter_cont
}

##################################################################
# Purpose: Procedure to create the azure containergroup
# Arguments: 
# Return: 
##################################################################
create_azure_container_group() {
echo "- Running ... create_azure_container_group" 
  #az login
  echo "***"   
  echo "***  Welcome to  create_azure_resource_group"
  echo "***"   
  echo "***" 
  echo "***  You are about to create resource group $AZ_RESOURCE_GROUP"
  echo "***" 
  echo "az login succeeded ?"
cd ${GITHUB_DIR}
az container create --resource-group ${AZ_RESOURCE_GROUP} --file deploy-aci.yaml

enter_cont
# https://docs.microsoft.com/en-us/azure/container-instances/container-instances-multi-container-yaml
# View deployment state
# az container show --resource-group ${AZ_RESOURCE_GROUP} --name myContainerGroup --output table
}

##################################################################
# Purpose: Procedure to create the azure containergroup
# Arguments: 
# Return: CI CD 
##################################################################
restart_azure_container_group() {
echo "- Running ... create_azure_container_group" 
cd ${PROJECT_DIR}
az container restart --resource-group ${AZ_RESOURCE_GROUP} 

}

##################################################################
# Purpose: Procedure to save the program to the LOG_FILE
# Arguments: 
# Return: dokuwiki 
##################################################################
write_az_clone_build_ship_deploy_bash() {

echo "====== az_clone_build_ship_deploy.bash ======"                         >> $LOG_FILE
echo "| ${LOG_START_DATE_TIME} | ${GITHUB_DIR}|"                             >> $LOG_FILE
echo "| ${LOG_START_DATE_TIME} | az_clone_build_ship_deploy.bash |"          >> $LOG_FILE
echo  "<code>"                                                               >> $LOG_FILE 
cat  ${GITHUB_DIR}/az_aci_clone_build_ship_deploy.bash                       >> $LOG_FILE
echo "</code>"                                                               >> $LOG_FILE
echo "====== menu.bash  ======"                                              >> $LOG_FILE
echo "| ${LOG_START_DATE_TIME} | ${GITHUB_DIR}|"                             >> $LOG_FILE
echo "| ${LOG_START_DATE_TIME} | menu.bash |"                                >> $LOG_FILE
echo  "<code>"                                                               >> $LOG_FILE 
cat  ${GITHUB_DIR}/menu.bash                                                 >> $LOG_FILE
echo "</code>"                                                               >> $LOG_FILE


}




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
    echo "# ----------------------------------"
    echo "Step 1: prune "
    echo "# ----------------------------------"
    echo "#10. Reset (docker system prune-a)"
    echo "# ----------------------------------"
    echo "Step 2:   Dockerfile setters"
    echo "# ----------------------------------"
    echo "20. SET_DOCKERCOMPOSE_TRAVIS_WITHOUT_VOLUME "
    echo "21. SET_DOCKERFILE_CLERK_FRONTEND_WITHOUT_VOLUME"
    echo "22. SET_DOCKERFILE_CLERK_FRONTEND_WITHOUT_VOLUME"
    echo "23. SET_DOCEKERFILE_WAARDEPAPIEREN_WITHOUT_VOLUME"
    echo "# ----------------------------------"
    echo "#Step 3 : Networking setters" 
    echo "# ----------------------------------" 
    echo "30. SET_CLERK_FRONTEND_NGINX_CONF"
    echo "31. SET_WAARDEPAPIEREN_SERVICE_CONFIG_COMPOSE_TRAVIS_JSON"
    echo "32. SET_WAARDEPAPIEREN_CONFIG_COMPOS_JSON"
    echo "33.SET_WAARDEPAPIEREN_CONFIG_JSON"
    echo "# ----------------------------------" 
    echo "#step 4: docker-compose  docker build "
    echo "# ----------------------------------"
    echo "40. docker_compose "
    echo "41. docker_build_image mock_nlx ${DOCKER_VERSION_TAG}"
    echo "42. docker_build_image waardepapieren-service ${DOCKER_VERSION_TAG}"
    echo "33. docker_build_image clerk-frontend ${DOCKER_VERSION_TAG}"
    echo "# ----------------------------------"
    echo "#step 5: azure  "
    echo "# ----------------------------------"
    echo "50) delete_azure_resource_group $AZ_RESOURCE_GROUP "
    echo "51..) create_azure_resource_group $AZ_RESOURCE_GROUP"
    echo "52..) create_azure_container_group $AZ_RESOURCE_GROUP"
    echo "53..) restart_azure_container_group $AZ_RESOURCE_GROUP  a.ka. (re) pull docker hub"
    echo "# ----------------------------------"
    echo "#step 6 check check triple check  clone build ship deploy "
    echo "# ----------------------------------" 
    echo "60. open -a Firefox https://github.com/BoschPeter/$GIT_REPO "    #clone
    #echo "61. open -a Firefox https://github.com/BoschPeter/$GIT_REPO "    #clone
    echo "62. open -a Firefox 'https://hub.docker.com/?ref=login' boscp08 Peter!...."   #Ship
	echo "63. open -a Firefox 'https://portal.azure.com/#home' bosch.peter@outlook.com 0l..ten"
    echo "64. open -a Firefox https://$CERT_HOST_IP:443  " #hope the clerk frontend will be stable "
    echo "# ----------------------------------"
	echo "#step 9  miscelaneous "
    echo "# ----------------------------------"
    echo "90..) az login -u bosch.peter@outlook.com" 
    echo "91. the whole sjebang"
    echo "92. backup scripts"
	echo "99. reload az_aci_clone_build_ship_deploy.bash"
    echo "100 Exit"
}
# read input from the keyboard and take a action
# invoke the one() when the user select 1 from the menu option.
# invoke the two() when the user select 2 from the menu option.
# Exit when user the user select 3 form the menu option.
#https://portal.azure.com/#@boschpeteroutlook.onmicrosoft.com/resource/subscriptions/cfcb03ea-255b-42f8-beca-2d4ac30779bb/resourceGroups/Discipl_Wigo4it_ACI/providers/Microsoft.ContainerInstance/containerGroups/Discipl_Wigo4it_ACI/containers

read_options(){
	local choice
	read -p "Enter choice [ 1 - 99] " choice
	case $choice in
        10) docker_system_prune        ;;  #Reset (docker system prune-a)"
        20) docker_compose_travis_yml_without_volumes        ;;  #SET_DOCKERCOMPOSE_TRAVIS_WITHOUT_VOLUME 
        21) clerk_frontend_dockerfile_with_volumes      ;;  #SET_DOCKERFILE_CLERK_FRONTEND_WITHOUT_VOLUME
        22) clerk_frontend_dockerfile_without_volumes        ;;  #SET_DOCKERFILE_CLERK_FRONTEND_WITHOUT_VOLUME
        23) waardepapieren_service_dockerfile_without_volumes       ;;  #SET_DOCEKERFILE_WAARDEPAPIEREN_WITHOUT_VOLUME
        30) clerk_frontend_nginx_conf       ;;  #SET_CLERK_FRONTEND_NGINX_CONF
        31) waardepapieren_service_config_compose_travis_json        ;;  #SET_WAARDEPAPIEREN_SERVICE_CONFIG_COMPOSE_TRAVIS_JSON
        32) waardepapieren_service_config_compose_json        ;;  #SET_WAARDEPAPIEREN_CONFIG_COMPOS_JSON
        33) waardepapieren_service_config_json        ;;  #SET_WAARDEPAPIEREN_CONFIG_JSON
        40) docker_compose_min_f_docker      ;;  #docker_compose 
        41) docker_build_image mock_nlx ${DOCKER_VERSION_TAG}       ;;  #docker_build_image mock_nlx ${DOCKER_VERSION_TAG}
        42) docker_build_image waardepapieren-service ${DOCKER_VERSION_TAG}        ;;  #docker_build_image waardepapieren-service ${DOCKER_VERSION_TAG}
        33) docker_build_image clerk-frontend ${DOCKER_VERSION_TAG}       ;;  #docker_build_image clerk-frontend ${DOCKER_VERSION_TAG}
        50) delete_azure_resource_group          ;;  #delete_azure_resource_group $AZ_RESOURCE_GROUP 
        51) create_azure_resource_group          ;;  #create_azure_resource_group $AZ_RESOURCE_GROUP
        52) create_azure_resource_group          ;;  #create_azure_container_group $AZ_RESOURCE_GROUP
        53) restart_azure_container_group        ;;  #restart_azure_container_group $AZ_RESOURCE_GROUP  a.ka. (re) pull docker hub
        60) open -a Firefox https://github.com/BoschPeter/$GIT_REPO          ;;
        61) open -a Firefox 'https://portal.azure.com/#@boschpeteroutlook.onmicrosoft.com/resource/subscriptions/cfcb03ea-255b-42f8-beca-2d4ac30779bb/resourceGroups/${AZ_RESOURCE_GROUP}/providers/Microsoft.ContainerInstance/containerGroups/$AZ_RESOURCE_GROUP/containers'       ;;
        62) open -a Firefox 'https://hub.docker.com/?ref=login' -p boscp08 -u Peter!2020  ;; 
	    63) open -a Firefox 'https://portal.azure.com/#home' ;; # bosch.peter@outlook.com 0l..ten ;;tal.azure.com/#home' bosch.peter@outlook.com 0l..ten
        64) open -a Firefox https://$CERT_HOST_IP:443  ;; " #hope the clerk frontend will be stable after 10 minutes or so... understatement "
        90) az login -u bosch.peter@outlook.com  -p 0lifanten ;;  #az login -u bosch.peter@outlook.com" 
        92) sjebang         ;;  #the whole sjebang"
        93) write_az_clone_build_ship_deploy_bash  ;;  #backup scripts"
	    99) . az_aci_clone_build_ship_deploy.bash 
        100) Exit ;;
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

hellup

#! /bin/bash
# //////////////////////////////////////////////////////////////////////////////////////////
#    File Type   :- BASH Script (needs docker-CLI and AZURE-CLI installed)
#  
#    Description :- This script builds "waardepapieren" containers and ships images to hub.docker.com and beyond to ACI
#    Modified           Date           Description
#    --------           --------       -------------------------------------------------
#    Peter Bosch       21.12.2019      macOs configuration
#    Peter Bosch       20.12.2019      processing technical dept
#    Peter Bosch       05.12.2019      Initial version.
#
# //////////////////////////////////////////////////////////////////////////////////////////
#   File:            :az_aci_clone_build_ship_deploy.bash
#   version          :20191204 v0
#   File Type        :Bash is a command processor that typically runs in a text window 
#                     Bash can also read and execute commands from a file, called a shell script.
#   Purpose          :download - Clone - Build - Ship - Deploy https://github.com/dsicipl/waardepapieren.git     
#   Title:           : 
#   Category         :CI CD
#   Identificatie    :https://github.com/BoschPeter/AZ_ACI_waardepapieren-demo_westeurope_azurecontainer_io

#example Pim Otte
#10dec 2:35 PM @Bas Als het goed is werkt https://waardepapieren-demo.discipl.org/
#Ik had wel hier problemen met de ICTU firewall die het blokkeerde, ik moest met mijn telefoon op 4g om het werkend te krijgen

#https://waardepapieren-demo.discipl.org/    BSN=663678651
#https://waardepapieren-demo.westeurope.cloudapp.azure.com  VM
#https://waardepapieren-demo.westeurope.azurecontainer.io ACI


#'********** instructions **********
#1. enter your parameters ...
#2  modify functions docker config build files (be carefull or ask pim)
#3 run script as follows 
#  chmod +x az_clone_build_ship_deploy.bash  
#  ./az_clone_build_ship_deploy.bash


# Running
#
# The easiest way to run is using docker-compose:  but needs a (virtual) machine to run on.
#
# With docker compose you use a simple text file to define an application that consists of multiple Docker containers.
# You then run your application with a single command that does everything to implement your defined environment.

# This will start 3 applications:
#
#    clerk-frontend
#    waardepapieren-service, with embedded ephemeral-server
#    nlx-mock, which is an nlx-outway that provides access to a mock BRP service
#

#  Run docker-compose up#  Run docker-compose down  a.k.a restart.  stop /start
#
#  Alternatively, you can use an offline mock, which replicates the NLX environment.
#
#  Run docker-compose -f docker-compose-travis.yml up
#  The clerk frontend will be available at https://localhost:443 on your local pc. 
#  Below the cookbook to deploy your containers as a so called ACI Azure Container Instance. 
#  simular to k8s pod ?


#'********** parameters **********

#echo "#######################"
#echo "## FQDN
#echo "#######################" 

# This is done as follows:
#
#  Set the environment variable CERT_HOST_IP is with an IP (or domain) that the validator app can use to reach the clerk-frontend container.  
#  Ensure that the validator expo app runs on the same (wifi) network as the clerk frontend. (BSN=663678651)

## ----------------------------------
# Step #1: Define variables
# ----------------------------------
##################################################################
# Purpose: set FQDN  start of your FQDN in azure.
# Arguments: waardepapieren-demo
# Return: https://waardepapieren-demo.westeurope.azurecontainer.io
##################################################################
#AZ_DNSNAMELABEL=waardepapieren-demo   #<<<FQDN first part goes here. s
AZ_DNSNAMELABEL=discipl  # target FQDN=https://discipl.westeurope.azurecontainer.io

#TIMEZONE="ENV TZ=Europe/Amsterdam"
TIMEZONE=""

#TARGET_HOST=linux_VM
TARGET_HOST=azure_container_instance

 if [ "$TARGET_HOST" = "linux_VM" ]; then
       echo expression evaluated as linux_VM
       AZ_TLD=cloudapp.azure.com
       GIT_REPO=AZ_VM_waardepapieren-demo_westeurope_cloudapp_azure_com

 fi

if [ "$TARGET_HOST" = "azure_container_instance" ]; then
       echo expression evaluated as azure_container_instance
       AZ_TLD=azurecontainer.io
       GIT_REPO=AZ_ACI_waardepapieren-demo_westeurope_azurecontainer_io
fi

CERT_HOST_IP=$AZ_DNSNAMELABEL.westeurope."$AZ_TLD"  #FQDN linux
CERT_HOST_IP_WAARDEPAPIEREN_SERVICE_HOSTNAME=$AZ_DNSNAMELABEL.westeurope.$AZ_TLD

#tt overrule
#CERT_HOST_IP=localhost  #FQDN linux
#CERT_HOST_IP_WAARDEPAPIEREN_SERVICE_HOSTNAME=localhost


#echo "#######################"
#echo "## DOWNLOAD
#echo "#######################" 

# install git
# install docker  
# (install docker-compose)  depreciated
# install_azure_cli

#echo "#######################"
#echo "## CLONE
#echo "#######################" 

CMD_GIT_CLONE=false  

#echo "#######################"
#echo "##   docker system prune -a   #from scratch
#echo "#######################"

CMD_CONTAINER_STOP=false
CMD_IMAGE_REMOVE=false
CMD_CONTAINER_PRUNE=false

#echo "#######################"
#echo "## BUILD with docker-compose -f 
#echo "#######################" 
CMD_DOCKER_COMPOSE=false  #volumes and links depreciated
CMD_DOCKER_COMPOSE_BUILD=" --build"

#echo "#######################"
#echo "## DOCKER BUILD 
#echo "#######################"
CMD_DOCKER_BUILD_MOCK_NLX=false     #docker_build_mock_nlx
CMD_DOCKER_BUILD_WAARDEPAPIEREN_SERVICE=false #docker_build_waardepapieren_service
CMD_DOCKER_BUILD_CLERK_FRONTEND=false  #docker_build_clerk_frontend

MOCK_NLX_IMAGE=waardepapieren_mock-nlx
SERVICE_IMAGE=waardepapieren_waardepapieren-service
CLERK_FRONTEND_IMAGE=waardepapieren_clerk-frontend

DOCKER_VERSION_TAG="4.0"
#DOCKER_VERSION_TAG="2.0"
#echo "#######################"
#echo "## DOCKER SHIP 
#echo "#######################" 

DOCKER_TAG=false
DOCKER_COMMIT=false
DOCKER_USER="boscp08"  #NB repository name must be lowercase
DOCKER_PUSH=false  #hub.docker.com   NB with docker commit you loose ENV

#echo "#######################"
#echo "## AZURE DEPLOY
#echo "#######################" 
AZ_RESOURCE_GROUP="Discipl_Wigo4it_ACI"  #waardepapierenVM
CMD_AZ_RESOURCE_GROUP_DELETE=false
CMD_AZ_RESOURCE_GROUP_CREATE=false

CREATE_AZ_DEPLOY_ACI_YAML=true #@PROJECT_DIR deploy_aci.yml
CMD_AZ_CREATE_CONTAINERGROUP=false  #.. jeuh - - Running ... ..
CMD_AZ_RESTART_CONTAINERGROUP=false

#echo "#######################"
#echo "## DOWNLOAD / directories used building images on this pc 
#echo "#######################" 

if [ `uname` = 'Linux' ]
  then  HOME_DIR=/home/`whoami`    #boscp08 
  echo "linux"
fi  

if  [ `uname` = 'Darwin' ]
    then  HOME_DIR=/Users/`whoami` #boscp08   
    echo "Darwin"
fi

LOG_START_DATE_TIME=`date +%Y%m%d_%H_%M`  
PROJECT_DIR=$HOME_DIR/Projects/scratch/virtual-insanity
#GIT_REPO=AZ_ACI_waardepapieren-demo_westeurope_azurecontainer_io  see befores
GITHUB_DIR=$PROJECT_DIR/${GIT_REPO}   #git clone https://github.com/ezahr/Waardepapieren-AZURE-ACI.git 
LOG_DIR=${GITHUB_DIR}/LOG_DIR
LOG_FILE=${LOG_DIR}/LOG_${LOG_START_DATE_TIME}.log

#the_world_is_flat=true
## ...do something interesting...
#if [ "$the_world_is_flat" = true ] ; then
#    echo 'Be careful not to fall off!'
#fi

SET_DOCKERCOMPOSE_TRAVIS_WITHOUT_VOLUME=true       # mimic native Dockerfile build  #! no volumes , no links (bridged docker network)
SET_DOCKERFILE_CLERK_FRONTEND_WITHOUT_VOLUME=true  # mimic native Dockerfile build  #! no volumes , no links (bridged docker network)
SET_DOCKERFILE_WAARDEPAPIEREN_WITHOUT_VOLUME=true  # mimic native Dockerfile build  #! no volumes , no links (bridged docker network)
SET_DOCKERFILE_MOCK_NLX=true  

SET_DOCKERCOMPOSE_TRAVIS_WITH_VOLUME=false         # bypass docker-compose depreciated and causes cloud / k8s issues
SET_DOCKERFILE_CLERK_FRONTEND_WITH_VOLUME=false    # bypass docker-compose ACI cloud volume issue
SET_DOCKERFILE_WAARDEPAPIEREN_WITH_VOLUME=false    # bypass docker-compose ACI cloud bridged network issus

SET_CLERK_FRONTEND_NGINX_CONF=true
SET_WAARDEPAPIEREN_SERVICE_CONFIG_COMPOSE_TRAVIS_JSON=true
SET_WAARDEPAPIEREN_SERVICE_CONFIG_COMPOSE=true
SET_WAARDEPAPIEREN_SERVICE_CONFIG=true

#EPHEMERAL_RETENTION_TIME=86400  #24h 
EPHEMERAL_RETENTION_TIME=2591205  #30 dage

#echo "#######################"
#echo "## feedbak 
#echo "#######################" 
PROMPT=true # echo parameters
DOUBLE_CHECK=true  #cat content modified files to ${LOG_DIR}
 
#'********** end of parameters **********

#'>>> below the functions that are called by other functions
# modify at your own peril! because of configuration drift 
# main purpose of this script to show configuration for containers spinning in the cloud. 


# ----------------------------------
# Step #2: User defined function
# ----------------------------------
##################################################################
# Purpose: modify docker-compose-travis.yml 
# Arguments: 
# Return: 
##################################################################
docker_compose_travis_yml_with_volumes() {
echo "- Running ... docker_compose_travis_yml_with_volumes"

TT_DIRECTORY=${GITHUB_DIR}
TT_INSPECT_FILE=docker-compose-travis.yml 
echo ${TT_DIRECTORY}.${TT_INSPECT_FILE}

enter_touch

echo "version: '3'
services:
  waardepapieren-service:
    volumes:
      - ./waardepapieren-service/system-test/certs:/certs:ro
      - ./waardepapieren-service/system-test/ephemeral-certs:/ephemeral-certs:ro
      - ./waardepapieren-service/configuration/:/app/configuration:ro
    build: waardepapieren-service/.
    # network_mode: host
    #networks:
    #  test:
    links:
      - mock-nlx
    ports:
      - 3232:3232
      - 3233:3233
    environment:
      - WAARDEPAPIEREN_CONFIG=/app/configuration/waardepapieren-config-compose-travis.json
      # Ignore self-signed ephemeral cert issues
      - NODE_TLS_REJECT_UNAUTHORIZED=0
  clerk-frontend:
    build:
      #network_mode: host
    #  networks:
    #  test:
      context: clerk-frontend/
      args:
        - CERTIFICATE_HOST=http://${CERT_HOST_IP}:8880
    links:
      - waardepapieren-service
        ports:
      - 443:443
      - 8880:8880

    healthcheck:
      test: service nginx status
    volumes:
      - ./clerk-frontend/nginx/certs:/etc/nginx/certs:ro
  mock-nlx:
    build: mock-nlx/
    #network_mode: host
    #networks:
    #  test:
    ports:
      - 80:80
    
    #networks:
    #test:
    #driver: bridge  "  > ${TT_INSPECT_FILE} #docker-compose-travis.yml

if [ ${DOUBLE_CHECK} =  true ]
  then enter_inspect
fi 

TT_DIRECTORY=""
TT_INSPECT_FILE=""

}
##################################################################
# Purpose: modify docker-compose-travis.yml 
# Arguments: 
# Return: 
##################################################################
docker_compose_travis_yml_without_volumes() {
echo "- Running ... docker_compose_travis_yml_without_volumes"
#cd ${DOCKER_COMPOSE_DIR}
#touch docker-compose-travis.yml 
#mv docker-compose-travis.yml  docker-compose-travis_`date "+%Y%m%d-%H%M%S"`.yml

TT_DIRECTORY=${GITHUB_DIR}
TT_INSPECT_FILE=docker-compose-travis.yml 
echo ${TT_DIRECTORY}.${TT_INSPECT_FILE}

enter_touch

echo "version: '3'
services:
  waardepapieren-service:
    volumes:
      #- ./waardepapieren-service/system-test/certs:/certs:rw
      #- ./waardepapieren-service/system-test/ephemeral-certs:/ephemeral-certs:rw
      - ./waardepapieren-service/configuration/:/app/configuration2:rw  #FAKE
    build: waardepapieren-service/.
    links:
      - mock-nlx
    ports:
      - 3232:3232
      - 3233:3233
    environment:
      - WAARDEPAPIEREN_CONFIG=/app/configuration/waardepapieren-config-compose-travis.json
      # Ignore self-signed ephemeral cert issues
      - NODE_TLS_REJECT_UNAUTHORIZED=0
  clerk-frontend:
    build:
      context: clerk-frontend/
      args:
        - CERTIFICATE_HOST=http://${CERT_HOST_IP}:8880
    links:
      - waardepapieren-service
    ports:
      - 443:443
      - 8880:8880
    healthcheck:
      test: service nginx status
  #  volumes:
  #    - ./clerk-frontend/nginx/certs:/etc/nginx/certs:rw
  mock-nlx:
    build: mock-nlx/
    ports:
      - 80:80" > ${TT_INSPECT_FILE} #docker-compose-travis.yml

if [ ${DOUBLE_CHECK} = true ]
  then enter_inspect
fi 

TT_DIRECTORY=""
TT_INSPECT_FILE=""

}

##################################################################
# Purpose: set clerk-frontend Dockerfile
# Arguments: 
# Return: 
##################################################################
clerk_frontend_dockerfile_with_volumes() {
echo "- Running ... clerk_frontend_dockerfile_with_volumes"

TT_DIRECTORY=${GITHUB_DIR}/clerk-frontend
TT_INSPECT_FILE=Dockerfile 
enter_touch

echo "FROM node:10
RUN mkdir /app
ADD package.json package-lock.json /app/
ENV REACT_APP_EPHEMERAL_ENDPOINT=https://${CERT_HOST_IP}:443/api/eph
ENV REACT_APP_EPHEMERAL_WEBSOCKET_ENDPOINT=wss://${CERT_HOST_IP}:443/api/eph-ws
WORKDIR /app
RUN npm install --unsafe-perm
ADD public /app/public
ADD src /app/src
ARG CERTIFICATE_HOST
ENV REACT_APP_CERTIFICATE_HOST=${CERTIFICATE_HOST}
ENV TZ=Europe/Amsterdam
RUN npm run build

FROM nginx:1.15.8
ADD nginx/nginx.conf /etc/nginx/nginx.conf
COPY --from=0 /app/build /usr/share/nginx/html"  > ${TT_INSPECT_FILE} #Dockerfile

if [ ${DOUBLE_CHECK} =  true ]
  then enter_inspect
fi 

TT_DIRECTORY=""
TT_INSPECT_FILE=""

}


##################################################################
# Purpose: modify mock-nlx.Dockerfile
# Arguments: 
# Return: 
##################################################################
mock_nlx_dockerfile() {  

echo "- Running ... mock_nlx_dockerfile"

TT_DIRECTORY=${GITHUB_DIR}/mock-nlx
TT_INSPECT_FILE=Dockerfile 
enter_touch

echo "FROM node:10
RUN mkdir /app
ADD index.js package.json package-lock.json /app/
WORKDIR /app
$TIMEZONE
RUN npm install --production" > ${TT_INSPECT_FILE} # Dockerfile

if [ ${DOUBLE_CHECK} = true ]
  then enter_inspect
fi 

TT_DIRECTORY=""
TT_INSPECT_FILE=""

}

##################################################################
# Purpose: modify clerk-frontend.Dockerfile
# Arguments: 
# Return: 
##################################################################
clerk_frontend_dockerfile_without_volumes() {

echo "- Running ... clerk_frontend_dockerfile_without_volumes"

TT_DIRECTORY=${GITHUB_DIR}/clerk-frontend
TT_INSPECT_FILE=Dockerfile 
enter_touch

echo "FROM node:10
RUN mkdir /app
ADD package.json package-lock.json /app/
ENV REACT_APP_EPHEMERAL_ENDPOINT=https://${CERT_HOST_IP}:443/api/eph
ENV REACT_APP_EPHEMERAL_WEBSOCKET_ENDPOINT=wss://${CERT_HOST_IP}:443/api/eph-ws
WORKDIR /app
RUN npm install --unsafe-perm
ADD public /app/public
ADD src /app/src
ARG CERTIFICATE_HOST
ENV REACT_APP_CERTIFICATE_HOST=http://${CERT_HOST_IP}:8880
ENV TZ=Europe/Amsterdam
RUN npm run build

FROM nginx:1.15.8
ADD nginx/nginx.conf /etc/nginx/nginx.conf
COPY --from=0 /app/build /usr/share/nginx/html
#  volumes:
#    - ./clerk-frontend/nginx/certs:/etc/nginx/certs:rw
RUN mkdir /etc/nginx/certs
RUN apt-get update 
RUN apt-get install -y iputils-ping
RUN apt-get install -y net-tools

ADD nginx/certs/org.crt /etc/nginx/certs/org.crt
ADD nginx/certs/org.key /etc/nginx/certs/org.key"  > ${TT_INSPECT_FILE} # Dockerfile

if [ ${DOUBLE_CHECK} = true ]
  then enter_inspect
fi 

TT_DIRECTORY=""
TT_INSPECT_FILE=""

}

##################################################################
# Purpose: hack into clerk-frontend build in nginx
# Arguments: 
# Return: 
##################################################################
clerk_frontend_nginx_conf() {

echo "- Running ... clerk_frontend_nginx_conf"

TT_DIRECTORY=${GITHUB_DIR}/clerk-frontend/nginx
TT_INSPECT_FILE=nginx.conf
enter_touch

echo "events {
    worker_connections  1024;
}

http {

    map \$http_upgrade \$connection_upgrade {
        default upgrade;
        '' close;
    }

    # Http server to obtain NLX certificate
    server {
        listen 8880;

        location / {
           root /usr/share/nginx/html;
           include /etc/nginx/mime.types;
        }
    }

    server {
        listen 443 ssl;

        ssl_certificate /etc/nginx/certs/org.crt;
        ssl_certificate_key /etc/nginx/certs/org.key;

        location /api/eph/ {
               proxy_pass https://${CERT_HOST_IP_WAARDEPAPIEREN_SERVICE_HOSTNAME}:3232/;    #pdf effect
           #     proxy_pass https://waardepapieren-service:3232/;
            #     proxy_pass https://172.19.0.3:3232/;
        }

        location /api/eph-ws {
           
              proxy_pass https://${CERT_HOST_IP_WAARDEPAPIEREN_SERVICE_HOSTNAME}:3232;   # pdf effect
             #  proxy_pass https://waardepapieren-service:3232;
            #  proxy_pass https://172.19.0.3:3232;
            proxy_http_version 1.1;
            proxy_set_header Upgrade \$http_upgrade;
            proxy_set_header Connection "Upgrade";
        }
        location / {
            root /usr/share/nginx/html;
            include /etc/nginx/mime.types;
        }
    }
}" > ${TT_INSPECT_FILE}  #nginx.conf

if [ ${DOUBLE_CHECK} =  true ]
  then enter_inspect
fi 

TT_DIRECTORY=""
TT_INSPECT_FILE=""

} 

##################################################################
# Purpose: hack into waardepapieren-servcie Dockerfile
# Arguments: 
# Return: 
##################################################################
waardepapieren_service_dockerfile_with_volumes() {
echo "- Running ... waardepapieren_service_dockerfile_with_volumes"

TT_DIRECTORY=${GITHUB_DIR}/waardepapieren-service
TT_INSPECT_FILE=Dockerfile
enter_touch

echo "FROM node:10
RUN mkdir /app
ADD .babelrc package.json package-lock.json /app/
ADD src/* app/src/
ADD configuration/* app/configuration/
ENV WAARDEPAPIEREN_CONFIG /app/configuration/waardepapieren-config.json
ENV TZ=Europe/Amsterdam
WORKDIR /app
RUN npm install --production
CMD npm start"  > ${TT_INSPECT_FILE} #Dockerfile

if [ ${DOUBLE_CHECK} =  true ]
  then enter_inspect
fi 
TT_DIRECTORY=""
TT_INSPECT_FILE=""

}

##################################################################
# Purpose: hack into waardepapieren-service Dockerfile
# Arguments: 
# Return: 
##################################################################
waardepapieren_service_dockerfile_without_volumes() {
echo "- Running ... waardepapieren_service_dockerfile_without_volumes"

TT_DIRECTORY=${GITHUB_DIR}/waardepapieren-service
TT_INSPECT_FILE=Dockerfile
enter_touch

echo "FROM node:10
RUN mkdir /app
ADD .babelrc package.json package-lock.json /app/
ADD src/* app/src/
ADD configuration/* app/configuration/
#- ./waardepapieren-service/system-test/certs:/certs:ro
RUN mkdir /certs
ADD system-test/certs/org.crt /certs/org.crt
ADD system-test/certs/org.key /certs/org.key
#- ./waardepapieren-service/system-test/ephemeral-certs:/ephemeral-certs:ro
RUN mkdir /ephemeral-certs
ADD system-test/ephemeral-certs/org.crt /ephemeral-certs/
ADD system-test/ephemeral-certs/org.key /ephemeral-certs/
#- ./waardepapieren-service/configuration/:/app/configuration:ro

WORKDIR /app
RUN mkdir /configuration
ADD configuration/waardepapieren-config-compose.json /app/configuration
ADD configuration/waardepapieren-config-compose-travis.json /app/configuration
ADD configuration/waardepapieren-config.json /app/configuration
ENV WAARDEPAPIEREN_CONFIG /app/configuration/waardepapieren-config.json
ENV TZ=Europe/Amsterdam
RUN apt-get update 
RUN apt-get install -y iputils-ping
RUN apt-get install -y net-tools

RUN npm install --production
CMD npm start"  > ${TT_INSPECT_FILE} #Dockerfile

if [ ${DOUBLE_CHECK} =  true ]
  then enter_inspect
fi 
TT_DIRECTORY=""
TT_INSPECT_FILE=""

}

##################################################################
# Purpose: hack into waardepapieren-service config
# Arguments: waardepapieren_service_config_compose_travis_json 
# Return:  waardepapieren-config-compose-travis.json
##################################################################
waardepapieren_service_config_compose_travis_json() {
echo "- Running ... waardepapieren_service_config_compose_travis_json"

TT_DIRECTORY==${GITHUB_DIR}/waardepapieren-service/configuration
TT_INSPECT_FILE=waardepapieren-config-compose-travis.json
enter_touch

echo " {
   \"EPHEMERAL_ENDPOINT\" : \"https://${CERT_HOST_IP}:3232\",
   \"EPHEMERAL_WEBSOCKET_ENDPOINT\" : \"wss://${CERT_HOST_IP}:3232\",
   \"EPHEMERAL_CERT\": \"/ephemeral-certs/org.crt\",
   \"EPHEMERAL_KEY\": \"/ephemeral-certs/org.key\",
  \"NLX_OUTWAY_ENDPOINT\" : \"http://${CERT_HOST_IP}:80\",
  \"NLX_CERT\": \"/certs/org.crt\",
  \"NLX_KEY\": \"/certs/org.key\",
  \"LOG_LEVEL\": \"info\",
  \"EPHEMERAL_RETENTION_TIME\": ${EPHEMERAL_RETENTION_TIME},
  \"PRODUCT_NEED\" : \"BRP_UITTREKSEL_NEED\",
  \"SOURCE_NLX_PATH\" : \"/brp/basisregistratie/natuurlijke_personen/bsn/{BSN}\",
  \"SOURCE_ARGUMENT\" : \"BSN\",
  \"PRODUCT_ACCEPT\" : \"BRP_UITTREKSEL_ACCEPT\",
  \"PRODUCT_NAME\" : \"Gewaarmerkt digitaal afschrift van gegevens uit de basisregistratie personen (BRP)\",
  \"PRODUCT_DESCRIPTION\" : \"Uittreksel Basis Registratie Persoonsgegevens\",
  \"PRODUCT_PURPOSE\" : \"Bewijs verblijfadres in woonplaats\",
  \"SOURCE_DATA_SELECTION\" : [
    {\"Burgerservicenummer (BSN)\" : \"burgerservicenummer\"},
    {\"Woonplaats verblijfadres\" : \"verblijfadres.woonplaats\"}
  ]
} " > ${TT_INSPECT_FILE} # waardepapieren-config-compose-travis.json

if [ ${DOUBLE_CHECK} =  true ]
  then enter_inspect
fi 

TT_DIRECTORY=""
TT_INSPECT_FILE=""

}

##################################################################
# Purpose: hack into waardepapieren-service config
# Arguments: waardepapieren_service_config_json
# Return: waardepapieren-config-compose.json

##################################################################
waardepapieren_service_config_compose_json() {
echo "- Running ... waardepapieren_service_config_compose_json"

TT_DIRECTORY=${GITHUB_DIR}/waardepapieren-service/configuration
TT_INSPECT_FILE=waardepapieren-config-compose.json
enter_touch

echo " {
   \"EPHEMERAL_ENDPOINT\" : \"https://${CERT_HOST_IP}:3232\",
   \"EPHEMERAL_WEBSOCKET_ENDPOINT\" : \"wss://${CERT_HOST_IP}:3232\",
   \"EPHEMERAL_CERT\": \"/ephemeral-certs/org.crt\",
   \"EPHEMERAL_KEY\": \"/ephemeral-certs/org.key\",
  \"NLX_OUTWAY_ENDPOINT\" : \"http://${CERT_HOST_IP}:80\",
  \"NLX_CERT\": \"/certs/org.crt\",
  \"NLX_KEY\": \"/certs/org.key\",
  \"LOG_LEVEL\": \"info\",
  \"EPHEMERAL_RETENTION_TIME\": ${EPHEMERAL_RETENTION_TIME},
  \"PRODUCT_NEED\" : \"BRP_UITTREKSEL_NEED\",
  \"SOURCE_NLX_PATH\" : \"/brp/basisregistratie/natuurlijke_personen/bsn/{BSN}\",
  \"SOURCE_ARGUMENT\" : \"BSN\",
  \"PRODUCT_ACCEPT\" : \"BRP_UITTREKSEL_ACCEPT\",
  \"PRODUCT_NAME\" : \"Gewaarmerkt digitaal afschrift van gegevens uit de basisregistratie personen (BRP)\",
  \"PRODUCT_DESCRIPTION\" : \"Uittreksel Basis Registratie Persoonsgegevens\",
  \"PRODUCT_PURPOSE\" : \"Bewijs verblijfadres in woonplaats\",
  \"SOURCE_DATA_SELECTION\" : [
    {\"Burgerservicenummer (BSN)\" : \"burgerservicenummer\"},
    {\"Woonplaats verblijfadres\" : \"verblijfadres.woonplaats\"}
  ]
} " > ${TT_INSPECT_FILE} # waardepapieren-config-compose-travis.json

if [ ${DOUBLE_CHECK} =  true ]
  then enter_inspect
fi 

TT_DIRECTORY=""
TT_INSPECT_FILE=""

}

##################################################################
# Purpose: hack into waardepapieren-service config
# Arguments: waardepapieren_service_config_json 
# Return: #waardepapieren-config.json
##################################################################
waardepapieren_service_config_json() {
echo "- Running ... waardepapieren_service_config_json"

TT_DIRECTORY=${GITHUB_DIR}/waardepapieren-service/configuration
TT_INSPECT_FILE=waardepapieren-config.json
enter_touch

echo " {
   \"EPHEMERAL_ENDPOINT\" : \"https://${CERT_HOST_IP}:3232\",
   \"EPHEMERAL_WEBSOCKET_ENDPOINT\" : \"wss://${CERT_HOST_IP}:3232\",
   \"EPHEMERAL_CERT\": \"/ephemeral-certs/org.crt\",
   \"EPHEMERAL_KEY\": \"/ephemeral-certs/org.key\",
  \"NLX_OUTWAY_ENDPOINT\" : \"http://${CERT_HOST_IP}:80\",
  \"NLX_CERT\": \"/certs/org.crt\",
  \"NLX_KEY\": \"/certs/org.key\",
  \"LOG_LEVEL\": \"info\",
  \"EPHEMERAL_RETENTION_TIME\": ${EPHEMERAL_RETENTION_TIME},
  \"PRODUCT_NEED\" : \"BRP_UITTREKSEL_NEED\",
  \"SOURCE_NLX_PATH\" : \"/brp/basisregistratie/natuurlijke_personen/bsn/{BSN}\",
  \"SOURCE_ARGUMENT\" : \"BSN\",
  \"PRODUCT_ACCEPT\" : \"BRP_UITTREKSEL_ACCEPT\",
  \"PRODUCT_NAME\" : \"Gewaarmerkt digitaal afschrift van gegevens uit de basisregistratie personen (BRP)\",
  \"PRODUCT_DESCRIPTION\" : \"Uittreksel Basis Registratie Persoonsgegevens\",
  \"PRODUCT_PURPOSE\" : \"Bewijs verblijfadres in woonplaats\",
  \"SOURCE_DATA_SELECTION\" : [
    {\"Burgerservicenummer (BSN)\" : \"burgerservicenummer\"},
    {\"Woonplaats verblijfadres\" : \"verblijfadres.woonplaats\"}
  ]
} " > ${TT_INSPECT_FILE} # waardepapieren-config-compose-travis.json

if [ ${DOUBLE_CHECK} =  true ]
  then enter_inspect
fi 

TT_DIRECTORY=""
TT_INSPECT_FILE=""

}

##################################################################
# Purpose: hack into azure deploy ACI
# Arguments: 
# Return: 
##################################################################
create_azure_deploy_aci_yaml() {
echo "- Running ... create_azure_deploy_aci_yaml"

TT_DIRECTORY=${GITHUB_DIR}
TT_INSPECT_FILE=deploy-aci.yaml
enter_touch

echo "location: westeurope
name: $AZ_RESOURCE_GROUP
properties:
  containers:
  - name: ${MOCK_NLX_IMAGE}
    properties:
      image: ${DOCKER_USER}/${MOCK_NLX_IMAGE}:${DOCKER_VERSION_TAG}
      resources:
        requests:
          cpu: 1
          memoryInGb: 0.5
      ports:
      - port: 80
  - name: ${SERVICE_IMAGE}
    properties:
      image: ${DOCKER_USER}/${SERVICE_IMAGE}:${DOCKER_VERSION_TAG}
      resources:
        requests:
          cpu: 1
          memoryInGb: 0.5
      ports:
      - port: 3232
  - name: ${CLERK_FRONTEND_IMAGE}
    properties:
      image: ${DOCKER_USER}/${CLERK_FRONTEND_IMAGE}:${DOCKER_VERSION_TAG}
      resources:
        requests:
          cpu: 1
          memoryInGb: 0.5
      ports:
      - port: 443
      - port: 8880
  osType: Linux
  ipAddress:
    type: Public
    # fqdn wordt: discipl_waardepapieren.westeurope.azurecontainer.io
    dnsNameLabel: "$AZ_DNSNAMELABEL" 
    ports:
    - protocol: tcp
      port: '443' 
    - protocol: tcp
      port: '3232' 
    - protocol: tcp
      port: '80'    
    - protocol: tcp
      port: '8880'      
tags: null
type: Microsoft.ContainerInstance/containerGroups" > ${TT_INSPECT_FILE}  #deploy-aci.yaml

if [ ${DOUBLE_CHECK} =  true ]
  then enter_inspect
fi 

TT_DIRECTORY=""
TT_INSPECT_FILE=""

}

# -----------------------------------
# Step #3 Main logic - infinite loop
# ------------------------------------
#'# Structured programming:
#'# Entire program logic modularized in User defined function


### barf  
enter_cont() {
    echo
    echo
    echo -n "Press enter to Continue"
    read
}

#################################################
# Purpose: Procedure concurrent version system
# Arguments: 
# Return: 
##################################################################

git_init() {

cd $GITHUB_DIR
git init
#Initialized empty Git repository in /home/boscp08/Dropbox/Github/.git/
git config --global credential.helper store
git config --global user.email "bosch.peter@icloud.com"
git config --global user.name "BoschPeter"
git config --global user.password "Peter\!..."

}

##################################################################
# Purpose: Procedure to clone de github repo on your pc
# Arguments: 
# Return: 
##################################################################

git_clone() {
 echo "- Running ... git_clone ${GIT_REPO}"
 echo "rm -rf ${PROJECT_DIR}/${GIT_REPO} sure?"
 enter_cont
 cd ${PROJECT_DIR}
 rm -rf ${GIT_REPO}
 #git clone https://github.com/discipl/waardepapieren.git
 #git clone https://github.com/AZ_VM_waardepapieren-demo_westeurope_cloudapp_azure_com.git
 #git clone https://github.com/BoschPeter/AZ_ACI_waardepapieren-demo_westeurope_azurecontainer_io.git
 git clone https://github.com/${GIT_REPO}.git  
 
}

# /////////////////////////////////////////////////////////////////////////////////
#  Create a Header in the logfile
# /////////////////////////////////////////////////////////////////////////////////
create_logfile_header() {
    JOB_START_DATE_TIME=`date +%Y%m%d_%H_%M`
    echo $JOB_START_DATE_TIME - BEGIN JOB:                                             >> $LOG_FILE
    echo ----------------------------------------------------------------------------- >> $LOG_FILE
    }

# /////////////////////////////////////////////////////////////////////////////////
#  Create a Footer in the logfile
# /////////////////////////////////////////////////////////////////////////////////
create_logfile_footer() {
    JOB_END_DATE_TIME=`date +%Y%m%d_%H_%M`
    echo $JOB_END_DATE_TIME - END JOB :                                                >> $LOG_FILE
    echo ----------------------------------------------------------------------------- >> $LOG_FILE
    }

##################################################################
# Purpose: Procedure to create directories specified
# Arguments: 
# Return: To check if a directory exists in a shell script you can use the following:
##################################################################
create_logdir() {
     
if ! [ -d "${LOG_DIR}" ]; then
  cd $PROJECT_DIR
  sduo chmod -R 777  ${GITHUB_DIR}
  mkdir  ${LOG_DIR}
  
fi 
}

##################################################################
# Purpose: #echo ${PROJECT_DIR} | awk -F/ '{print "/"$2"/"$3"/"$4"/"$5"/"$6}'
# Arguments: directory structure  #/home/boscp08/Projects/scratch/virtual-insanity
# Return: a folder  /home/boscp08/Dropbox/tt/Waardepapieren-AZURE-ACI
##################################################################
 make_folder() 
    {
     #echo $1
    
   if ! [ -d $1 ]; then
    echo $1 > struct.txt
    sed '/^$/d;s/ /\//g' struct.txt | xargs mkdir -p 
    rm struct.txt
     
     if [ ${PROMPT} = true ]   
        then 
        echo "$1 Directorie(s) have been made"
        cd $1
        pwd
    fi   
    
    #else   echo "$1 directory already exists "
   fi

    }

##################################################################
# Purpose: Procedure to create an empty file
# Arguments: 
# Return: 
##################################################################
enter_touch () {

cd ${TT_DIRECTORY}
touch ${TT_INSPECT_FILE}
}

#
##################################################################
# DOWNLOAD-FUNCTIONS
##################################################################


##################################################################
# Purpose: Procedure to install Docker command line interface
# Arguments: 
# Return: 
##################################################################
install_docker_cli() {
  echo "-- Running ... .. install_docker_cli() "


#description	command
#1	install docker download	sudo install -y docker docker-common docker-client docker-compose
#2	enable docker daemon	systemctl enable docker
#3	and start docker daemon	systemctl start docker
#4	verify that docker daemon is active by running your first container	docker run hello-world
#but now as a 'normal' user
#g roupadd docker usermod -aG docker boscp08 systemctl restart docker docker run hello-world
#systemctl restart docker
}

##################################################################
# Purpose: Procedure to download azure command line interface
# Arguments: 
# Return: 
##################################################################
install_azure_cli() {
  echo "-- Running ... .. install_azure_cli"
udo apt-get update
  sudo apt-get install ca-certificates curl apt-transport-https lsb-release gnupg

#Down load en installeer de micro soft-handtekening sleutel:
#bash
#linux
curl -sL https://packages.microsoft.com/keys/microsoft.asc | 
    gpg --dearmor | 
    sudo tee /etc/apt/trusted.gpg.d/microsoft.asc.gpg > /dev/null

#windows


}

#
##################################################################
# Purpose: CLONE-FUNCTIONS   
##################################################################

##################################################################
# Purpose: Procedure to stop - Running ... docker containers
# Arguments: 
# Return: 
##################################################################
git_init() {
   echo "-- Running ... git init"

#boscp08@boscp08-HP-Compaq-8510p:~/Dropbox/Github$ git init
#Initialized empty Git repository in /home/boscp08/Dropbox/Github/.git/
#  sudo apt install git 
git init

git config --global credential.helper store
git config user.name "BoschPeter"

git config --global user.email "bosch.peter@icloud.com"
git config --global user.name "boschpeter"

git config --global user.password "Peter\....ß"

# git config --global user.name "ezahr"


#git clone https://github.com/ezahr/Waardepapieren-AZURE-ACI.git
#cd into 

}


















#
##################################################################
# Purpose: BUILD-FUNCTIONS
##################################################################
#


##################################################################
# Purpose: create directories if neccecary.
# Arguments: 
# Return: specified directory structure
##################################################################
create_directories() {

make_folder ${PROJECT_DIR}     

}

##################################################################
# Purpose:   show content of Dockerfile/ configfiles. 
# Arguments: 
# Return: 
##################################################################
enter_inspect() {
clear

if [ -f "${TT_INSPECT_FILE}" ]; then
 
create_logfile_header

echo "| ${LOG_START_DATE_TIME} | ${TT_INSPECT_FILE}|"                                >> $LOG_FILE  
echo "| ${LOG_START_DATE_TIME} | ${TT_DIRECTORY} |"                                  >> $LOG_FILE
echo "<code>"                                                                        >> $LOG_FILE
cat  ${TT_INSPECT_FILE}                                                              >> $LOG_FILE
echo "</code>"                                                                       >> $LOG_FILE
create_logfile_footer

else 
cd ${DOCKER_COMPOSE_DIR}
clear
echo "File ${TT_INSPECT_FILE} is missing or cannot be executed"   
enter_cont
fi

if [ ${PROMPT} = true ] 
then 
clear

echo ""
echo "========="
pathname=${TT_DIRECTORY}
echo "enter inspect : ${TT_INSPECT_FILE} " 
echo "folder   =$(basename $pathname) "
echo "git-repo =$(basename $(dirname $pathname)) "
echo "project  =$(basename $(dirname $(dirname $pathname))) "
echo "========="
echo ""
cat  ${TT_INSPECT_FILE} | more
echo ""
echo "========="
pathname=${TT_DIRECTORY}
echo "enter inspect : ${TT_INSPECT_FILE} " 
echo "folder = $(basename $pathname) "
echo "git-repo=$(basename $(dirname $pathname)) "
echo "project=$(basename $(dirname $(dirname $pathname))) "
echo "========="
enter_cont

fi

}

##################################################################
# Purpose:  docker system prune -a
# Arguments: 
# Return:   remove all docker objects  starting from scratch.
##################################################################
docker_system_prune() {
  echo "-- Running ...docker system prune -a "

docker system prune -a   
}

##################################################################
# Purpose: remove alle containers 
# Arguments: 
# Return: 
##################################################################
docker_containers_stop() {
   echo "-- Running ... .. docker_containers_stop"
  docker stop  $(docker ps -a -q)
  
}

##################################################################
# Purpose:  remove alle containers and images d
# Arguments: 
# Return:   
##################################################################
docker_images_remove() {
  echo "-- Running ... .. docker_images_remove("

docker rm $(docker ps -a -q) && docker rmi $(docker images -q)

}

##################################################################
# Purpose:  remove all stopped containers (just waist of storage} 
# Arguments: 
# Return: 
##################################################################
docker_containers_prune() {
  echo "-- Running ... .. docker_containers_prune("
  docker container prune -a   >> $LOG_FILE
}


##################################################################
# Purpose:  Procedure to build the waardepapieren images and run containers.  
# Arguments: docker-compose -f docker-compose-travis.yml up
# Return: 
##################################################################
docker_compose_min_f_docker-travis_compose_yml_up() {

echo "- building with ... docker-compose -f docker-compose-travis.yml up $CMD_DOCKER_COMPOSE_BUILD "
echo ""

cd ${DOCKER_COMPOSE_DIR}
docker-compose -f docker-compose-travis.yml up $CMD_DOCKER_COMPOSE_BUILD

}

#################################################################
# Purpose:  Procedure to build the mock-nlx image
# Arguments: docker_build_image mock-nlx boscp08 waardepapieren_mock_nlx 1.0 
# Arguments: docker_build_image mock-nlx ${DOCKER_USER} ${MOCK_NLX_IMAGE} ${DOCKER_VERSION_TAG} 
# Return: image
##################################################################


docker_build_image() {
  arg1=$1 #mock-nlx
  arg1=$2 #${DOCKER_USER}
  arg2=$3 #${MOCK_NLX_IMAGE}
  arg3=$4 #${DOCKER_VERSION_TAG}
  echo "- Running docker_build_image dir=$1 => $2/$3:$4  "
 # enter_cont

cd ${GITHUB_DIR}/$1
docker build -t $2/$3 .  #mind the dot!

if [ ${DOCKER_TAG} = true ]
clear
echo "- Running  docker tag $2/$3:latest $2/$3:$4  "
  
  #enter_cont
then docker tag $2/$3:latest $2/$3:$4
fi

if [ ${DOCKER_PUSH} = true 
clear
echo "- Running docker push $2/$3:$4  "
#enter_cont
then docker push $2/$3:$4
fi

cd ${GITHUB_DIR}


}

sjebang() {
write_az_clone_build_ship_deploy_bash   
docker_system_prune -a 
docker_build_image mock-nlx  ${DOCKER_USER} ${MOCK_NLX_IMAGE} ${DOCKER_VERSION_TAG}  
docker_build_image waardepapieren-service ${DOCKER_USER} ${SERVICE_IMAGE} ${DOCKER_VERSION_TAG}  
docker_build_image clerk-frontend ${DOCKER_USER} ${CLERK_FRONTEND_IMAGE} ${DOCKER_VERSION_TAG}  
az login -u bosch.peter@outlook.com -p 0lifanten 
delete_azure_resource_group  
create_azure_resource_group  
create_azure_container_group 
#    14) restart_azure_container_group ;;
}

##################################################################
# Purpose:  Procedure to build waardepapieren-service image
# Arguments: docker build -t boscp08/     NB . periode means from this directory 
# Return: 
##################################################################
docker_build_waardepapieren_service()  {

echo "- Running docker_build_mock_nlx "

cd ${GITHUB_DIR}/waardepapieren-service
docker build -t ${DOCKER_USER}/waardepapieren-service .

}

##################################################################
# Purpose:  Procedure to build the waardepapieren images and run containers.  
# Arguments: docker build -t boscp08/     NB . periode means from this directory 
# Return: 
##################################################################
docker_build_clerk_frontend() {

echo "- Running docker_build_clerk-frontend( "

cd ${GITHUB_DIR}/clerk-frontend
docker build -t ${DOCKER_USER}/clerk-frontend .

}


##################################################################
# Purpose: Procedure to tag docker images (Version)
# Arguments: 
# Return: 
##################################################################
docker_tag() {
clear  
#docker images
#enter_cont

create_logfile_header
echo "- Running ... docker_tag :latest  ${DOCKER_VERSION_TAG}"
echo "- Running ... docker_tag"                                                >> $LOG_FILE
docker tag waardepapieren_clerk-frontend:latest ${DOCKER_USER}/waardepapieren-clerk-frontend:${DOCKER_VERSION_TAG}  
docker tag waardepapieren_waardepapieren-service:latest  ${DOCKER_USER}/waardepapieren-service:${DOCKER_VERSION_TAG} 
docker tag waardepapieren_mock-nlx:latest ${DOCKER_USER}/waardepapieren-mock-nlx:${DOCKER_VERSION_TAG}          

docker images | grep  ${DOCKER_VERSION_TAG}                                      >> $LOG_FILE

create_logfile_footer
docker images | grep  ${DOCKER_VERSION_TAG}   
enter_cont

}

#
##################################################################
# Purpose: Ship to docker registry docker.hub.com
##################################################################
#

##################################################################
# Purpose: Procedure to tag docker images (Version)
# Arguments: 
# Return: 
##################################################################
docker_commit_pending() {
clear  
#docker images
#enter_cont

create_logfile_header
echo "- Running ... docker_commit"
echo "- Running ... docker_commit"                                    >> $LOG_FILE
docker commit waardepapieren_clerk-frontend ${DOCKER_USER}/waardepapieren-clerk-frontend:${DOCKER_VERSION_TAG}  
docker commit  waardepapieren_waardepapieren-service ${DOCKER_USER}/waardepapieren-service:${DOCKER_VERSION_TAG} 
docker commit  waardepapieren_mock-nlx ${DOCKER_USER}/waardepapieren-mock-nlx:${DOCKER_VERSION_TAG}          

docker images | grep  ${DOCKER_VERSION_TAG}   >> $LOG_FILE

create_logfile_footer
docker images | grep  ${DOCKER_VERSION_TAG}   
enter_cont

}

#
##################################################################
# Purpose: DEPLOY-FUNCTIONS 2AZURE FROM DOCKER-HUB   
##################################################################
#

##################################################################
# Purpose: Procedure to create azure resource group aka costcenter/root
# Arguments: 
# Return: 
##################################################################
create_azure_resource_group() {
echo "- Running ... create_azure_resource_group" 
 # $AZ_RESOURCE_GROUP="Discipl_Wigo4it_DockerGroup4"
#echo sure ? createw $AZ_RESOURCE_GROUP
#enter_cont
az group create --name ${AZ_RESOURCE_GROUP} --location westeurope
enter_cont
}

##################################################################
# Purpose: Procedure to delete azure resource group (a.k.a costcentre )
# Arguments: 
# Return: 
##################################################################
delete_azure_resource_group() {
 echo "- Running ... delete_azure_resource_group"
 echo "***  You are about to delete resource group ${AZ_RESOURCE_GROUP}"
  echo "***" 
  echo "az login succeeded ?" 
  enter_cont
az group delete --name ${AZ_RESOURCE_GROUP}
enter_cont
}

##################################################################
# Purpose: Procedure to create the azure containergroup
# Arguments: 
# Return: 
##################################################################
create_azure_container_group() {
echo "- Running ... create_azure_container_group" 
  #az login
  echo "***"   
  echo "***  Welcome to  create_azure_resource_group"
  echo "***"   
  echo "***" 
  echo "***  You are about to create resource group $AZ_RESOURCE_GROUP"
  echo "***" 
  echo "az login succeeded ?"
cd ${GITHUB_DIR}
az container create --resource-group ${AZ_RESOURCE_GROUP} --file deploy-aci.yaml

enter_cont
# https://docs.microsoft.com/en-us/azure/container-instances/container-instances-multi-container-yaml
# View deployment state
# az container show --resource-group ${AZ_RESOURCE_GROUP} --name myContainerGroup --output table
}

##################################################################
# Purpose: Procedure to create the azure containergroup
# Arguments: 
# Return: CI CD 
##################################################################
restart_azure_container_group() {
echo "- Running ... create_azure_container_group" 
cd ${PROJECT_DIR}
az container restart --resource-group ${AZ_RESOURCE_GROUP} 

}

##################################################################
# Purpose: Procedure to save the program to the LOG_FILE
# Arguments: 
# Return: dokuwiki 
##################################################################
write_az_clone_build_ship_deploy_bash() {

echo "====== az_clone_build_ship_deploy.bash ======"                         >> $LOG_FILE
echo "| ${LOG_START_DATE_TIME} | ${GITHUB_DIR}|"                             >> $LOG_FILE
echo "| ${LOG_START_DATE_TIME} | az_clone_build_ship_deploy.bash |"          >> $LOG_FILE
echo  "<code>"                                                               >> $LOG_FILE 
cat  ${GITHUB_DIR}/az_aci_clone_build_ship_deploy.bash                       >> $LOG_FILE
echo "</code>"                                                               >> $LOG_FILE
echo "====== menu.bash  ======"                                              >> $LOG_FILE
echo "| ${LOG_START_DATE_TIME} | ${GITHUB_DIR}|"                             >> $LOG_FILE
echo "| ${LOG_START_DATE_TIME} | menu.bash |"                                >> $LOG_FILE
echo  "<code>"                                                               >> $LOG_FILE 
cat  ${GITHUB_DIR}/menu.bash                                                 >> $LOG_FILE
echo "</code>"                                                               >> $LOG_FILE


}




























