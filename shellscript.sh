#!/bin/bash

SCRIPT_NAME=$1
SCRIPT_FOLDER=${PWD}/scripts

touch "${PWD}"/scripts/"${SCRIPT_NAME}"
echo "#!/bin/bash" > "${PWD}"/scripts/"${SCRIPT_NAME}"
chmod 755 "${SCRIPT_FOLDER}"/*
