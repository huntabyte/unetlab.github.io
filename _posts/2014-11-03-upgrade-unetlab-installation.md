---
layout: post
status: publish
published: true
title: Upgrade UNetLab installation
author:
  display_name: Andrea Dainese
  login: admin
  email: andrea.dainese@gmail.com
  url: ''
author_login: admin
author_email: andrea.dainese@gmail.com
wordpress_id: 130
wordpress_url: http://www.unetlab.com/?p=130
date: !binary |-
  MjAxNC0xMS0wMyAxMTowMDozOSArMDEwMA==
date_gmt: !binary |-
  MjAxNC0xMS0wMyAxMDowMDozOSArMDEwMA==
categories:
- HowTo
tags:
- Installation
comments:
- id: 7429
  author: imniceman
  author_email: abc@abc.com
  author_url: ''
  date: !binary |-
    MjAxNC0xMS0xMiAwNzowMzowNCArMDEwMA==
  date_gmt: !binary |-
    MjAxNC0xMS0xMiAwNjowMzowNCArMDEwMA==
  content: let me try!
- id: 8324
  author: J
  author_email: j.jackson20@yahoo.com
  author_url: ''
  date: !binary |-
    MjAxNS0wMi0wNSAyMzo0ODoxNyArMDEwMA==
  date_gmt: !binary |-
    MjAxNS0wMi0wNSAyMjo0ODoxNyArMDEwMA==
  content: ! "I tried to up date and I got this error.\r\n\r\nroot@unl01:~# apt-get
    update \r\nErr http://security.ubuntu.com trusty-security InRelease\r\n
    \ \r\nErr http://public.routereflector.com trusty InRelease\r\n  \r\nErr
    http://us.archive.ubuntu.com trusty InRelease\r\n  \r\nErr http://us.archive.ubuntu.com
    trusty-updates InRelease\r\n  \r\nErr http://security.ubuntu.com trusty-security
    Release.gpg\r\n  Could not resolve 'security.ubuntu.com'\r\nErr http://public.routereflector.com
    trusty Release.gpg\r\n  Could not resolve 'public.routereflector.com'\r\nErr http://us.archive.ubuntu.com
    trusty Release.gpg\r\n  Could not resolve 'us.archive.ubuntu.com'\r\nErr http://us.archive.ubuntu.com
    trusty-updates Release.gpg\r\n  Could not resolve 'us.archive.ubuntu.com'"
- id: 8328
  author: Andrea Dainese
  author_email: andrea.dainese@gmail.com
  author_url: ''
  date: !binary |-
    MjAxNS0wMi0wNiAwODowNTowNCArMDEwMA==
  date_gmt: !binary |-
    MjAxNS0wMi0wNiAwNzowNTowNCArMDEwMA==
  content: Would you connect your VM to Internet?
- id: 8898
  author: Nusrat Shah
  author_email: nusratshah@outlook.com
  author_url: ''
  date: !binary |-
    MjAxNS0wMy0yNyAxMzowODo0MCArMDEwMA==
  date_gmt: !binary |-
    MjAxNS0wMy0yNyAxMjowODo0MCArMDEwMA==
  content: How can we check the current version of UnetLabs?
- id: 8946
  author: jeetendra
  author_email: jitubagale@gmail.com
  author_url: ''
  date: !binary |-
    MjAxNS0wNC0wMiAyMjowNzo0MiArMDIwMA==
  date_gmt: !binary |-
    MjAxNS0wNC0wMiAyMDowNzo0MiArMDIwMA==
  content: dpkg -l unetlab
---

UNetLab is based on Ubuntu 14.04 Linux. Weekly you should check for updates and upgrade your system:
~~~
# apt-get update
# apt-get -y upgrade
~~~
If it's required to update UNetLab only, just restrict the upgrade phase:
~~~
# apt-get update
# apt-get -o Dpkg::Options::="--force-overwrite" install unetlab
~~~
UNetLab VM must be able to access Internet directly or through a proxy.
