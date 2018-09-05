# ncDDNS 
Fork of [Tom Stroobants's DuckDNS repo](https://github.com/T00mm/duckdns) edited for use with Namecheap's DDNS service. Uses a systemd timer with a 5 minute interval.

## Installation

Execute these comments

Clone/download this repo on your computer

	mv ncddns.sh /usr/bin/ncddns
	chmod +x /usr/bin/ncddns
	mv ncddns.service /usr/lib/systemd/system/
	mv ncddns.timer /usr/lib/systemd/system/
	
	mkdir -p /etc/ncddns.d
	mv default.cfg /etc/ncddns.d/
	
	systemctl enable ncddns.timer
	systemctl start ncddns.timer


## Configuration

Enter the necessary information in the **default.cfg** file. You can create new files if you have multiple domains with the same setup.

	host=
	domain=
	password=

* host: the host to update (ex www)
* domain: the domain to update (ex namecheap.com)
* password: the DDNS password to use (NOT your Namecheap account password)

Config files must be placed inside the `/etc/ncddns.d`  folder

