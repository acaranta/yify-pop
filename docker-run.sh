#!/bin/bash

set -m 
CONFIG_FILE="config/development.js"

if [ -n "${WEBPORT}" ]; then
	/usr/bin/perl -p -i -e "s/port: 4000/port: ${WEBPORT}/g" ${CONFIG_FILE}
fi

if [ -n "${STREAMPORT}" ]; then
	/usr/bin/perl -p -i -e "s/streamport: 8889/streamport: ${STREAMPORT}/g" ${CONFIG_FILE}
fi

geddy
