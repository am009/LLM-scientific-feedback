#!/bin/bash

sed -i "1ilocalnet `nslookup sciencebeam-parser | awk '/^Address: / { print $2 }'`/255.255.255.0" /etc/proxychains4.conf
proxychains4 python3 main.py
