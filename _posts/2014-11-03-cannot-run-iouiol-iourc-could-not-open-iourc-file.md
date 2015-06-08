---
layout: post
status: publish
published: true
title: ! 'Cannot run IOU/IOL (IOURC: Could not open iourc file)'
author:
  display_name: Andrea Dainese
  login: admin
  email: andrea.dainese@gmail.com
  url: ''
author_login: admin
author_email: andrea.dainese@gmail.com
excerpt: ! "## Q: Cannot run IOU/IOL (IOURC: Could not open iourc file)\r\n"
wordpress_id: 251
wordpress_url: http://www.unetlab.com/?p=251
date: !binary |-
  MjAxNC0xMS0wMyAxNTo0NzoyNyArMDEwMA==
date_gmt: !binary |-
  MjAxNC0xMS0wMyAxNDo0NzoyNyArMDEwMA==
categories:
- HowTo
tags:
- FAQ
comments: []
---
## Q: Cannot run IOU/IOL (IOURC: Could not open iourc file)
<a id="more"></a><a id="more-251"></a>

Cannot run IOU/IOL test with the following error:
~~~
IOURC: Could not open iourc file
~~~
## A: You need to create the license.
The IOU/IOL file is under:
~~~
# cat /opt/unetlab/addons/iol/bin/iourc
[license]
unl01 = 0123456789abcdef;
~~~

You need a valid license. Only Cisco guys and authorized partners can use IOU/IOL and obtain a valid license.
