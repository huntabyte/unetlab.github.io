---
layout: post
status: publish
published: true
title: ! 'Permission error (-bash: /opt/unetlab/wrappers/unl_wrapper:
  Permission denied)'
author:
  display_name: Andrea Dainese
  login: admin
  email: andrea.dainese@gmail.com
  url: ''
author_login: admin
author_email: andrea.dainese@gmail.com
excerpt: ! "## Q: Cannot Fix Permissions (-bash: /opt/unetlab/wrappers/unl_wrapper:
  Permission denied)\r\n"
wordpress_id: 249
wordpress_url: http://www.unetlab.com/?p=249
date: !binary |-
  MjAxNC0xMS0wMyAxNTo0NDo0NSArMDEwMA==
date_gmt: !binary |-
  MjAxNC0xMS0wMyAxNDo0NDo0NSArMDEwMA==
categories:
- HowTo
tags:
- FAQ
comments: []
---
## Q: Cannot Fix Permissions (-bash: /opt/unetlab/wrappers/unl_wrapper: Permission denied)
<a id="more"></a><a id="more-249"></a>

Cannot fix permissions on a downloaded UNetLab installation with the following errors:
<pre>-bash: /opt/unetlab/wrappers/unl_wrapper: Permission denied</pre>
## A: Just <a title="Upgrade UNetLab installation" href="http://www.unetlab.com/2014/11/upgrade-unetlab-installation/">upgrade</a> to latest.
Error has been fixed from <a title="UNetLab 0.8.5-38 Released" href="http://www.unetlab.com/2014/11/unetlab-0-8-5-38-released/">0.8.5-38 release</a>. After upgrade, plese run again the "fixpermissions" action:
<pre># /opt/unetlab/wrappers/unl_wrapper -a fixpermissions</pre>
