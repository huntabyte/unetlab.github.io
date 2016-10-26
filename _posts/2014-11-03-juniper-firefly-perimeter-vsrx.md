---
layout: post
published: true
title: "Adding Juniper Firefly Perimeter (vSRX)images"
abstract: ! "HowTo add Juniper vSRX to UNetLab software."
categories:
- HowTo
authors:
- andrea
tags:
- UNetLab
- Images
---
The Juniper Firefly Perimeter (vSRX) is available as a virtual router also.

## Supported Juniper vSRX images

| UNetLab Image Name | Downloaded Filename | Version | vCPUs | vRAM |
|:--|:--|:-:|:-:|:-:|
| `vsrx-12.1X44-D10.4-domestic` | `junos-vsrx-12.1X44-D10.4-domestic.ova` | 12.1X44-D10.4 | 2 | 1024 |
{: rules="groups"}

## Importing Juniper vSRX images

The following procedure refers to the most recent and supported image only. Older images should work too. Remember that UNetLab image names are strongly suggested for lab portability.

Upload the downloaded image to the UNetLab master node using for example [FileZilla](https://filezilla-project.org/ "FileZilla") or [WinSCP](http://winscp.net/ "WinSCP"). Then login as root using SSH protocol and uncompress it:

~~~
mkdir tmp
cd tmp
tar xf ../junos-vsrx-12.1X44-D10.4-domestic.ova
~~~

Then convert the disk to the qcow2 format:

~~~
/opt/qemu/bin/qemu-img convert -f vmdk -O qcow2 junos-vsrx-12.1X44-D10.4-domestic-disk1.vmdk hda.qcow2
~~~

Create the UNetLab image:

~~~
mkdir -p /opt/unetlab/addons/qemu/vsrx-12.1X44-D10.4-domestic
mv hda.qcow2 /opt/unetlab/addons/qemu/vsrx-12.1X44-D10.4-domestic
~~~

Clean and fix permissions:

~~~
cd ..
rm -rf tmp
/opt/unetlab/wrappers/unl_wrapper -a fixpermissions
~~~

Default username is `admin` without password.

## References

* [Juniper Firefly Perimeter](http://www.juniper.net/us/en/products-services/security/firefly-perimeter/ "Juniper Firefly Perimeter")
