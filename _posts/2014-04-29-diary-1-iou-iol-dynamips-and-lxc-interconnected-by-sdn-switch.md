---
layout: post
status: publish
published: true
title: ! 'Diary #1: IOU (IOL), Dynamips and LXC interconnected by SDN switch'
author:
  display_name: Andrea Dainese
  login: admin
  email: andrea.dainese@gmail.com
  url: ''
author_login: admin
author_email: andrea.dainese@gmail.com
excerpt: ! "The first brick has been developed: now IOU (IOL) can be connected to
  a Openflow capable switch. In the following example we'll see three devices:\r\n\r\n\t* one
  Cisco IOU/IOL instance;\r\n\t* one Cisco 2600 router (powered by
  Dynamps);\r\n\t* one Linux VM (powered by LXC).\r\n\r\nAll
  of them are interconnected together through a OpenFlow capable switches managed
  by the OpenDaylight controller:\r\n\r\n"
wordpress_id: 8
wordpress_url: http://www.unetlab.com/?p=8
date: !binary |-
  MjAxNC0wNC0yOSAxNDozMToxNiArMDIwMA==
date_gmt: !binary |-
  MjAxNC0wNC0yOSAxMjozMToxNiArMDIwMA==
categories:
- Diary
tags:
- Diary
comments:
- id: 7325
  author: Amir
  author_email: mehri.amir@gmail.com
  author_url: ''
  date: !binary |-
    MjAxNC0wNC0zMCAxNzoyODozNiArMDIwMA==
  date_gmt: !binary |-
    MjAxNC0wNC0zMCAxNToyODozNiArMDIwMA==
  content: Thank you dear Andrea, that's great.
- id: 7327
  author: Paul
  author_email: birminghamseller@gmail.com
  author_url: ''
  date: !binary |-
    MjAxNC0wNS0wMyAwMToxMDowMiArMDIwMA==
  date_gmt: !binary |-
    MjAxNC0wNS0wMiAyMzoxMDowMiArMDIwMA==
  content: ! "Hi Andrea - that's great work!\r\n\r\nI'm wondering if this switch could
    help me with an issue im experiencing using an IOU switch where by the output
    errors &amp; collisions keep incrementing i.e ive tried making the interfaces
    full duplex but even after a period of like 5hrs the collisions return on all
    interfaces not just one, I have the IOU switch connected to a cloud then the switch
    also connects to IOU routers within the topology...\r\n\r\nany help you can provide
    would be much appreciated"
---

The first brick has been developed: now IOU (IOL) can be connected to a Openflow capable switch. In the following example we'll see three devices:

* one Cisco IOU/IOL instance;
* one Cisco 2600 router (powered by Dynamps);
* one Linux VM (powered by LXC).

All of them are interconnected together through a OpenFlow capable switches managed by the OpenDaylight controller:

<a id="more"></a><a id="more-8"></a>

<a href="/images/posts/2014/04/diary1_dashboard.png"><img class="aligncenter wp-image-9 size-full" src="/images/posts/2014/04/diary1_dashboard.png" alt="Diary #1 Dashboard" width="431" height="364" /></a>

The following shows the configured flows and related MAC addresses:

<a href="/images/posts/2014/04/diary1_flows.png"><img class="aligncenter wp-image-10 size-full" src="/images/posts/2014/04/diary1_flows.png" alt="Diary #1 Flows" width="1308" height="328" /></a>
Let's see how the Open vSwitch is configured:
<pre>root@unl01:~# ovs-vsctl show
820ef35c-d574-49d8-be31-ad14e75371a3
    Bridge br-net0_1
        Controller "tcp:192.168.179.142:6633"
            is_connected: true
        Port "vunl0_0_0"
            Interface "vunl0_0_0"
        Port br-net0_1
            Interface br-net0_1
                type: internal
        Port "vunl0_2_0"
            Interface "veth0"
        Port "vunl0_1_0"
            Interface "vunl0_1_0"</pre>
The Linux VM:
<pre>$ ifconfig eth0
eth0      Link encap:Ethernet  HWaddr 00:16:3e:12:bc:c1
          inet addr:192.168.122.161  Bcast:192.168.122.255  Mask:255.255.255.0
          inet6 addr: fe80::216:3eff:fe12:bcc1/64 Scope:Link
          UP BROADCAST RUNNING MULTICAST  MTU:1500  Metric:1
          RX packets:52 errors:0 dropped:0 overruns:0 frame:0
          TX packets:331 errors:0 dropped:0 overruns:0 carrier:0
          collisions:0 txqueuelen:1000
          RX bytes:4238 (4.2 KB)  TX bytes:16685 (16.6 KB)
