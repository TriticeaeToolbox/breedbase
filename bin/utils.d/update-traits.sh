#! /usr/bin/env bash

#
# UPDATE TRAITS
# This script will manually update the trait ontology with the specified file(s)
#   Arg 2: path to obo file
#   Arg 3: optional path to trait props file
#

# Parse Arguments
SERVICE="$1"
OBO_FILE="$2"
PROPS_FILE="$3"

# Check arguments
if [ -z "$SERVICE" ]; then
    echo "ERROR: The service name must be provided!"
    exit 1
fi
if [ -z "$OBO_FILE" ]; then
    echo "ERROR: The path to the obo file must be provided!"
    exit 1
fi
if [ ! -f "$OBO_FILE" ]; then
    echo "ERROR: THe obo file does not exist!"
    exit 1
fi

# Set Breedbase Paths
BB_CONFIG_DIR="$BB_HOME/config"
DOCKER_COMPOSE_FILE="$BB_HOME/docker-compose.yml"
BB_CONFIG="$BB_CONFIG_DIR/$SERVICE.conf"

# Path to Docker binaries
DOCKER=$(which docker)
DOCKER_COMPOSE="$DOCKER compose"

# Get postgres password from user
if [ -z $BB_POSTGRES_PASS ]; then
    read -sp "Postgres password: " BB_POSTGRES_PASS
    echo ""
fi


# Get database name from config file
db=$(cat "$BB_CONFIG" | grep ^dbname | tr -s ' ' | cut -d ' ' -f 2)

# Get properties from obo file
obo_s=$(cat "$OBO_FILE" | grep ^ontology: | tr -s ' ' | cut -d ' ' -f 2)
obo_n=$(cat "$OBO_FILE" | grep ^default-namespace: | tr -s ' ' | cut -d ' ' -f 2)


# Load the ontology
echo "==> Updating the Trait Ontology..."

CONTAINER_OBO_FILE="/.trait-ontology-file.obo"
$DOCKER_COMPOSE -f "$DOCKER_COMPOSE_FILE" cp "$OBO_FILE" $SERVICE:"$CONTAINER_OBO_FILE"

cmd="cd  /home/production/cxgn/chado_tools/chado/bin;
perl ./gmod_load_cvterms.pl -H breedbase_db -D $db -d Pg -r postgres -p \"$BB_POSTGRES_PASS\" -s $obo_s -n $obo_n -uv \"$CONTAINER_OBO_FILE\";
perl ./gmod_make_cvtermpath.pl -H breedbase_db -D $db -d Pg -u postgres -p \"$BB_POSTGRES_PASS\" -c $obo_n -v;"
$DOCKER_COMPOSE -f "$DOCKER_COMPOSE_FILE" exec "$SERVICE" bash -c "$cmd"
$DOCKER_COMPOSE -f "$DOCKER_COMPOSE_FILE" exec "$SERVICE" bash -c "rm \"$CONTAINER_OBO_FILE\""


# Load the trait props
if [ ! -z "$PROPS_FILE" ] && [ -f "$PROPS_FILE" ]; then
    echo "==> Updating Trait Props..."
    CONTAINER_PROPS_FILE="/.trait-props-file.xlsx"
    $DOCKER_COMPOSE -f "$DOCKER_COMPOSE_FILE" cp "$PROPS_FILE" $SERVICE:"$CONTAINER_PROPS_FILE"

    cmd="cd /home/production/cxgn/sgn/bin;
perl ./load_trait_props.pl -H breedbase_db -D $db -o $obo_s -I \"$CONTAINER_PROPS_FILE\" -w"
    $DOCKER_COMPOSE -f "$DOCKER_COMPOSE_FILE" exec "$SERVICE" bash -c "$cmd"
    $DOCKER_COMPOSE -f "$DOCKER_COMPOSE_FILE" exec "$SERVICE" bash -c "rm \"$CONTAINER_PROPS_FILE\""
fi


