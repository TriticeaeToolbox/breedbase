#! /bin/bash

#
# CLEAN
# This will stop and remove any existing T3/Breedbase Docker containers
#

BREEDBASE="$BB_HOME/bin/breedbase"

if [ -z "$BB_SERVICE" ]; then
    echo "==> Removing existing T3/Breedbase containers..."
    "$BREEDBASE" clean
fi