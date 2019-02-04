#!/usr/bin/env bash
# You have to set env. Env can be set from Kubernetes Pod boot script.
#   REKCURD_SERVICE_GIT_URL="https://github.com/yourproject/yourgit.git"
#   REKCURD_SERVICE_GIT_BRANCH="master"
#   REKCURD_SERVICE_BOOT_SHELL="start.sh"


ECHO_PREFIX="[rekcurd-settings]: "
echo "$ECHO_PREFIX Start.."


set -e
set -u

# git clone your-rekcurd.
git clone --depth 1 --recursive -b ${REKCURD_SERVICE_GIT_BRANCH} ${REKCURD_SERVICE_GIT_URL} /usr/local/src/rekcurd
cd /usr/local/src/rekcurd
sh ${REKCURD_SERVICE_BOOT_SHELL}
