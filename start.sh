#!/bin/bash

# Start script for Squad Dedicated Server Docker Image

if [ ${BRANCH} == "public" ]
then
	#GA
	/steamcmd/steamcmd.sh +login anonymous +force_install_dir /app +app_update 403240 +quit
else
	#BETA
	/steamcmd/steamcmd.sh +login anonymous +force_install_dir /app +app_update 403240 -beta ${BETA_NAME} -betapassword ${BETA_PASSWORD} +quit
fi

#launch application
/app/SquadGameServer.sh Port=${GAME_PORT_1} QueryPort=${QUERY_PORT_1} FIXEDMAXPLAYERS=${MAX_PLAYERS} RANDOM=${RANDOM} -log
