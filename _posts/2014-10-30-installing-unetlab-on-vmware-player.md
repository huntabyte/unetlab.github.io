---
layout: post
status: publish
published: true
title: Installing UNetLab on VMware Player
author:
  display_name: Andrea Dainese
  login: admin
  email: andrea.dainese@gmail.com
  url: ''
author_login: admin
author_email: andrea.dainese@gmail.com
excerpt: ! "UNetLab is supported on VMware Player 5 or later. Version 6 is suggested
  and this guide will use that version.\r\n\r\n"
wordpress_id: 89
wordpress_url: http://www.unetlab.com/?p=89
date: !binary |-
  MjAxNC0xMC0zMCAxMTowMDoyNiArMDEwMA==
date_gmt: !binary |-
  MjAxNC0xMC0zMCAxMDowMDoyNiArMDEwMA==
categories:
- HowTo
tags:
- Installation
comments:
- id: 7362
  author: MIke
  author_email: mike@mike.com
  author_url: ''
  date: !binary |-
    MjAxNC0xMC0zMCAxNTozMTozOSArMDEwMA==
  date_gmt: !binary |-
    MjAxNC0xMC0zMCAxNDozMTozOSArMDEwMA==
  content: ! "Thanks :) waiting for the download link.\r\nWhat are the suggested RAM
    and CPU?"
- id: 7363
  author: admin
  author_email: andrea.dainese@gmail.com
  author_url: ''
  date: !binary |-
    MjAxNC0xMC0zMCAxNjowMjoxMSArMDEwMA==
  date_gmt: !binary |-
    MjAxNC0xMC0zMCAxNTowMjoxMSArMDEwMA==
  content: Depends on how many nodes you want to run ;)
- id: 7364
  author: Paul
  author_email: paul@chandlerweb.co.uk
  author_url: ''
  date: !binary |-
    MjAxNC0xMS0wMSAxMDoyOTo1MSArMDEwMA==
  date_gmt: !binary |-
    MjAxNC0xMS0wMSAwOToyOTo1MSArMDEwMA==
  content: Showing how to install it but not actually providing download links is
    just teasing! When will you be releasing this for download?
---

UNetLab is supported on VMware Player 5 or later. Version 6 is suggested and this guide will use that version.

<a id="more"></a><a id="more-89"></a>

Download from <a title="VMware Player Pro" href="http://www.vmware.com/products/player/">VMware website</a> the VMware Player software and install it on your desktop, then run it:

<a href="/images/posts/2014/10/Install-Player-1.png"><img class="aligncenter wp-image-90" src="/images/posts/2014/10/Install-Player-1.png" alt="Install UNetLab on VMware Player #1" width="300" height="271" /></a>From "Player" menu, select "File" -> "Open", and select the UNetLab OVA file:

<a href="/images/posts/2014/10/Install-Player-2.png"><img class="aligncenter wp-image-91" src="/images/posts/2014/10/Install-Player-2.png" alt="Install UNetLab on VMware Player #2" width="300" height="202" /></a>Click Import and accept the License/Disclaimer:

<a href="/images/posts/2014/10/Install-Player-3.png"><img class="aligncenter wp-image-92" src="/images/posts/2014/10/Install-Player-3.png" alt="Install UNetLab on VMware Player #2" width="300" height="243" /></a>

 

After a while the UNetLab VM will be created:

<a href="/images/posts/2014/10/Install-Player-4.png"><img class="aligncenter wp-image-93" src="/images/posts/2014/10/Install-Player-4.png" alt="Install UNetLab on VMware Player #4" width="300" height="271" /></a>

 

Now select "Edit virtual machine settings" and adjust processors, memory, network adapters and number of disks. By default the UNetLab is configured with 1 vCPU, 1GB of RAM and 1 vNIC. Finally enable under "Processors" the "Virtualize Intel VT-x/EPT or AMD-V/RVI" feature:

<a href="/images/posts/2014/10/Install-Player-5.png"><img class="aligncenter wp-image-94" src="/images/posts/2014/10/Install-Player-5.png" alt="Install UNetLab on VMware Player #5" width="300" height="261" /></a>Up to 10 vNICs are supported. The first one will be used as management and can be used as "Cloud" also.

Finally start the VM and proceed with the first boot configuration.
