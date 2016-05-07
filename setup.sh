#!/usr/bin/env bash

set -e

# Usage:
#
# ./setup.sh example.com me@example.com
# email address is optional, not required for anonymous registrations

cd /home/private/nfsn-le

# Check for existing LE keys.
if [ ! -f "user.key"] && [ ! -f "user.pub" ]
then
	# Generate new LE keys.
	openssl genrsa 4096 > user.key
	openssl rsa -in user.key -pubout > user.pub
fi

# Generate new cert.
./new_cert.sh $1 $2

# Output renewal task.
echo <<EOM
Add this as a scheduled task:

tag: tls$1
shell command: /home/private/nfsn-le/renew.sh "$1" "$2"
user: 'me'
day: friday
hour: 0
date: *
EOM