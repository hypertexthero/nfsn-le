# Let's Encrypt for NearlyFreeSpeech.NET

This is a set of scripts to help with the use of Let's Encrypt on NearlyFreeSpeech.net web hosting.

## Prerequisites

Both should already be installed on your NearlyFreeSpeech.NET server.

* openssl
* python

## Instructions

1. ssh into your account
2. `cd /home/private/`
3. `git clone https://github.com/hypertexthero/nfsn-le.git`
4. `cd nfsn-le/`
5. `. setup.sh www.yourdomain.tld`

## Todo

Add to cron so the certificate is renewed every 3 months. 
