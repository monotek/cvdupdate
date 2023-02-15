#!/bin/bash
#
# cvdupdate & cron entrypoint
#

set -e

echo "ClamAV Private Database Mirror Updater Cron ${SCRIPT_PATH}"

if [ $# -eq 0  ]; then
    sudo cron -f
else
    cvdupdate "$@"
fi
