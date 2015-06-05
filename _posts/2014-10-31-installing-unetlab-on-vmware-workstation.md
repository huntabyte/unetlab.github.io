---
layout: post
status: publish
published: true
title: Installing UNetLab on VMware Workstation
author:
  display_name: Andrea Dainese
  login: admin
  email: andrea.dainese@gmail.com
  url: ''
author_login: admin
author_email: andrea.dainese@gmail.com
excerpt: ! "UNetLab is supported on VMware Workstation 9 or later. Version 10
  is suggested and this guide will use that version.\r\n\r\n"
wordpress_id: 99
wordpress_url: http://www.unetlab.com/?p=99
date: !binary |-
  MjAxNC0xMC0zMSAxMTowMDoyNyArMDEwMA==
date_gmt: !binary |-
  MjAxNC0xMC0zMSAxMDowMDoyNyArMDEwMA==
categories:
- HowTo
tags:
- Installation
comments:
- id: 7484
  author: Tom
  author_email: tommyreq@gmail.com
  author_url: ''
  date: !binary |-
    MjAxNC0xMS0xNiAwODoyNDoxMyArMDEwMA==
  date_gmt: !binary |-
    MjAxNC0xMS0xNiAwNzoyNDoxMyArMDEwMA==
  content: My processor does not support intel vtx   so i assume that this tool is
    useless for me or is there an alternative ?
- id: 7485
  author: admin
  author_email: andrea.dainese@gmail.com
  author_url: ''
  date: !binary |-
    MjAxNC0xMS0xNiAwOTozODo1NyArMDEwMA==
  date_gmt: !binary |-
    MjAxNC0xMS0xNiAwODozODo1NyArMDEwMA==
  content: You can still run IOL, Dynamips and 32 bit images, but I suppose performance
    won't be so good. Let us know if you try.
- id: 8459
  author: Moh
  author_email: mohamedlotfy81@gmail.com
  author_url: ''
  date: !binary |-
    MjAxNS0wMi0yMCAxMDoyNTo0MiArMDEwMA==
  date_gmt: !binary |-
    MjAxNS0wMi0yMCAwOToyNTo0MiArMDEwMA==
  content: ! "i'm already enable under &ldquo;Processors&rdquo; the &ldquo;Virtualize
    Intel VT-x/EPT or AMD-V/RVI&rdquo; feature, but still get an error while
    i'm trying to start the UNL on VM\r\nany one could help?"
- id: 8628
  author: Nguyễn Ki&ecirc;n
  author_email: nguyenvietkientn@yahoo.com
  author_url: ''
  date: !binary |-
    MjAxNS0wMy0wOCAwMzowNDo0MyArMDEwMA==
  date_gmt: !binary |-
    MjAxNS0wMy0wOCAwMjowNDo0MyArMDEwMA==
  content: Thank you! ( cảm ơn bạn)
- id: 9349
  author: Badar
  author_email: badernfc@yahoo.com
  author_url: http://nil
  date: !binary |-
    MjAxNS0wNS0wOSAwODo1Mjo0MyArMDIwMA==
  date_gmt: !binary |-
    MjAxNS0wNS0wOSAwNjo1Mjo0MyArMDIwMA==
  content: ! "admin I have downloaded unl 0.9.0-26 imported in vmware workstation
    11 give it 2 gb ram 2 processors enabled vt-x feature it is not starting\r\nI
    have corei5 3rd generation\r\n4gb ram\r\n\r\nhelp plz........."
- id: 9408
  author: walid
  author_email: alioua@gmail.com
  author_url: ''
  date: !binary |-
    MjAxNS0wNS0xMSAxNTozNDozMyArMDIwMA==
  date_gmt: !binary |-
    MjAxNS0wNS0xMSAxMzozNDozMyArMDIwMA==
  content: ! "After an update from v 0.8 to 0.9.xx the last version i got the followin
    error:\r\nCannot call API (\"/api/labs/TEST62/TEST.unl/nodes/1/start\").\r\n\r\nPlease
    help ."
---

UNetLab is supported on VMware Workstation 9 or later. Version 10 is suggested and this guide will use that version.

<a id="more"></a><a id="more-99"></a>

Download from <a title="VMware Workstation" href="http://www.vmware.com/it/products/workstation/">VMware website</a> the VMware Workstation software and install it on your desktop, then run it:

<a href="/images/posts/2014/10/Install-Workstation-1.png"><img class="aligncenter wp-image-101" src="/images/posts/2014/10/Install-Workstation-1.png" alt="Install UNetLab on VMware Workstation #1" width="300" height="223" /></a>

 

From "File" menu, select "Open", and select the UNetLab OVA file:

<a href="/images/posts/2014/10/Install-Workstation-2.png"><img class="aligncenter wp-image-103" src="/images/posts/2014/10/Install-Workstation-2.png" alt="Install Workstation 2" width="300" height="206" /></a>

Click Import and accept the License/Disclaimer:

<a href="/images/posts/2014/10/Install-Workstation-3.png"><img class="aligncenter wp-image-104" src="/images/posts/2014/10/Install-Workstation-3.png" alt="Install Workstation 3" width="300" height="246" /></a>

After a while the UNetLab VM will be created:

<a href="/images/posts/2014/10/Install-Workstation-4.png"><img class="aligncenter wp-image-105" src="/images/posts/2014/10/Install-Workstation-4.png" alt="Install UNetLab on VMware Workstation #4" width="300" height="223" /></a>

Now select "Edit virtual machine settings" and adjust processors, memory, network adapters and number of disks. By default the UNetLab is configured with 1 vCPU, 1GB of RAM and 1 vNIC. Finally enable under "Processors" the "Virtualize Intel VT-x/EPT or AMD-V/RVI" feature:

<a href="/images/posts/2014/10/Install-Workstation-5.png"><img class="aligncenter wp-image-106" src="/images/posts/2014/10/Install-Workstation-5.png" alt="Install Workstation 5" width="300" height="270" /></a>

 

Up to 10 vNICs are supported. The first one will be used as management and can be used as "Cloud" also.

Finally start the VM and proceed with the first boot configuration.
