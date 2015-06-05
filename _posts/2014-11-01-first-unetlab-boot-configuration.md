---
layout: post
status: publish
published: true
title: First UNetLab boot configuration
author:
  display_name: Andrea Dainese
  login: admin
  email: andrea.dainese@gmail.com
  url: ''
author_login: admin
author_email: andrea.dainese@gmail.com
excerpt: ! "The first boot requires additional configuration.\r\n\r\n"
wordpress_id: 117
wordpress_url: http://www.unetlab.com/?p=117
date: !binary |-
  MjAxNC0xMS0wMSAxMTowMDo1NiArMDEwMA==
date_gmt: !binary |-
  MjAxNC0xMS0wMSAxMDowMDo1NiArMDEwMA==
categories:
- HowTo
tags:
- Installation
comments:
- id: 7738
  author: AnnaKin
  author_email: chitipat611@hotmail.com
  author_url: ''
  date: !binary |-
    MjAxNC0xMi0xOSAwNjowMzoyMSArMDEwMA==
  date_gmt: !binary |-
    MjAxNC0xMi0xOSAwNTowMzoyMSArMDEwMA==
  content: How to change accessing to internet ? first installation I choose "direct
    connection" but now I would like to change to proxy authentication.
- id: 7739
  author: admin
  author_email: andrea.dainese@gmail.com
  author_url: ''
  date: !binary |-
    MjAxNC0xMi0xOSAxNDoyMjo0NiArMDEwMA==
  date_gmt: !binary |-
    MjAxNC0xMi0xOSAxMzoyMjo0NiArMDEwMA==
  content: ! 'You need to remove a file:


    rm -f /opt/ovf/.configured


    Then logout and login to start the configuration process again'
- id: 7741
  author: AnnaKin
  author_email: chitipat611@hotmail.com
  author_url: ''
  date: !binary |-
    MjAxNC0xMi0yMCAwMjoxNToyNyArMDEwMA==
  date_gmt: !binary |-
    MjAxNC0xMi0yMCAwMToxNToyNyArMDEwMA==
  content: Thanks a lot. It's well if you can create shortcut for this progress such
    as command "setup" to start the process again.
- id: 8162
  author: icedewd
  author_email: turbo2007@gmail.com
  author_url: ''
  date: !binary |-
    MjAxNS0wMS0yNiAxOToyMDozNSArMDEwMA==
  date_gmt: !binary |-
    MjAxNS0wMS0yNiAxODoyMDozNSArMDEwMA==
  content: ! "I am having a problem where I have configured a few other default configs
    and if I try to start all 11 devices, the configs do not get built out so it comes
    up with a default config.  I have tried to add delay to each of the devices but
    that did not help.  Also when you have all of your devices configured and you
    have to edit a device, all of the connections are removed.\r\n\r\nThis tool is
    awesome and I love the ability to run the vSRXs along side of the Cisco devices!
    \ Keep up the great work!"
- id: 8856
  author: Gopal
  author_email: mak201120@gmail.com
  author_url: http://www.unetlab.com
  date: !binary |-
    MjAxNS0wMy0yNCAxNzo0MTowNSArMDEwMA==
  date_gmt: !binary |-
    MjAxNS0wMy0yNCAxNjo0MTowNSArMDEwMA==
  content: I did the same way mention above but after that it is not taking unl password.Plz
    help me out
---

The first boot requires additional configuration.

<a id="more"></a><a id="more-117"></a>

Start the UNetLab VM:

<a href="/images/posts/2014/10/First-Boot-1.png"><img class="aligncenter wp-image-118" src="/images/posts/2014/10/First-Boot-1.png" alt="First Boot #1" width="300" height="248" /></a>

 

After a while the console login prompt will be available:

<a href="/images/posts/2014/10/First-Boot-2.png"><img class="aligncenter wp-image-119" src="/images/posts/2014/10/First-Boot-2.png" alt="First Boot #2" width="300" height="248" /></a>

By default the UNetLab VM will look for an IP address using DHCP protocol. Login as "root" with default password "unl" and start the configuration.

Insert the "root" password twice:

<a href="/images/posts/2014/10/First-Boot-3.png"><img class="aligncenter wp-image-120" src="/images/posts/2014/10/First-Boot-3.png" alt="First Boot #3" width="300" height="248" /></a>

Type the hostname (default is "unl01"):

<a href="/images/posts/2014/10/First-Boot-4.png"><img class="aligncenter wp-image-121" src="/images/posts/2014/10/First-Boot-4.png" alt="First Boot #4" width="300" height="248" /></a>

 

 

Type the domain name (default is "example.com"):

<a href="/images/posts/2014/10/First-Boot-5.png"><img class="aligncenter wp-image-123" src="/images/posts/2014/10/First-Boot-5.png" alt="First Boot #5" width="300" height="248" /></a>

Mind that hostname and domain name are critical for IOU/IOL license.

Select if management IP address should be static or configured by DHCP (default is "dhcp", use arrow keys and "space" to select, then "enter" to confirm):

<a href="/images/posts/2014/10/First-Boot-6.png"><img class="aligncenter wp-image-124" src="/images/posts/2014/10/First-Boot-6.png" alt="First Boot #6" width="300" height="248" /></a>

Static IP address will ask for IP address, netmask, default gateway, primary and secondary DNS servers.

Type the NTP server or leave blank if not used (default is blank):

<a href="/images/posts/2014/10/First-Boot-7.png"><img class="aligncenter wp-image-125" src="/images/posts/2014/10/First-Boot-7.png" alt="First Boot #7" width="300" height="248" /></a>

 

Configure how the UNetLab VM can access Internet (default is "direct connection", use arrow keys and "space" to select, then "enter" to confirm):

<a href="/images/posts/2014/10/First-Boot-8.png"><img class="aligncenter wp-image-126" src="/images/posts/2014/10/First-Boot-8.png" alt="First Boot #8" width="300" height="248" /></a>

Non default options will require proxy hostname and port (default is "proxy.example.com:8080") and username/password with authenticated proxy.

After the last confirm the UNetLab will reboot. When the VM is up and running, SSH can be used to manage the VM, not before.

Finally you should upgrade system and UNetLab to latest version:
<pre># apt-get update
# apt-get -y upgrade</pre>
