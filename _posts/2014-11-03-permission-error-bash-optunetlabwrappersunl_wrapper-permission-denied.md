---
layout: post
published: true
title: "How to fix: Permission error (-bash: /opt/unetlab/wrappers/unl_wrapper:
  Permission denied)"
abstract: ! "HowTo solve permission deny error on unl_wrapper."
categories:
- FAQ
authors:
- andrea
tags:
- UNetLab
- FAQ
---
On a very early release, `unl_wrapper` perimssins was wrong:

~~~
-bash: /opt/unetlab/wrappers/unl_wrapper: Permission denied
~~~

Just [upgrade](/2014/11/upgrade-unetlab-installation/ "Upgrade UNetLab installation") to latest version.
Error has been fixed from <a title="UNetLab 0.8.5-38 Released" href="http://www.unetlab.com/2014/11/unetlab-0-8-5-38-released/">0.8.5-38 release</a>. After upgrade, plese run again the "fixpermissions" action:
~~~
# /opt/unetlab/wrappers/unl_wrapper -a fixpermissions
~~~
