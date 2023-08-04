#!/usr/bin/env bash

set -e

filename="$1"

if [ -z "$1" ]; then
    echo "Filename is required as the 1st arg"
    exit 1
fi

>&2 echo "Setting filename to $filename"

curl --location 'https://test-api.onlinephotosubmission.com/bulk-action' \
--header 'X-Auth-Token: auth-toke-goes-here' \
--form "csv=@\"$filename\""