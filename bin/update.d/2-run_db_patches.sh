#! /bin/bash

#
# RUN DATABASE PATCHES
# This script will run the database patches for each web instance
# by calling the patch util script
#

BB_HOME="$1"
SERVICE="$2"
BREEDBASE="$BB_HOME/bin/breedbase"
DOCKER_COMPOSE_FILE="$BB_HOME/docker-compose.yml"
BB_PATCH="$BB_HOME/bin/utils.d/patch.sh"

# Docker compose location
DOCKER_COMPOSE=$(which docker-compose)
DOCKER_DB_SERVICE="breedbase_db"

# Get the defined web services
if [ -z "$SERVICE" ]; then
    services=$("$DOCKER_COMPOSE" -f "$DOCKER_COMPOSE_FILE" config --services)
    IFS=$'\n' read -d '' -r -a services <<< "$services"
else
    services="$SERVICE"
fi


echo "==> Running Database Patches..."

# Process each web instance
for service in "${services[@]}"; do
   if [[ "$service" != "$DOCKER_DB_SERVICE" ]]; then
        echo "... patching $service instance"

        # Run Patch Script
        $(which bash) "$BB_PATCH" "$BB_HOME" "$service"
    fi
done
