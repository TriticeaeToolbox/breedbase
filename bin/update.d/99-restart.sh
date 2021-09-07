#! /bin/bash

#
# RESTART
# Stop and remove any existing containers
# Start all specified services
#

BREEDBASE="$BB_HOME/bin/breedbase"

echo "==> Restarting the T3/Breedbase Docker Containers..."
"$BREEDBASE" stop "$BB_SERVICE"
"$BREEDBASE" start "$BB_SERVICE"