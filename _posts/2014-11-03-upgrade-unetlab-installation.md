---
layout: post
published: true
title: "Upgrade UNetLab installation"
excerpt:
  "HowTo upgrade UNetLab software."
section: "HowTo"
authors:
- andrea
tags:
- UNetLab
- HowTo
---
UNetLab is based on Ubuntu 14.04 Linux. Weekly you should check for updates and upgrade your system:

~~~
apt-get update
apt-get -y install unetlab
~~~

If it's required to update UNetLab only, just restrict the upgrade phase:

~~~
apt-get update
apt-get install unetlab
~~~

UNetLab VM must be able to access Internet directly or through a proxy.
