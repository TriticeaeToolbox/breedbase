#! /bin/bash

#
# CREATE DATABASES
# This script will create a database for each web service
# The database name will be pulled from the service config file
#

BREEDBASE="$BB_HOME/bin/breedbase"
DOCKER_COMPOSE_FILE="$BB_HOME/docker-compose.yml"
BB_CONFIG_DIR="$BB_HOME/config/"


# Docker compose location
DOCKER=$(which docker)
DOCKER_COMPOSE="$DOCKER compose"
DOCKER_DB_SERVICE="breedbase_db"


# Get the defined web services
services=$($DOCKER_COMPOSE -f "$DOCKER_COMPOSE_FILE" config --services)
IFS=$'\n' read -d '' -r -a services <<< "$services"


echo "==> Creating Initial Databases..."


# Process each web instance
for service in "${services[@]}"; do
    if [[ "$service" != "$DOCKER_DB_SERVICE" ]]; then
        echo "... creating $service database"

        # Create the Database
        db=$(cat "$BB_CONFIG_DIR/$service.conf" | grep ^dbname | tr -s ' ' | cut -d ' ' -f 2)
        sql="SELECT 'CREATE DATABASE $db WITH TEMPLATE breedbase' WHERE NOT EXISTS (SELECT FROM pg_database WHERE datname = '$db')\gexec"
        cmd="echo \"$sql\" | psql -h localhost -U postgres"
        $DOCKER_COMPOSE -f "$DOCKER_COMPOSE_FILE" exec "$DOCKER_DB_SERVICE" bash -c "$cmd"
    fi
done
