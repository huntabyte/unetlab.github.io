---
layout: post
published: true
title: "Which UNetLab version is running?"
abstract: ! "HowTo check which UNetLab version is running."
categories:
- FAQ
authors:
- andrea
tags:
- UNetLab
- FAQ
---
UNetLab software is distributed as a DEB file. Use DPKG to check the installed version:

~~~
dpkg -l unetlab
Desired=Unknown/Install/Remove/Purge/Hold
| Status=Not/Inst/Conf-files/Unpacked/halF-conf/Half-inst/trig-aWait/Trig-pend
|/ Err?=(none)/Reinst-required (Status,Err: uppercase=bad)
||/ Name                                  Version                 Architecture            Description
+++-=====================================-=======================-=======================-===============================================================================
ii  unetlab                               0.8.5-36                amd64                   A new generation software for networking labs.
~~~
