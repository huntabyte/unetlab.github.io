---
layout: post
status: publish
published: true
title: UNetLab Requirements
author:
  display_name: Andrea Dainese
  login: admin
  email: andrea.dainese@gmail.com
  url: ''
author_login: admin
author_email: andrea.dainese@gmail.com
excerpt: ! "UNetLab is currently released as an OVA file. An OVA is a Open Virtual
  Appliance format. It's an archive (TAR) which holds disks and configuration file
  (OVF or Open Virtualization File) for the virtual machine. UNetLab can be also directly
  installed on the physical hardware, without any virtualization. Because UNetLab
  runs many hypervisor, it's strongly recommended a physical server dedicated for
  UNetLab, without any virtualization software. Mind that nested virtualization is
  not a good thing and can lead to poor performance.\r\n\r\n"
wordpress_id: 69
wordpress_url: http://www.unetlab.com/?p=69
date: !binary |-
  MjAxNC0xMC0yOCAxMjoxNDo0MCArMDEwMA==
date_gmt: !binary |-
  MjAxNC0xMC0yOCAxMToxNDo0MCArMDEwMA==
categories:
- HowTo
tags:
- Requirements
comments:
- id: 7357
  author: Switch Guru
  author_email: switcguru@outlook.com
  author_url: ''
  date: !binary |-
    MjAxNC0xMC0yOCAxMzo0NzozNiArMDEwMA==
  date_gmt: !binary |-
    MjAxNC0xMC0yOCAxMjo0NzozNiArMDEwMA==
  content: Wow this is awesome, what about the download link
- id: 7358
  author: admin
  author_email: andrea.dainese@gmail.com
  author_url: ''
  date: !binary |-
    MjAxNC0xMC0yOCAxMzo1OTo0OCArMDEwMA==
  date_gmt: !binary |-
    MjAxNC0xMC0yOCAxMjo1OTo0OCArMDEwMA==
  content: When doc will be ready. Without it the download link is useless ;)
- id: 7361
  author: Wei Tsao
  author_email: 1386studio@gmail.com
  author_url: http://www.enjoy567.cn
  date: !binary |-
    MjAxNC0xMC0zMCAwMjoyMjo1NSArMDEwMA==
  date_gmt: !binary |-
    MjAxNC0xMC0zMCAwMToyMjo1NSArMDEwMA==
  content: ! "It's great! This project is very helpful to my study. Thanks.\r\n谢谢"
- id: 7365
  author: Paul
  author_email: paul@chandlerweb.co.uk
  author_url: ''
  date: !binary |-
    MjAxNC0xMS0wMSAxMDozMjo1MyArMDEwMA==
  date_gmt: !binary |-
    MjAxNC0xMS0wMSAwOTozMjo1MyArMDEwMA==
  content: ! '"UNetLab is currently released..." is a bit misleading isn''t it? Unless
    I''ve missed something, it''s not currently released?'
- id: 7366
  author: admin
  author_email: andrea.dainese@gmail.com
  author_url: ''
  date: !binary |-
    MjAxNC0xMS0wMSAxMTowMTo0MCArMDEwMA==
  date_gmt: !binary |-
    MjAxNC0xMS0wMSAxMDowMTo0MCArMDEwMA==
  content: Is currently released to people who are helping me writing docs. In few
    days it will be available to others.
- id: 7375
  author: Paul
  author_email: paul@chandlerweb.co.uk
  author_url: ''
  date: !binary |-
    MjAxNC0xMS0wMyAyMjo1ODo0OSArMDEwMA==
  date_gmt: !binary |-
    MjAxNC0xMS0wMyAyMTo1ODo0OSArMDEwMA==
  content: Ah cool. Great work!
- id: 9234
  author: Adam
  author_email: msw@live.ca
  author_url: ''
  date: !binary |-
    MjAxNS0wNS0wMyAwMzoyNTowNSArMDIwMA==
  date_gmt: !binary |-
    MjAxNS0wNS0wMyAwMToyNTowNSArMDIwMA==
  content: ! "Thank you so much for this fantastic work !!\r\nI am running Unetlab
    on HP server DL360 G6 2x Xeon CPU x5550 that is 8 CPUs x 2.66GHz. \r\nThe Unetlab
    gives me *** WARNING: neither Intel VT-x or AMD-V found.\r\nI checked the BIOS
    menu, VT-d and virtualization were enabled.\r\nAny idea why I get the error?\r\n\r\nThanks
    again!"
---
UNetLab is currently released as an OVA file. An OVA is a Open Virtual Appliance format. It's an archive (TAR) which holds disks and configuration file (OVF or Open Virtualization File) for the virtual machine. UNetLab can be also directly installed on the physical hardware, without any virtualization. Because UNetLab runs many hypervisor, it's strongly recommended a physical server dedicated for UNetLab, without any virtualization software. Mind that nested virtualization is not a good thing and can lead to poor performance.

<a id="more"></a><a id="more-69"></a>

UNetLab requires:

* Intel VT-x/EPT or AMD-V/RVI capable processor.
* One of the following:

* Ubuntu 14.04 (suggested with any processors).
* VMware ESXi 5.1 or later (version 5.5 is suggested, Intel i7 processors are mandatory).
* VMware Workstation 9 or later (version 10 is suggested, Intel i7 processors are mandatory).
* VMware Fusion 5 or later (version 6 is suggested, Intel i7 processors are mandatory).
* VMware Player 5 or later (version 6 is suggested, Intel i7 processors are mandatory).

Required CPU and RAM depend on how many nodes are needed to run. 1 CPU and 2GB of RAM can be enough for IOU/IOL and Dynamips only, but will be insufficient for topology with CSR1000V routers.

In other words the UNetLab requirements are the same for nested ESXi virtualization or Cisco VIRL/CML. UNetLab can still works without Intel VT processors and can run installed within other hypervisors also But:

* 64 bits (x86_64) appliances won't work.
* Poor performances should be expected with 32 bits (i386) appliances.

## References

* <a title="Cisco Modeling Labs" href="http://www.cisco.com/c/en/us/products/cloud-systems-management/modeling-labs/index.html">Cisco Modeling Labs</a>
* <a title="Support for running ESXi/ESX as a nested virtualization solution (2009916)" href="http://kb.vmware.com/selfservice/microsites/search.do?language=en_US&amp;cmd=displayKC&amp;externalId=2009916">Support for running ESXi/ESX as a nested virtualization solution (2009916)</a>
* <a title="Running Nested VMs" href="https://communities.vmware.com/docs/DOC-8970">Running Nested VMs</a>

