#!/bin/bash

openssl ca -config openssl_labCA.cnf -extensions v3_intermediate_ca -days 3600 -md sha384 -in intermediate/csr/int.cisco.csr -out intermediate/certs/int.cisco.crt.pem
