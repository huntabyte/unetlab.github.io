---
layout: post
status: publish
published: true
title: Create the first lab
author:
  display_name: Andrea Dainese
  login: admin
  email: andrea.dainese@gmail.com
  url: ''
author_login: admin
author_email: andrea.dainese@gmail.com
wordpress_id: 211
wordpress_url: http://www.unetlab.com/?p=211
date: !binary |-
  MjAxNC0xMS0wMyAxMjowMzowOCArMDEwMA==
date_gmt: !binary |-
  MjAxNC0xMS0wMyAxMTowMzowOCArMDEwMA==
categories:
- Labs
tags:
- Using
comments:
- id: 7373
  author: mandar
  author_email: mandarbhave@gmail.com
  author_url: ''
  date: !binary |-
    MjAxNC0xMS0wMyAxNzoxMzo1NiArMDEwMA==
  date_gmt: !binary |-
    MjAxNC0xMS0wMyAxNjoxMzo1NiArMDEwMA==
  content: Great work done.really appreciate ur efforts.pls guide abt adding more
    interfaces to the general router
- id: 7387
  author: Dennis
  author_email: flemmig@gmail.com
  author_url: ''
  date: !binary |-
    MjAxNC0xMS0wNCAxMTo0ODo0MSArMDEwMA==
  date_gmt: !binary |-
    MjAxNC0xMS0wNCAxMDo0ODo0MSArMDEwMA==
  content: I am not able to add a 7200 dynamips router. Not available in this release?
- id: 7389
  author: admin
  author_email: andrea.dainese@gmail.com
  author_url: ''
  date: !binary |-
    MjAxNC0xMS0wNCAxMjoyODoyMyArMDEwMA==
  date_gmt: !binary |-
    MjAxNC0xMS0wNCAxMToyODoyMyArMDEwMA==
  content: Not yet. See the supported images under the dynamips post.
- id: 7394
  author: Dennis
  author_email: flemmig@gmail.com
  author_url: ''
  date: !binary |-
    MjAxNC0xMS0wNSAwNzozMjozMSArMDEwMA==
  date_gmt: !binary |-
    MjAxNC0xMS0wNSAwNjozMjozMSArMDEwMA==
  content: ! "Great work! \r\nLove to create the topologies like this! To edit topologies
    with text will be available too?\r\nWill packet capture options get improved compared
    to the WEB-IOU?"
- id: 7395
  author: admin
  author_email: andrea.dainese@gmail.com
  author_url: ''
  date: !binary |-
    MjAxNC0xMS0wNSAwODozMDoxMCArMDEwMA==
  date_gmt: !binary |-
    MjAxNC0xMS0wNSAwNzozMDoxMCArMDEwMA==
  content: ! 'A lab is a file stored under /opt/unetlab/labs.

    You can use tcpdump and sniff vunl0_X_Y, where X=node_id and Y=interface_id.'
- id: 7649
  author: shaikh
  author_email: shaikhccie@gmail.com
  author_url: ''
  date: !binary |-
    MjAxNC0xMi0wNiAxMzo0ODoxOCArMDEwMA==
  date_gmt: !binary |-
    MjAxNC0xMi0wNiAxMjo0ODoxOCArMDEwMA==
  content: ! "Andera Good  Job. \r\nHow can i add IOS Image to the routers  i have
    created the topology but cannot start because \r\nof no ios Image.\r\nThanks"
- id: 7737
  author: Aaron
  author_email: axjoshi@gmail.com
  author_url: ''
  date: !binary |-
    MjAxNC0xMi0xNyAxNjowNjowMyArMDEwMA==
  date_gmt: !binary |-
    MjAxNC0xMi0xNyAxNTowNjowMyArMDEwMA==
  content: First of all great job...  How do you connect two Alcatel lucent 7750 together.
    I used bridge but cannot ping across.
