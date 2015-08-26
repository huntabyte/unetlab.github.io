---
layout: post
published: true
title: "Adding Cisco vWAAS images"
excerpt:
  "HowTo add Cisco vWAAS to UNetLab software."
section: "HowTo"
authors:
- andrea
tags:
- UNetLab
- Images
---
The Cisco WAAS is available as a virtual appliance also.

## Supported Cisco vWAAS images

| UNetLab Image Name | Downloaded Filename | Version | vCPUs | vRAM |
|:--|:--|:-:|:-:|:-:|
| `vwaas-200-5.5.3` | `Cisco-vWAAS-200-5.5.3-b59.ova` | 5.5.3 | 1 | 2048 |
|----
{: rules="groups"}

Cisco vWAAS does not run properly under QEMU/KVM, virtual disks are not recognized properly. Anyway vWAAS works fine as application-accelerator. Without virtual disks, vWAAS cannot cache files, but still accelerates traffic. vCM is not supported because it needs local disks.

## Importing Cisco vWAAS images

The following procedure refers to the most recent and supported image only. Older images should work too. Remember that UNetLab image names are strongly suggested for lab portability.

Upload the downloaded image to the UNetLab master node using for example [FileZilla](https://filezilla-project.org/ "FileZilla") or [WinSCP](http://winscp.net/ "WinSCP"). Then login as root using SSH protocol and uncompress it:

~~~
mkdir tmp
cd tmp
tar -xvf ../Cisco-vWAAS-200-5.5.3-b59.ova
~~~

Convert the vmdk files to a QEMU compatible format:

~~~
/opt/qemu/bin/qemu-img convert -f vmdk -O qcow2 Cisco_vWAAS-200-5.5.3-disk1.vmdk virtioa.qcow2
~~~

Now create the UNetLab image:

~~~
mkdir -p /opt/unetlab/addons/qemu/vwaas-200-5.5.3
mv virtioa.qcow2 /opt/unetlab/addons/qemu/vwaas-200-5.5.3/virtioa.qcow2
~~~

Clean and fix permissions:

~~~
cd ..
rm -rf tmp
/opt/unetlab/wrappers/unl_wrapper -a fixpermissions
~~~

## References

* [Cisco Virtual Wide Area Application Services (vWAAS)](http://http://www.cisco.com/c/en/us/products/routers/virtual-wide-area-application-services-vwaas/index.html "Cisco Virtual Wide Area Application Services (vWAAS)")
