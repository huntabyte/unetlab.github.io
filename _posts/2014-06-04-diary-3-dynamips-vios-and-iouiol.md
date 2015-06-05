---
layout: post
status: publish
published: true
title: ! 'Diary #3: Dynamips, vIOS and IOU/IOL'
author:
  display_name: Andrea Dainese
  login: admin
  email: andrea.dainese@gmail.com
  url: ''
author_login: admin
author_email: andrea.dainese@gmail.com
excerpt: ! "The back end is almost completed, a single command line can manage the
  whole lab:\r\n<pre># unl -F test.unl -T 0 -D all -a start</pre>\r\nAnd all devices
  will come up. In this case we have:\r\n\r\n\t* a Dynamips instance emulating
  a Cisco 2620 router\r\n\t* vIOS\r\n\t* IOL\r\n\r\n"
wordpress_id: 20
wordpress_url: http://www.unetlab.com/?p=20
date: !binary |-
  MjAxNC0wNi0wNCAxNjozOToyOCArMDIwMA==
date_gmt: !binary |-
  MjAxNC0wNi0wNCAxNDozOToyOCArMDIwMA==
categories:
- Diary
tags:
- Diary
comments: []
---

The back end is almost completed, a single command line can manage the whole lab:
<pre># unl -F test.unl -T 0 -D all -a start</pre>
And all devices will come up. In this case we have:

* a Dynamips instance emulating a Cisco 2620 router
* vIOS
* IOL

<a id="more"></a><a id="more-20"></a>

Let's see the 2620 router:
<pre>R1#show cdp neighbors
Capability Codes: R - Router, T - Trans Bridge, B - Source Route Bridge
                  S - Switch, H - Host, I - IGMP, r - Repeater

Device ID        Local Intrfce     Holdtme    Capability  Platform  Port ID
R2               Fas 0/0            108         R B       IOSv      Gig 0/0
R3               Fas 0/0            141          R        Linux Uni Eth 0/0</pre>
All routers are running OSPF:
<pre>R1#show ip ospf neighbor

Neighbor ID     Pri   State           Dead Time   Address         Interface
10.0.0.2          1   2WAY/DROTHER    00:00:31    10.0.0.2        FastEthernet0/0
10.0.0.3          1   FULL/DR         00:00:37    10.0.0.3        FastEthernet0/0</pre>
And yes, because IOL uses half duplex, we expect a musmatch error:
<pre>*Mar  1 00:02:54.535: %CDP-4-DUPLEX_MISMATCH: duplex mismatch discovered on FastEthernet0/0 (not half duplex), with R3 Ethernet0/0 (half duplex).</pre>
