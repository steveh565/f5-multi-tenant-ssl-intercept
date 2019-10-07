#!/bin/bash

openssl ecparam -genkey -name secp384r1 | openssl ec -aes256 -out private/ca.lab.key.pem
