#! /usr/bin/env bash

#
# RUN DATABASE PATCH
# This script will run a specific set of database patches for 
# the database of the specified web service
#   Arg 1: docker web service name
#   Arg 2: (optional) database patch number
#


# Parse Arguments
BB_SERVICE="$1"
PATCH="$2"
if [ -z "$BB_SERVICE" ]; then
    echo "ERROR: The service name must be provided!"
    exit 1
fi

# Set Breedbase Paths
BB_CONFIG_DIR="$BB_HOME/config"
DOCKER_COMPOSE_FILE="$BB_HOME/docker-compose.yml"
BB_CONFIG="$BB_CONFIG_DIR/$BB_SERVICE.conf"

# Path to Docker binaries
DOCKER_COMPOSE="$(which docker-compose)"
DOCKER="$(which docker)"


# Get database name from config file
db_host=$(cat "$BB_CONFIG" | grep ^dbhost | tr -s ' ' | cut -d ' ' -f 2)
db=$(cat "$BB_CONFIG" | grep ^dbname | tr -s ' ' | cut -d ' ' -f 2)

# Get container name of service
container=breedbase_"$BB_SERVICE"
container_hash=$("$DOCKER" ps -q -f name="$container")
if [ ! -z $container_hash ]; then
    CONTAINER="$container"
else
    CONTAINER=$("$DOCKER" inspect -f '{{.Name}}' $("$DOCKER_COMPOSE" ps -q "$BB_SERVICE") | cut -c2-)
fi


# Get postgres password from user
if [ -z $BB_POSTGRES_PASS ]; then
    read -sp "Postgres password: " BB_POSTGRES_PASS
    echo ""
fi


# RUN A SPECIFIC SET OF PATCHES
if [[ ! -z $PATCH ]]; then

    # Find matching database patches
    echo "Looking up DB Patch $PATCH [$BB_SERVICE]..."
    cmd="find /home/production/cxgn/sgn/db -maxdepth 1 -regex '.*\/0*$PATCH$' -exec echo {} \;"
    patch_dir=$("$DOCKER" exec "$CONTAINER" bash -c "$cmd" | tr -d '\r')
    if [ -z $patch_dir ]; then
        echo "ERROR: Could not find matching DB Patch [$PATCH]"
        exit 1
    fi

    # Find patch files
    echo "Finding patch files [$patch_dir]..."
    cmd="find \"$patch_dir\" -maxdepth 1 -regex '.*\/.*\.pm$' -exec echo {} \;"
    patches=$("$DOCKER" exec "$CONTAINER" bash -c "$cmd" | tr -d '\r')
    if [ -z "$patches" ]; then
        echo "ERROR: No patch files found [$patch_dir]"
        exit 1
    fi

    # Run the patch files
    echo "Running patches [$db]..."
    while IFS= read -r patch; do
        name=$(basename "$patch" .pm)
        echo "...running $name patch"
        cmd="cd \"$patch_dir\"; echo -ne \"postgres\n$BB_POSTGRES_PASS\" | mx-run $name -F -H \"$db_host\" -D \"$db\" -u admin"
        "$DOCKER" exec -t "$CONTAINER" bash -c "$cmd"
    done <<< "$patches"


# RUN ALL PATCHES
else

    # Run the run_all_patches.pl script
    echo "Running all patches [$BB_SERVICE]..."
    cmd="cd /home/production/cxgn/sgn/db; perl ./run_all_patches.pl -u postgres -p \"$BB_POSTGRES_PASS\" -h \"$db_host\" -d \"$db\" -e admin"
    "$DOCKER" exec -t -e PGPASSWORD="$BB_POSTGRES_PASS" "$CONTAINER" bash -c "$cmd"

fi
