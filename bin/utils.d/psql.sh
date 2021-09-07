#! /usr/bin/env bash

#
# PSQL TERMINAL
# This script will start the psql interactive terminal.  If the name 
# of a web service is provided, it will connect to the database for 
# the web service that is defined in its sgn.conf file.
#   Arg 1: (optional) docker-compose service name
#

# Parse Arguments
SERVICE="$1"

# Set Breedbase Paths
DOCKER_COMPOSE_FILE="$BB_HOME/docker-compose.yml"
BB_CONFIG_DIR="$BB_HOME/config/"
BB_CONFIG="$BB_CONFIG_DIR/$SERVICE.conf"

# Path to Docker binaries
DOCKER=$(which docker)
DOCKER_DB_SERVICE="breedbase_db"

# Get database name from config file
if [[ ! -z "$SERVICE" ]]; then
    db=$(cat "$BB_CONFIG" | grep ^dbname | tr -s ' ' | cut -d ' ' -f 2)
fi

# Connect to the database
echo "Connecting to database..."
cmd="psql -h localhost -U postgres"
if [[ ! -z "$db" ]]; then
    cmd="$cmd -d $db"
fi
"$DOCKER" exec -it "$DOCKER_DB_SERVICE" bash -c "$cmd"
