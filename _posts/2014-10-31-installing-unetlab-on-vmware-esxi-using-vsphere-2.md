---
layout: post
status: publish
published: true
title: Installing UNetLab on VMware ESXi using vSphere vClient
author:
  display_name: Andrea Dainese
  login: admin
  email: andrea.dainese@gmail.com
  url: ''
author_login: admin
author_email: andrea.dainese@gmail.com
excerpt: ! "UNetLab is supported on VMware ESXi 5.0 or later. ESXi 5.5 version
   will be used through this guide.\r\n\r\n<a href=\"/images/posts/2014/10/01.jpg\">"
wordpress_id: 174
wordpress_url: http://www.unetlab.com/?p=174
date: !binary |-
  MjAxNC0xMC0zMSAxMzo0Nzo0NyArMDEwMA==
date_gmt: !binary |-
  MjAxNC0xMC0zMSAxMjo0Nzo0NyArMDEwMA==
categories:
- HowTo
tags:
- Installation
- ESXi
comments:
- id: 7644
  author: Mr.No_1
  author_email: Nspacial@gmail.com
  author_url: ''
  date: !binary |-
    MjAxNC0xMi0wNCAxMToyNzo0NCArMDEwMA==
  date_gmt: !binary |-
    MjAxNC0xMi0wNCAxMDoyNzo0NCArMDEwMA==
  content: ! "HI team ,\r\n\r\nI am facing some issues while importing OVA file in
    esxi5 i have attached screenshot Below Please check and let me know any work around
    \r\n\r\n[removed]"
- id: 7645
  author: admin
  author_email: andrea.dainese@gmail.com
  author_url: ''
  date: !binary |-
    MjAxNC0xMi0wNCAxMzoyODo0OCArMDEwMA==
  date_gmt: !binary |-
    MjAxNC0xMi0wNCAxMjoyODo0OCArMDEwMA==
  content: ! 'Embedded links are not allowed. Type the error.

    And mind that ESXi 5.5 is required.'
- id: 8081
  author: Petr
  author_email: jose.doe1972@gmail.com
  author_url: ''
  date: !binary |-
    MjAxNS0wMS0yMyAxNDoxODowNiArMDEwMA==
  date_gmt: !binary |-
    MjAxNS0wMS0yMyAxMzoxODowNiArMDEwMA==
  content: ! "Hello!\r\n\r\nIt is possible to install UnetLab package to 32bit system
    or not?"
- id: 8084
  author: Andrea Dainese
  author_email: andrea.dainese@gmail.com
  author_url: ''
  date: !binary |-
    MjAxNS0wMS0yMyAxNTo1ODoyNiArMDEwMA==
  date_gmt: !binary |-
    MjAxNS0wMS0yMyAxNDo1ODoyNiArMDEwMA==
  content: ! 'What do you mean?


    Run the UNetLab VM under a 32 bit vmware installation? Yes, if you have a new
    CPU model.


    Install the UNetLab deb package inside a 32 bit Linux? No, you cannot.'
- id: 9104
  author: HunSolo
  author_email: a.hunsolo@gmail.com
  author_url: ''
  date: !binary |-
    MjAxNS0wNC0yMCAxODoxNDozNCArMDIwMA==
  date_gmt: !binary |-
    MjAxNS0wNC0yMCAxNjoxNDozNCArMDIwMA==
  content: ! "Deployed on ESXi 5.1\r\nWhen VM starts it shows message:\r\n\r\nWarning:\r\n
    neither Intel VT-x or AMD-V found\r\n\r\nDo we need to do somthing on ESXi or
    we can just ignore it ?"
- id: 9274
  author: Mitch
  author_email: mitch@aol.com
  author_url: ''
  date: !binary |-
    MjAxNS0wNS0wNiAwNToyNjoyMyArMDIwMA==
  date_gmt: !binary |-
    MjAxNS0wNS0wNiAwMzoyNjoyMyArMDIwMA==
  content: ! "I have the same problem as HunSolo, but I am running it on ESXi 5.5.\r\n\r\nWarning:\r\nneither
    Intel VT-x or AMD-V found\r\n\r\nThis is running on an i7 with VT-x support enabled
    in the BIOS.\r\n\r\n~ # esxcfg-info |grep \"HV Support\"\r\n         |----HV Support............................................3\r\n
    \           |----World Command Line.................................grep HV Support\r\n\r\nAny
    hints?\r\n\r\nRegards,\r\nMitch"
