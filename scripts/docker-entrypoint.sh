#!/bin/bash
#
# cvdupdate & cron entrypoint
#

set -e

if [ $# -eq 0  ]; then
    echo "ClamAV Private Database Mirror Updater Cron ${SCRIPT_PATH}"

    sudo cron -f
else
    echo "ClamAV Private Database Mirror Updater Serve ${SCRIPT_PATH}"

    cvdupdate "$@"
fi
