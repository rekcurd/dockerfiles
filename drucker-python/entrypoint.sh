#!/usr/bin/env bash
# You have to set env. Env can be set from Kubernetes Pod boot script.
#   DRUCKER_SERVICE_GIT_URL="https://github.com/yourproject/yourgit.git"
#   DRUCKER_SERVICE_GIT_BRANCH="master"
#   DRUCKER_SERVICE_BOOT_SHELL="start.sh"


ECHO_PREFIX="[drucker-settings]: "
echo "$ECHO_PREFIX Start.."


set -e
set -u

# git clone your-drucker.
git clone --depth 1 --recursive -b ${DRUCKER_SERVICE_GIT_BRANCH} ${DRUCKER_SERVICE_GIT_URL} /usr/local/src/drucker
cd /usr/local/src/drucker
sh ${DRUCKER_SERVICE_BOOT_SHELL}
