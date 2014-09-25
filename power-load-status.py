#!/usr/bin/python
# -*- coding: utf-8 -*-
#@author Mosab Ahmad <mosab.ahmad@gmail.com>

import requests
import json

status = json.loads(requests.get('http://gridstatusnow.com/status').text)

print 'Power grid is now in the {} Zone!'.format(status['status'])
