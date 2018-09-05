#!/bin/bash

logger -t DuckDNS "Updating Namecheap DDNS entries"
EXITCODE=0
for file in /etc/ncddns.d/*.cfg
do
	source "${file}"
	logger -t ncDDNS "Executing config file '${file}'"
	OUTPUT=$(curl -k -s "https://dynamicdns.park-your-domain.com/update?host=${host}&domain=${domain}&password=${password}&ip=")
	logger -t ncDDNS ${OUTPUT}
	# TODO: add namecheap-specific error handling
done

exit $EXITCODE
