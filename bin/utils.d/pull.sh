#! /usr/bin/env bash

#
# PULL SGN AND MASON REPOS
# This script will pull the latest code into the sgn and mason repos.
# If a service name is specified, just update that service, otherwise 
# update all of the services defined in the docker-compose file.
#   Arg 1: (optional) docker-compose service name
#

# Parse Arguments
SERVICE="$1"

# Set Breedbase Paths
DOCKER_COMPOSE_FILE="$BB_HOME/docker-compose.yml"
BB_CONFIG_DIR="$BB_HOME/config/"
BREEDBASE="$BB_HOME/bin/breedbase"

# Path to Docker binaries
DOCKER_COMPOSE=$(which docker-compose)
DOCKER_DB_SERVICE="breedbase_db"

# Get list of web services
if [ -z "$SERVICE" ]; then
    services=$("$DOCKER_COMPOSE" -f "$DOCKER_COMPOSE_FILE" config --services)
    IFS=$'\n' read -d '' -r -a services <<< "$services"
else
    services="$SERVICE"
fi

# Update each service
echo "==> Pulling Code Updates..."
for service in "${services[@]}"; do
    if [[ "$service" != "$DOCKER_DB_SERVICE" ]]; then
        config="$BB_CONFIG_DIR/$service.conf"
        mason_dir=$(cat "$BB_CONFIG_DIR/$service.conf" | grep "^ *add_comp_root" | awk '{$1=$1;print}' | cut -d ' ' -f 2)

        echo "... pulling updates into $service sgn repo"
        cmd_sgn='git -C /home/production/cxgn/sgn pull origin t3/master'
        "$DOCKER_COMPOSE" -f "$DOCKER_COMPOSE_FILE" exec "$service" bash -c "$cmd_sgn"

        echo "... setting git version info in $service sgn repo"
        cmd_git='/usr/local/bin/set_git_version_info'
        "$DOCKER_COMPOSE" -f "$DOCKER_COMPOSE_FILE" exec "$service" bash -c "$cmd_git"

        echo "... pulling updates into $service mason repo"
        branch=$(echo "$service" | perl -pe 's/_?dev_?//g' | perl -pe 's/_/-/g' | perl -pe 's/sugarkelp/master/g')
        cmd_mason='git -C '"$mason_dir"' pull origin '$branch''
        "$DOCKER_COMPOSE" -f "$DOCKER_COMPOSE_FILE" exec "$service" bash -c "$cmd_mason"

        echo "... reloading $service"
        "$BREEDBASE" reload "$service"
    fi
done
