#!/bin/bash

openssl req -config intermediate/openssl_intermediate.cnf -new -newkey ec:<(openssl ecparam -name secp384r1) -keyout intermediate/private/int.cisco.key.pem -out intermediate/csr/int.cisco.csr