- id: 9283
  author: Ruslan
  author_email: rusmanking@gmail.com
  author_url: ''
  date: !binary |-
    MjAxNS0wNS0wNiAxOToxNTo0MiArMDIwMA==
  date_gmt: !binary |-
    MjAxNS0wNS0wNiAxNzoxNTo0MiArMDIwMA==
  content: ! "try to add vhv.enable = \"true\" in the vmdk file of the virtual machine
    if you don't use vCenter.\r\nBut if you use vCenter try this: expand the \"CPU\"
    section and select \"Hardware Virtualization\" box to enable VHV."
---

UNetLab is supported on VMware ESXi 5.0 or later. ESXi 5.5 version  will be used through this guide.

<a href="/images/posts/2014/10/01.jpg"><a id="more"></a><a id="more-174"></a></a>

Download from <a title="VMware vSphere" href="http://www.vmware.com/products/vsphere/">VMware website</a> the VMware Workstation software and install it on your desktop, then rum it:

<img class="aligncenter wp-image-172" src="/images/posts/2014/10/01.jpg" alt="ESXi #1" width="478" height="257" />

From &ldquo;File&rdquo; menu, select &ldquo;Deploy OVF Template&rdquo;:

<a href="/images/posts/2014/10/10.jpg"><img class="aligncenter wp-image-173" src="/images/posts/2014/10/10.jpg" alt="ESXi #2" width="473" height="255" /></a>

Select the source of the OVA file you downloaded from your local machine.

<a href="/images/posts/2014/10/02.jpg"><img class="aligncenter wp-image-160" src="/images/posts/2014/10/02.jpg" alt="ESXi #3" width="471" height="253" /></a>

The next screen should be similar to the one below after the source has been selected.

<a href="/images/posts/2014/10/03.jpg"><img class="aligncenter wp-image-161" src="/images/posts/2014/10/03.jpg" alt="ESXi #4" width="472" height="254" /></a>

Click Accept the License/Disclaimer to continue:

<a href="/images/posts/2014/10/04.jpg"><img class="aligncenter wp-image-162" src="/images/posts/2014/10/04.jpg" alt="ESXi #5" width="468" height="252" /></a>

The next screen will display the name for the virtual machine. You can change this if you would like.

<a href="/images/posts/2014/10/05.jpg"><img class="aligncenter wp-image-163" src="/images/posts/2014/10/05.jpg" alt="ESXi #6" width="470" height="253" /></a>

Now you need to select the datastore, in my case I have only one datastore so it is selected by default:

<a href="/images/posts/2014/10/06.jpg"><img class="aligncenter wp-image-164" src="/images/posts/2014/10/06.jpg" alt="ESXi #7" width="472" height="254" /></a>

The next screen will be a summary screen so just click finish and then VMWare will start importing the OVA file.

<a href="/images/posts/2014/10/07.jpg"><img class="aligncenter wp-image-165" src="/images/posts/2014/10/07.jpg" alt="ESXi #8" width="475" height="256" /></a>

A bar will show the percentage of the progress:

<a href="/images/posts/2014/10/08.jpg"><img class="aligncenter wp-image-166" src="/images/posts/2014/10/08.jpg" alt="ESXi #9" width="476" height="256" /></a>

The deployed is terminated when a dialog will confirm it:

<a href="/images/posts/2014/10/09.jpg"><img class="aligncenter wp-image-167 size-full" src="/images/posts/2014/10/09.jpg" alt="ESXi #10" width="396" height="133" /></a>

It may take a few minutes to import depending on the connection speed between your vSphere client and the ESXi server. Finally start your VM and proceed with your first UNetLab boot configuration.
