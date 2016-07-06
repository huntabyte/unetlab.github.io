---
layout: post
published: true
title: "UNetLab 1.0.0-10 Released"
excerpt:
  "What's new on UNetLab 1.0.0-10"
section: "Release"
authors:
- UNL Team
tags:
- UNetLab
- Release
---

## IMPORTANT NOTE:

~~~
 Make sure you UPGRADE vmware-tools
~~~

## To Upgrade:

~~~
apt-get update
apt-get install unetlab

MANDATORY AFTER Upgrade!!!!
REFRESH your browsers:
on Chrome shift +F5
on fireFox ctrl +F5
~~~

## Features and Fixed on this release:

~~~
Now you can exit lab when getting error 20003/60000
Large UNL labs import issue fixed
Pfsense FW added with import/export config
Export CFG fixed on dynamips
BRIDGE network logic changed - p2p = hub, many connections to same network = mac-learning
Other minor bug fixes
~~~


## Known Issues:

~~~
* When importing iou-web labs, main lab topology will be messed, manual re-ordering needed
* When importing iou-web labs, Image MAP in the attached pictures messed, manual re-ordering needed
~~~
