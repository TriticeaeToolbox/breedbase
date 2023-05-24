#! /bin/bash

#
# RUN DATABASE PATCHES
# This script will run the database patches for each web instance
# by calling the patch util script
#

BREEDBASE="$BB_HOME/bin/breedbase"
DOCKER_COMPOSE_FILE="$BB_HOME/docker-compose.yml"
BB_PATCH="$BB_HOME/bin/utils.d/patch.sh"

# Docker compose location
DOCKER=$(which docker)
DOCKER_COMPOSE="$DOCKER compose"
DOCKER_DB_SERVICE="breedbase_db"

# Get the defined web services
if [ -z "$BB_SERVICE" ]; then
    services=$($DOCKER_COMPOSE -f "$DOCKER_COMPOSE_FILE" config --services)
    IFS=$'\n' read -d '' -r -a services <<< "$services"
else
    services="$BB_SERVICE"
fi


echo "==> Running Database Patches..."
echo "PASS: $BB_POSTGRES_PASS"

# Process each web instance
for service in "${services[@]}"; do
   if [[ "$service" != "$DOCKER_DB_SERVICE" ]]; then
        echo "... patching $service instance"

        # Run Patch Script
        BB_HOME="$BB_HOME" BB_POSTGRES_PASS="$BB_POSTGRES_PASS" $(which bash) "$BB_PATCH" "$service"
    fi
done
