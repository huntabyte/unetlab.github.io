---
layout: post
published: true
title: "How to fix: Could not open iourc file)?"
excerpt:
  "HowTo solve IOU/IOL license error on UNetLab software."
section: "FAQ"
authors:
- andrea
tags:
- UNetLab
- FAQ
---
If no license is installed, IOU/IOL fails to run with the following error:

~~~
IOURC: Could not open iourc file
~~~

The IOU/IOL file is under:

~~~
cat /opt/unetlab/addons/iol/bin/iourc
[license]
unl01 = 0123456789abcdef;
~~~

Cisco IOU/IOL requires a valid license from Cisco. Only Cisco employers can obtain a valid license.
