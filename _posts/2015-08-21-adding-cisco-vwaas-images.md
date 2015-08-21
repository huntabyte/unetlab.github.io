---
layout: post
published: false
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
/opt/qemu/bin/qemu-img convert -f vmdk -O qcow2 Cisco_vWAAS-200-5.5.3-disk2.vmdk virtiob.qcow2
/opt/qemu/bin/qemu-img convert -f vmdk -O qcow2 Cisco_vWAAS-200-5.5.3-disk3.vmdk virtioc.qcow2
~~~

Now create the UNetLab image:

~~~
mkdir -p /opt/unetlab/addons/qemu/vwaas-200-5.5.3
mv virtioa.qcow2 /opt/unetlab/addons/qemu/vwaas-200-5.5.3/virtioa.qcow2
mv virtiob.qcow2 /opt/unetlab/addons/qemu/vwaas-200-5.5.3/virtiob.qcow2
mv virtioc.qcow2 /opt/unetlab/addons/qemu/vwaas-200-5.5.3/virtioc.qcow2
~~~

Clean and fix permissions:

~~~
cd ..
rm -rf tmp
/opt/unetlab/wrappers/unl_wrapper -a fixpermissions
~~~

## References

* [NetScaler Application Delivery Controller](http://www.citrix.com/products/netscaler-application-delivery-controller/overview.html "NetScaler Application Delivery Controller")

