#!/bin/bash

openssl req -config openssl_labCA.cnf -new -x509 -sha384 -extensions v3_ca -key private/ca.lab.key.pem -out certs/ca.lab.crt.pem
