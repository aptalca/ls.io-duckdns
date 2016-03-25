#!/bin/bash

rm -f /defaults/duck.conf
  #Check to make sure the subdomain and token are set
if [ -z "$SUBDOMAINS" ] || [ -z "$TOKEN" ]; then
  echo "Please pass both your subdomain(s) and token as environment variables in your docker run command. See docker info for more details."
  exit 1
else
  echo "Retrieving subdomain and token from the environment variables"
  echo -e "SUBDOMAINS=$SUBDOMAINS TOKEN=$TOKEN" > /defaults/duck.conf
fi

/sbin/setuser abc /defaults/duck.sh
