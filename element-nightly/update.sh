#!/usr/bin/env bash

DATE=`date -u --date="yesterday" "+%Y%m%d"`'01'

echo -n $DATE > ./element-nightly/date

printf "%s" "$(nix-prefetch-url https://packages.element.io/debian/pool/main/e/element-nightly/element-nightly_$(cat ./element-nightly/date)_amd64.deb)" > ./element-nightly/sha256
