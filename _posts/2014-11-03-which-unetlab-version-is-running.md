---
layout: post
status: publish
published: true
title: Which UNetLab version is running?
author:
  display_name: Andrea Dainese
  login: admin
  email: andrea.dainese@gmail.com
  url: ''
author_login: admin
author_email: andrea.dainese@gmail.com
excerpt: ! "## Q: Which UNetLab version is running?\r\n"
wordpress_id: 258
wordpress_url: http://www.unetlab.com/?p=258
date: !binary |-
  MjAxNC0xMS0wMyAxNjozODozMSArMDEwMA==
date_gmt: !binary |-
  MjAxNC0xMS0wMyAxNTozODozMSArMDEwMA==
categories:
- HowTo
tags:
- FAQ
comments: []
---
## Q: Which UNetLab version is running?
<a id="more"></a><a id="more-258"></a>
## A: Use the dpkg tool
Simply type:
~~~
# dpkg -l unetlab
Desired=Unknown/Install/Remove/Purge/Hold
| Status=Not/Inst/Conf-files/Unpacked/halF-conf/Half-inst/trig-aWait/Trig-pend
|/ Err?=(none)/Reinst-required (Status,Err: uppercase=bad)
||/ Name                                  Version                 Architecture            Description
+++-=====================================-=======================-=======================-===============================================================================
ii  unetlab                               0.8.5-36                amd64                   A new generation software for networking labs.
~~~
