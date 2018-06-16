#!/usr/bin/perl
#Copyright (C) 2018 James Anderson. All rights reserved.
#Licensed under MIT License, see LICENSE file

$usboutput=`lsusb | grep WLAN`;
@matches= $usboutput =~/^Bus\s([0-9]{3,3})\sDevice\s([0-9]{3,3}).+WLAN.+$/;
print "Resetting Wifi\r\n";
print $usboutput;
print "$matches[0]\r\n";
print "$matches[1]\r\n";
print `./usbreset /dev/bus/usb/$matches[0]/$matches[1]`;