- id: 7836
  author: jay
  author_email: jay.nexo@gmail.com
  author_url: ''
  date: !binary |-
    MjAxNC0xMi0yOSAxMjo1MTozNCArMDEwMA==
  date_gmt: !binary |-
    MjAxNC0xMi0yOSAxMTo1MTozNCArMDEwMA==
  content: ! "Hi admin;\r\n\r\ni think i have mis-configured something in vm player
    (5.0). The IP i am getting from Unetlab console is 192.168.150.133. when i try
    to access it using a browser (as http://192.168.150.133/) teh browser
    times out. \r\n\r\nUnder vm ware player, my 10 NIC interfaces are in bridge mode
    (with replicate physical network state set).\r\n\r\nAny help would be greatly
    appreciated.\r\n\r\n\r\ncheers"
---

After the installation, open the browser and point it to the URL showed on the UNetLab console:

<a href="/images/posts/2014/10/First-Boot-2.png"><img class="aligncenter wp-image-119" src="/images/posts/2014/10/First-Boot-2.png" alt="First Boot #2" width="300" height="248" /></a>The default theme is work in progress:

<a href="/images/posts/2014/11/First-Lab-1.png"><img class="aligncenter wp-image-213" src="/images/posts/2014/11/First-Lab-1.png" alt="First Lab #1" width="300" height="190" /></a>Go to Labs:

<a href="/images/posts/2014/11/First-Lab-2.png"><img class="aligncenter wp-image-214" src="/images/posts/2014/11/First-Lab-2.png" alt="First Lab #2" width="300" height="190" /></a>

 

From Action menu, a folder or a lab can be created. Let's create a lab:

<a href="/images/posts/2014/11/First-Lab-3.png"><img class="aligncenter wp-image-215" src="/images/posts/2014/11/First-Lab-3.png" alt="First Lab #3" width="300" height="191" /></a>The only mandatory field is the name. Mind that you should not use duplicated names. In other words a lab name must be unique within all lab tree.

<a href="/images/posts/2014/11/First-Lab-4.png"><img class="aligncenter wp-image-216" src="/images/posts/2014/11/First-Lab-4.png" alt="First Lab #4" width="300" height="191" /></a>

 

From the Actions menu, add a couple of networks:

<a href="/images/posts/2014/11/First-Lab-5.png"><img class="aligncenter wp-image-217" src="/images/posts/2014/11/First-Lab-5.png" alt="First Lab #5" width="300" height="191" /></a>If the first field is greater than two, the network_id will be postponed to the network name.

Network type can be:

* bridge: a standard network without any particular features.
* ovs: Open vSwitch, a OpenFlow enable switch useful for SDN purpose. Mind that Open vSwitch filter out some frames, like CDP, LACP and so on.
* pnet*: a bridged physical interfaces, known also as "Cloud".

After pressing the "Add" button, networks can be positioned dragging them to the right place:

<a href="/images/posts/2014/11/First-Lab-6.png"><img class="aligncenter wp-image-218" src="/images/posts/2014/11/First-Lab-6.png" alt="First Lab #6" width="300" height="191" /></a>

 

Now from the Actions menu, add few routers:

<a href="/images/posts/2014/11/First-Lab-7.png"><img class="aligncenter wp-image-219" src="/images/posts/2014/11/First-Lab-7.png" alt="First Lab #7" width="300" height="191" /></a>

 

All fields are defaults and can be customized. Again, if the first field is greater than two, the node_id will be postponed to the node name.

Startup configuration, if different from "Unconfigured" will load an auto-generated startup config. Mind that "Get from lab file" is currently unsupported.

After pressing the "Add" button, nodes can be positioned dragging them to the right place:

<a href="/images/posts/2014/11/First-Lab-8.png"><img class="aligncenter wp-image-220" src="/images/posts/2014/11/First-Lab-8.png" alt="First Lab #8" width="300" height="191" /></a>Now right click to each node, select "Interfaces", and connect them to networks:

<a href="/images/posts/2014/11/First-Lab-9.png"><img class="aligncenter wp-image-221" src="/images/posts/2014/11/First-Lab-9.png" alt="First Lab #9" width="300" height="191" /></a>

 

Ethernet interfaces can be connected to networks only. There is no P2P ethernet link, a network must be used. Serial interfaces, currently available for IOU/IOL nodes only, are P2P.

Please forgive few visual bugs, I'm working on them. At the end the final topology will be as the following:

<a href="/images/posts/2014/11/First-Lab-10.png"><img class="aligncenter wp-image-222" src="/images/posts/2014/11/First-Lab-10.png" alt="First Lab 10" width="300" height="190" /></a>

Now from the Actions menu select "Open this lab". Right click to each node and select start (a "start all" button will be available soon):

<a href="/images/posts/2014/11/First-Lab-11.png"><img class="aligncenter wp-image-224" src="/images/posts/2014/11/First-Lab-11.png" alt="First Lab #11" width="300" height="191" /></a>

After a while all routers will be available. Mind that the UNetLab VM must have enough resources to manage all configured nodes, or it will be unusable.
