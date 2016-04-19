---
layout: post
published: true
title: "UNetLab 1.0.0-8 Released"
excerpt:
  "What's new on UNetLab 1.0.0-8"
section: "Release"
authors:
- UNL Team
tags:
- UNetLab
- Release
---

## IMPORTANT NOTE1:

~~~
 VSRX image changed from hda to virtioa, export config or same somewhere and wipe image before starting lab!!!!!!!
~~~

## IMPORTANT NOTE2:

~~~
 UPGRADE you vmware-tools when downloading v0.9.0-54 , without it you can get error 20003!!!!!!!
~~~

## To Upgrade:

~~~
apt-get update
apt-get install unetlab

MANDATORY AFTER Upgrade!!!!
REFRESH your browsers:
on Crome shift +F5
on fireFox ctrl +F5
~~~

## Features and Fixed on this release:

~~~
VPCS added
Docker reworked (how to will follow)
Export all reworked
Start all reworked
Freeselect start/delete reworked 
Script timeout in lab introduced
Now LAB can be edited from the main screen
Notifications reworked
VPCS/docker added to the status with running nodes count 
Lab/Folder delete confirmation
Customer MAC option for F5 nodes (for those using license)
Nodes Import config reworked 
GUI rework (check yourself)
Delete nodes config added to free select
CLI access to ASAv (guide on site)
CLI access to F5 (guide on site)
CLI access to VSRX 15 (guide will be added to site someday) - VSRX 15 works only on CPU that supports AES
"no shut" on export for iol / xrv /vios interfaces
~~~


## Known Issues:

~~~
* When upgrading from v96 to v1.0.0-X nodes in main screen will be closer then in previous view, manual re-ordering needed
* When importing iou-web labs, main lab topology will be messed, manual re-ordering needed
* When importing iou-web labs, Image MAP in the attached pictures messed, manual re-ordering needed
~~~
