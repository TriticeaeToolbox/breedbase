#! /usr/bin/env bash

#
# ACCESS LOGS
# This script will tail the nginx access logs
# for the specified instance
#

# Parse Arguments
SERVICE="$1"
if [ -z "$SERVICE" ]; then
    echo "ERROR: The service name must be provided!"
    exit 1
fi

# Set Breedbase Paths
BB_CONFIG_DIR="$BB_HOME/config"
DOCKER_COMPOSE_FILE="$BB_HOME/docker-compose.yml"

# Path to Docker binaries
DOCKER=$(which docker)
DOCKER_COMPOSE="$DOCKER compose"

# Tail the access log
$DOCKER_COMPOSE -f "$DOCKER_COMPOSE_FILE" exec "$SERVICE" bash -c "tail -f /var/log/nginx/access.log"
