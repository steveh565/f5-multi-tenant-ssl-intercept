#!/bin/bash

tr -dc A-Za-z0-9 </dev/urandom | head -c 1024 > 1KB.txt
tr -dc A-Za-z0-9 </dev/urandom | head -c 2048 > 2KB.txt
tr -dc A-Za-z0-9 </dev/urandom | head -c 5120 > 5KB.txt
tr -dc A-Za-z0-9 </dev/urandom | head -c 10240 > 10KB.txt
tr -dc A-Za-z0-9 </dev/urandom | head -c 20480 > 20KB.txt
tr -dc A-Za-z0-9 </dev/urandom | head -c 40960 > 40KB.txt
tr -dc A-Za-z0-9 </dev/urandom | head -c 81920 > 80KB.txt
tr -dc A-Za-z0-9 </dev/urandom | head -c 163940 > 160KB.txt
tr -dc A-Za-z0-9 </dev/urandom | head -c 327680 > 320KB.txt
tr -dc A-Za-z0-9 </dev/urandom | head -c 655340 > 640KB.txt
tr -dc A-Za-z0-9 </dev/urandom | head -c 1024000 > 1024KB.txt
