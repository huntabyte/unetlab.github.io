---
layout: post
published: true
title: "Adding Cisco ASAv images"
excerpt:
  "HowTo add Cisco ASAv to UNetLab software."
section: "HowTo"
authors:
- andrea
tags:
- UNetLab
- Images
---
The Cisco Adaptive Security Appliance (ASAv) is available as a virtual appliance also.

## Supported Cisco ASAv images

| UNetLab Image Name | Downloaded Filename | Version | vCPUs | vRAM |
|:--|:--|:-:|:-:|:-:|
| `asav-941-200` | `asav941-200.qcow2` | 9.4.1.200 | 1 | 2048 |
|----
{: rules="groups"}

## Importing Cisco ASAv images

The following procedure refers to the most recent and supported image only. Older images should work too. Remember that UNetLab image names are strongly suggested for lab portability.

Upload the downloaded image to the UNetLab master node using for example [FileZilla](https://filezilla-project.org/ "FileZilla") or [WinSCP](http://winscp.net/ "WinSCP"). Then login as root using SSH protocol and uncompress it:

Now create the UNetLab image:

~~~
mkdir -p /opt/unetlab/addons/qemu/asav-941-200
mv asav941-200.qcow2 /opt/unetlab/addons/qemu/asav-941-200/virtioa.qcow2
~~~

Run following commands:

~~~
cd /opt/unetlab/addons/qemu/asav-941-200/
modprobe nbd
/opt/qemu/bin/qemu-nbd -c /dev/nbd0 virtioa.qcow2
mount /dev/nbd0p2 /mnt/hgfs/
touch /mnt/hgfs/use_ttyS0
umount /mnt/hgfs/
/opt/qemu/bin/qemu-nbd -d /dev/nbd0
~~~

Clean and fix permissions:

~~~
/opt/unetlab/wrappers/unl_wrapper -a fixpermissions
~~~

Run ASAv with telnet access in a LAB

## References

* [Cisco Adaptive Security Virtual Appliance (ASAv)](http://www.cisco.com/c/en/us/products/security/virtual-adaptive-security-appliance-firewall/index.html "Cisco Adaptive Security Virtual Appliance")
