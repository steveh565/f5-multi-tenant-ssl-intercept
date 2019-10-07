#!/usr/bin/python

import urllib
import os
import sys
import filecmp
import shutil
import datetime

downloaded_list = '/var/tmp/category_update/downloaded_list.tmp'
current_list = '/var/tmp/category_update/current_list.txt'
list_uri = 'http://10.1.1.7/blacklist.txt'

if sys.argv[1] == 'download':
    testfile = urllib.URLopener()

    try:
        testfile.retrieve(list_uri, downloaded_list)
    except BaseException as e:
        print 'DLERROR'
        sys.exit()

    if os.path.isfile(current_list) and os.access(current_list, os.R_OK):
        if filecmp.cmp(downloaded_list, current_list) is True:
            print 'NOUPDATE'
elif sys.argv[1] == 'update':
    today = datetime.date.today()
    with open(downloaded_list, 'r') as f:
        for line in f:
            try:
                rdate = datetime.datetime.strptime(line.split(',')[0], '%Y-%m-%d').date()
            except:
                rdate = None

            if rdate:
                if line.split(',')[2] is not 'N':
                    if (today - maxage) <= rdate or line.split(',')[2] is 'P':
                        print line.split(',')[3].replace('\"','').rstrip() + ',' + line.split(',')[1]
            else:
                if line.startswith('max-age'):
                    maxage = datetime.timedelta(days = int(line.strip().split('=')[1]))