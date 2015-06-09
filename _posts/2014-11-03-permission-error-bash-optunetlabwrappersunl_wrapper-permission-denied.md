---
layout: post
published: true
title: "How to fix: Permission error (-bash: /opt/unetlab/wrappers/unl_wrapper:
  Permission denied)"
excerpt:
  "HowTo solve permission deny error on unl_wrapper."
authors:
- andrea
tags:
- UNetLab
- QA
---
## Q: Cannot Fix Permissions (-bash: /opt/unetlab/wrappers/unl_wrapper: Permission denied)
<a id="more"></a><a id="more-249"></a>

Cannot fix permissions on a downloaded UNetLab installation with the following errors:
~~~
-bash: /opt/unetlab/wrappers/unl_wrapper: Permission denied
~~~
## A: Just <a title="Upgrade UNetLab installation" href="http://www.unetlab.com/2014/11/upgrade-unetlab-installation/">upgrade</a> to latest.
Error has been fixed from <a title="UNetLab 0.8.5-38 Released" href="http://www.unetlab.com/2014/11/unetlab-0-8-5-38-released/">0.8.5-38 release</a>. After upgrade, plese run again the "fixpermissions" action:
~~~
# /opt/unetlab/wrappers/unl_wrapper -a fixpermissions
~~~
