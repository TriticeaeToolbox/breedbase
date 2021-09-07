#! /bin/bash

#
# CLEAN
# This will remove any existing T3/Breedbase Docker containers
#

BREEDBASE="$BB_HOME/bin/breedbase"

echo "==> Removing existing T3/Breedbase containers..."
"$BREEDBASE" clean