$ ping -c 3 192.168.122.170
PING 192.168.122.170 (192.168.122.170) 56(84) bytes of data.
64 bytes from 192.168.122.170: icmp_seq=1 ttl=255 time=2.35 ms
64 bytes from 192.168.122.170: icmp_seq=2 ttl=255 time=2.36 ms
64 bytes from 192.168.122.170: icmp_seq=3 ttl=255 time=2.39 ms
$ ping -c 3 192.168.122.171
PING 192.168.122.171 (192.168.122.171) 56(84) bytes of data.
64 bytes from 192.168.122.171: icmp_seq=1 ttl=255 time=4.63 ms
64 bytes from 192.168.122.171: icmp_seq=2 ttl=255 time=2.43 ms
64 bytes from 192.168.122.171: icmp_seq=3 ttl=255 time=3.06 ms</pre>
The IOU/IOL router:
<pre>Router#show int e0/0
Ethernet0/0 is up, line protocol is up
  Hardware is AmdP2, address is aabb.cc00.0100 (bia aabb.cc00.0100)
  Internet address is 192.168.122.170/24
  MTU 1500 bytes, BW 10000 Kbit/sec, DLY 1000 usec,
     reliability 255/255, txload 1/255, rxload 1/255
  Encapsulation ARPA, loopback not set
  Keepalive set (10 sec)
  ARP type: ARPA, ARP Timeout 04:00:00
  Last input 00:00:11, output 00:00:06, output hang never
  Last clearing of "show interface" counters never
  Input queue: 0/75/0/0 (size/max/drops/flushes); Total output drops: 0
  Queueing strategy: fifo
  Output queue: 0/40 (size/max)
  5 minute input rate 0 bits/sec, 0 packets/sec
  5 minute output rate 0 bits/sec, 0 packets/sec
     20 packets input, 1728 bytes, 0 no buffer
     Received 8 broadcasts (0 IP multicasts)
     0 runts, 0 giants, 0 throttles
     0 input errors, 0 CRC, 0 frame, 0 overrun, 0 ignored
     0 input packets with dribble condition detected
     29 packets output, 3401 bytes, 0 underruns
     0 output errors, 0 collisions, 1 interface resets
     5 unknown protocol drops
     0 babbles, 0 late collision, 0 deferred
     0 lost carrier, 0 no carrier
     0 output buffer failures, 0 output buffers swapped out
Router#ping 192.168.122.161
Type escape sequence to abort.
Sending 5, 100-byte ICMP Echos to 192.168.122.161, timeout is 2 seconds:
!!!!!
Success rate is 100 percent (5/5), round-trip min/avg/max = 1/2/5 ms
Router#ping 192.168.122.171
Type escape sequence to abort.
Sending 5, 100-byte ICMP Echos to 192.168.122.171, timeout is 2 seconds:
!!!!!
Success rate is 100 percent (5/5), round-trip min/avg/max = 3/3/3 ms</pre>
And finally the Cisco 2600 Router (Dynamips powered):
<pre>Router#show int fa0/0
FastEthernet0/0 is up, line protocol is up
  Hardware is AmdFE, address is c801.3c15.0000 (bia c801.3c15.0000)
  Internet address is 192.168.122.171/24
  MTU 1500 bytes, BW 100000 Kbit/sec, DLY 100 usec,
     reliability 255/255, txload 1/255, rxload 1/255
  Encapsulation ARPA, loopback not set
  Keepalive set (10 sec)
  Full-duplex, 100Mb/s, 100BaseTX/FX
  ARP type: ARPA, ARP Timeout 04:00:00
  Last input 00:00:16, output 00:00:07, output hang never
  Last clearing of "show interface" counters never
  Input queue: 0/75/0/0 (size/max/drops/flushes); Total output drops: 0
  Queueing strategy: fifo
  Output queue: 0/40 (size/max)
  5 minute input rate 0 bits/sec, 0 packets/sec
  5 minute output rate 0 bits/sec, 0 packets/sec
     29 packets input, 2682 bytes
     Received 12 broadcasts, 0 runts, 0 giants, 0 throttles
     0 input errors, 0 CRC, 0 frame, 0 overrun, 0 ignored
     0 watchdog
     0 input packets with dribble condition detected
     39 packets output, 4454 bytes, 0 underruns
     0 output errors, 0 collisions, 0 interface resets
     3 unknown protocol drops
     0 babbles, 0 late collision, 0 deferred
     0 lost carrier, 0 no carrier
     0 output buffer failures, 0 output buffers swapped out
Router#ping 192.168.122.161

Type escape sequence to abort.
Sending 5, 100-byte ICMP Echos to 192.168.122.161, timeout is 2 seconds:
!!!!!
Success rate is 100 percent (5/5), round-trip min/avg/max = 1/2/4 ms
Router#ping 192.168.122.170

Type escape sequence to abort.
Sending 5, 100-byte ICMP Echos to 192.168.122.170, timeout is 2 seconds:
!!!!!
Success rate is 100 percent (5/5), round-trip min/avg/max = 1/2/4 ms</pre>
Hope you enjoyed this first diary post.
