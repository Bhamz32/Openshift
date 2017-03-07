#!/bin/bash

set -e

# Add kibana as command if needed
if [[ "$1" == -* ]]; then
	set -- kibana "$@"
fi

sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 '${ELASTICSEARCH_SERVICE_HOST}'!" /etc/kibana/kibana.yml

exec "$@"