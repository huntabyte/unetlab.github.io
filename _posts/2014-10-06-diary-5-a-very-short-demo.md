---
layout: post
published: true
title: "Diary #5: a very short demo"
abstract: ! "Let's see a very short UNetLab demo."
categories:
- Preview
authors:
- andrea
tags:
- UNetLab
- Preview
---
This post will show step by step how UNetLab works. After installation a Web User Interface (Web-UI) is available trough http protocol:

![UNetLab Home](/images/posts/2014/10/diary5-1.png "UNetLab Home")

The Web-UI is based on Bootstrap and theme will be redesigned by a friend soon. And I wan to publicly thank her. The Labs tab will store all available labs:

![UNetLab labs tab](/images/posts/2014/10/diary5-2.png "UNetLab labs tab")

Each lab is a file, each folder is a directory stored under /opt/unetlab/labs.  Under Actions, let's add a folder:

![UNetLab folder add](/images/posts/2014/10/diary5-4.png "UNetLab folder add")

Fill the name field, and confirm. Because the theme will be redesigned soon, graphics bugs will be fixed on final theme. Now we can see the new folder:

![UNetLab folder added](/images/posts/2014/10/diary5-5.png "UNetLab folder added")

Now enter in the directory and add a new lab:

![UNetLab lab add](/images/posts/2014/10/diary5-6.png "UNetLab lab add")

The only one mandatory field is the lab name. After pressing the add button, devices and networks can be added:

![UNetLab add menu](/images/posts/2014/10/diary5-7.png "UNetLab add menu")

Let's assume we want 2 routers and two networks. Let's add two networks:

![UNetLab networks add](/images/posts/2014/10/diary5-8.png "UNetLab networks add")

When more than one network will be added, the network id is attached to the name. Drag and drop networks:

![UNetLab networks drag](/images/posts/2014/10/diary5-9.png "UNetLab networks drag")

Now add  two 1710 routers, two vIOS routers and two IOL routers:

![UNetLab nodes add](/images/posts/2014/10/diary5-10.png "UNetLab nodes add")

All parameters are pre configured by default. We need to specify how many devices we want to create and we select the startup configuration (valid for Dyamips and IOL nodes only)  Add all routers and drag and drop to position them:

Now right click on each node and select interfaces:

![UNetLab node interfaces](/images/posts/2014/10/diary5-11.png "UNetLab node interfaces")

Then configure interfaces (currently Serial interfaces are supported on IOL nodes only):

![UNetLab configure interfaces](/images/posts/2014/10/diary5-12.png "UNetLab configure  interfaces")

Now the topology is complete:

![UNetLab topology](/images/posts/2014/10/diary5-13.png "UNetLab topology")

Select Actions -> Open this lab, and start each node using the context menu:

![UNetLab running lab](/images/posts/2014/10/diary5-14.png "UNetLab running lab")

As you can see, each node shows a play/stop icon, reflecting its status. Dynamips and IOL nodes are pre configured with hostname, a loopback and a EIGRP process:

~~~
c1710-1#show cdp neighbors
Capability Codes: R - Router, T - Trans Bridge, B - Source Route Bridge
                  S - Switch, H - Host, I - IGMP, r - Repeater

Device ID        Local Intrfce     Holdtme    Capability  Platform  Port ID
IOL-3            Eth 0              149         R B       Linux Uni Eth 0/0
IOL-2            Eth 0              149         R B       Linux Uni Eth 0/0
c1710-1#show ip route
Codes: C - connected, S - static, R - RIP, M - mobile, B - BGP
       D - EIGRP, EX - EIGRP external, O - OSPF, IA - OSPF inter area
       N1 - OSPF NSSA external type 1, N2 - OSPF NSSA external type 2
       E1 - OSPF external type 1, E2 - OSPF external type 2
       i - IS-IS, su - IS-IS summary, L1 - IS-IS level-1, L2 - IS-IS level-2
       ia - IS-IS inter area, * - candidate default, U - per-user static route
       o - ODR, P - periodic downloaded static route

Gateway of last resort is not set

     10.0.0.0/8 is variably subnetted, 6 subnets, 2 masks
D       10.3.1.0/24 [90/307200] via 10.3.0.4, 00:00:35, Ethernet0
                    [90/307200] via 10.3.0.3, 00:00:35, Ethernet0
C       10.3.0.0/24 is directly connected, Ethernet0
D       10.3.23.0/24 [90/2195456] via 10.3.0.4, 00:00:35, Ethernet0
                     [90/2195456] via 10.3.0.3, 00:00:35, Ethernet0
D       10.3.255.4/32 [90/409600] via 10.3.0.4, 00:00:35, Ethernet0
C       10.3.255.2/32 is directly connected, Loopback0
D       10.3.255.3/32 [90/409600] via 10.3.0.3, 00:00:36, Ethernet0
c1710-1#show cdp neighbors
Capability Codes: R - Router, T - Trans Bridge, B - Source Route Bridge
                  S - Switch, H - Host, I - IGMP, r - Repeater

Device ID        Local Intrfce     Holdtme    Capability  Platform  Port ID
IOL-3            Eth 0              135         R B       Linux Uni Eth 0/0
IOL-2            Eth 0              135         R B       Linux Uni Eth 0/0
c1710-1#show ip eigrp neighbors
IP-EIGRP neighbors for process 3
H   Address                 Interface       Hold Uptime   SRTT   RTO  Q  Seq
                                            (sec)         (ms)       Cnt Num
1   10.3.0.4                Et0               14 00:00:48   19   200  0  14
0   10.3.0.3                Et0               11 00:00:48   23   200  0  11
c1710-1#ping 10.3.255.4

Type escape sequence to abort.
Sending 5, 100-byte ICMP Echos to 10.3.255.4, timeout is 2 seconds:
!!!!!
Success rate is 100 percent (5/5), round-trip min/avg/max = 1/2/4 ms
~~~

Sounds good, isn't it?
