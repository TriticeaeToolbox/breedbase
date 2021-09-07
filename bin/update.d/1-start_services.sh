#! /bin/bash

#
# START SERVICES
# This script will start the databsae and each of the web instances
#

BREEDBASE="$BB_HOME/bin/breedbase"

echo "==> Starting the T3/Breedbase Database and Websites..."
"$BREEDBASE" start "$BB_SERVICE"

echo "... waiting for services to start ..."
sleep 30
