#!/usr/bin/python
# -*- coding: utf-8 -*-
import os,sys
# add .../Sources to the PYTHONPATH
sys.path.append(os.path.join(os.path.dirname(os.path.realpath(__file__)),"Sources"))
from yocto_api import *
from yocto_temperature import *


def die(msg):
    sys.exit(msg+' (check USB cable)')

errmsg=YRefParam()

target='any'

# Setup the API to use local USB devices
if YAPI.RegisterHub("usb", errmsg)!= YAPI.SUCCESS:
    sys.exit("init error"+errmsg.value)

# retreive any temperature sensor
sensor = YTemperature.FirstTemperature()
if sensor is None :
    die('No module connected')


if not(sensor.isOnline()):die('device not connected')
print(str(sensor.get_currentValue()))
