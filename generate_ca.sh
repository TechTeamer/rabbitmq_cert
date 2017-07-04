#!/usr/bin/env bash

cd ca

echo "01" > serial
touch index.txt

openssl req -x509 -config openssl.cnf -newkey rsa:2048 -days 3650 \
    -out cacert.pem -outform PEM -subj /CN=MyTestCA/ -nodes
openssl x509 -in cacert.pem -out cacert.cer -outform DER