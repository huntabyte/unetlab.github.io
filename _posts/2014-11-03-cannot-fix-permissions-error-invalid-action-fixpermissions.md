---
layout: post
status: publish
published: true
title: ! 'Cannot Fix Permissions (ERROR: invalid action "fixpermissions")'
author:
  display_name: Andrea Dainese
  login: admin
  email: andrea.dainese@gmail.com
  url: ''
author_login: admin
author_email: andrea.dainese@gmail.com
excerpt: ! "## Q: Cannot Fix Permissions (ERROR: invalid action \"fixpermissions\")\r\n"
wordpress_id: 234
wordpress_url: http://www.unetlab.com/?p=234
date: !binary |-
  MjAxNC0xMS0wMyAxNToxNDoxMSArMDEwMA==
date_gmt: !binary |-
  MjAxNC0xMS0wMyAxNDoxNDoxMSArMDEwMA==
categories:
- HowTo
tags:
- FAQ
comments:
- id: 8032
  author: AG
  author_email: abdelfattah.ghattas@gmail.com
  author_url: ''
  date: !binary |-
    MjAxNS0wMS0xOCAxMjoxMjowNyArMDEwMA==
  date_gmt: !binary |-
    MjAxNS0wMS0xOCAxMToxMjowNyArMDEwMA==
  content: ! "I am still facing the same issue, i am using 0.8.5.90, below are the
    logs\r\n\r\nroot@unl01:~# /opt/unetlab/wrappers/unl_wrapper -a
    fixpermissions\r\nERROR: invalid action \"fixpermissions\".\r\nERROR: Action is
    not valid."
- id: 8040
  author: Andrea Dainese
  author_email: andrea.dainese@gmail.com
  author_url: ''
  date: !binary |-
    MjAxNS0wMS0xOSAwODo1ODoyOSArMDEwMA==
  date_gmt: !binary |-
    MjAxNS0wMS0xOSAwNzo1ODoyOSArMDEwMA==
  content: ! 'You are not using the latest version.


    dpkg -l unetlab


    will show the installed version.'
- id: 8043
  author: AG
  author_email: abdelfattah.ghattas@gmail.com
  author_url: ''
  date: !binary |-
    MjAxNS0wMS0xOSAxMjoxNzoxMCArMDEwMA==
  date_gmt: !binary |-
    MjAxNS0wMS0xOSAxMToxNzoxMCArMDEwMA==
  content: ! "My mistake.\r\n\r\nI did not perform the command ( apt-get upgrade \"unetlab*\"),
    after executing it the version was updated\r\nand the fix permissions command
    worked.\r\n\r\nThanks a lot for your support."
---
## Q: Cannot Fix Permissions (ERROR: invalid action "fixpermissions")
<a id="more"></a><a id="more-234"></a>

Cannot fix permissions on a downloaded UNetLab installation with the following errors:
<pre>/opt/unetlab/wrappers/unl_wrapper -a fixpermissions
ERROR: invalid action "fixpermissions".
ERROR: Action is not valid.</pre>
## A: Just <a title="Upgrade UNetLab installation" href="http://www.unetlab.com/2014/11/upgrade-unetlab-installation/">upgrade</a> to latest.
The "fixpermissions" action has been introduced from <a title="UNetLab 0.8.5-36 Released" href="http://www.unetlab.com/2014/11/unetlab-0-8-5-36-released/">0.8.5-36 release</a>.
