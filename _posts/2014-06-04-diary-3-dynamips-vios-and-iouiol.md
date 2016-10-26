---
layout: post
published: true
title: "Diary #3: Dynamips, vIOS and IOU/IOL"
abstract: ! "Let's see an example lab and start it."
categories:
- Preview
authors:
- andrea
tags:
- UNetLab
- Preview
---

The back end is almost completed, a single command line can manage the whole lab:

~~~
unl -F test.unl -T 0 -D all -a start
~~~

And all devices will come up. In this case we have:

* a Dynamips instance emulating a Cisco 2620 router
* vIOS
* IOL

Let's see the 2620 router:

~~~
R1#show cdp neighbors
Capability Codes: R - Router, T - Trans Bridge, B - Source Route Bridge
                  S - Switch, H - Host, I - IGMP, r - Repeater

Device ID        Local Intrfce     Holdtme    Capability  Platform  Port ID
R2               Fas 0/0            108         R B       IOSv      Gig 0/0
R3               Fas 0/0            141          R        Linux Uni Eth 0/0
~~~

All routers are running OSPF:

~~~
R1#show ip ospf neighbor

Neighbor ID     Pri   State           Dead Time   Address         Interface
10.0.0.2          1   2WAY/DROTHER    00:00:31    10.0.0.2        FastEthernet0/0
10.0.0.3          1   FULL/DR         00:00:37    10.0.0.3        FastEthernet0/0
~~~

And yes, because IOL uses half duplex, we expect a musmatch error:

~~~
*Mar  1 00:02:54.535: %CDP-4-DUPLEX_MISMATCH: duplex mismatch discovered on FastEthernet0/0 (not half duplex), with R3 Ethernet0/0 (half duplex).
~~~
