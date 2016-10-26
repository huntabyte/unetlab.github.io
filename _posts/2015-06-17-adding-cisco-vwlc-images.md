---
layout: post
published: true
title: "Adding Cisco vWLC images"
abstract: ! "HowTo add Cisco vWLC to UNetLab software."
categories:
- HowTo
authors:
- andrea
tags:
- UNetLab
- Images
---
The Cisco virtual Wireless LAN Controller (vWLC) is available as a virtual appliance also.

## Supported Cisco vWLC images

| UNetLab Image Name | Downloaded Filename | Version | vCPUs | vRAM |
|:--|:--|:-:|:-:|:-:|
| `vwlc-8.1.102.0` | `AIR-CTVM-K9-8-1-102-0.ova` | 8.1.102.0 | 1 | 256 |
|----
{: rules="groups"}

## Importing Cisco vWLC images

The following procedure refers to the most recent and supported image only. Older images should work too. Remember that UNetLab image names are strongly suggested for lab portability.

Upload the downloaded image to the UNetLab master node using for example [FileZilla](https://filezilla-project.org/ "FileZilla") or [WinSCP](http://winscp.net/ "WinSCP"). Then login as root using SSH protocol and uncompress it:

~~~
mkdir tmp
cd tmp
tar -xvf ../AIR-CTVM-K9-8-1-102-0.ova
~~~

Convert the vmdk file to a QEMU compatible format:

~~~
/opt/qemu/bin/qemu-img convert -f vmdk -O qcow2 AS_CTVM_8_1_102_0.vmdk megasasa.qcow2
~~~

Now create the UNetLab image:

~~~
mkdir -p /opt/unetlab/addons/qemu/vwlc-8.1.102.0
mv megasasa.qcow2 /opt/unetlab/addons/qemu/vwlc-8.1.102.0
mv AS_CTVM_8_1_102_0.iso /opt/unetlab/addons/qemu/vwlc-8.1.102.0/cdrom.iso 
~~~

Clean and fix permissions:

~~~
cd ..
rm -rf tmp
/opt/unetlab/wrappers/unl_wrapper -a fixpermissions
~~~

## References

* [Cisco vWLC in UNetLab by Michal Adamopulos](https://www.linkedin.com/pulse/cisco-vwlc-unetlab-michal-adamopulos "Cisco vWLC in UNetLab by Michal Adamopulos")
* [Cisco Virtual Wireless Controller](http://www.cisco.com/c/en/us/products/wireless/virtual-wireless-controller/index.html "Cisco Virtual Wireless Controller")
