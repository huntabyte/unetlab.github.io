---
layout: post
published: true
title: "How to configure UNetLab during first boot"
excerpt:
  "HowTo configure proxy, DNS, IP and other settings on UNetLab software."
authors:
- andrea
tags:
- UNetLab
- HowTo
---
The first boot requires additional configuration.
Start the UNetLab VM:

![Booting UNetLab VM](/images/posts/2014/10/firstboot-1.png "Booting UNetLab VM")

After a while the console login prompt will be available:

![UNetLab Console](/images/posts/2014/10/firstboot-2.png "UNetLab Console")

By default the UNetLab VM will look for an IP address using DHCP protocol. Login as `root` with default password `unl` and start the configuration.
Insert the `root` password twice:

![UNetLab root password](/images/posts/2014/10/firstboot-3.png "UNetLab root password")

Type the hostname (default is `unl01`):

![UNetLab hostname](/images/posts/2014/10/firstboot-4.png "UNetLab hostname")

Type the domain name (default is `example.com`):

![UNetLab domain](/images/posts/2014/10/firstboot-5.png "UNetLab domain")

Mind that hostname and domain name are critical for IOU/IOL license.

Select if management IP address should be static or configured by DHCP (default is `dhcp`, use arrow keys and `space` to select, then `enter` to confirm):

![UNetLab IP address configuration](/images/posts/2014/10/firstboot-6.png "UNetLab IP address configuration")

Static IP address will ask for IP address, netmask, default gateway, primary and secondary DNS servers.

Type the NTP server or leave blank if not used (default is blank):

![UNetLab NTP configuration](/images/posts/2014/10/firstboot-7.png "UNetLab NTP configuration")

Configure how the UNetLab VM can access Internet (default is `direct connection`, use arrow keys and `space` to select, then `enter` to confirm):

![UNetLab proxy configuration](/images/posts/2014/10/firstboot-8.png "UNetLab proxy configuration")

Non default options will require proxy hostname and port (default is `proxy.example.com:8080`) and username/password with authenticated proxy.

After the last confirm the UNetLab will reboot. When the VM is up and running, SSH can be used to manage the VM, not before.

Finally you should upgrade system and UNetLab to latest version:

~~~
apt-get update
apt-get -y upgrade
~~~
