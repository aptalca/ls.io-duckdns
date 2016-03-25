#!/bin/bash

if [ -z "$SUBDOMAINS" ] || [ -z "$TOKEN" ]; then
    echo "Please pass both your subdomain(s) and token as environment variables in your docker run command. See docker info for more details."
else
  RESPONSE=`curl -s "https://www.duckdns.org/update?domains=$SUBDOMAINS&token=$TOKEN&ip="`
  if [ "$RESPONSE" = "OK" ]; then
  echo "Your IP was updated at "$(date)
  else
  echo "Something went wrong, please check your settings  "$(date)
  fi
fi
