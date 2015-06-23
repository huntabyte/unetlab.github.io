---
layout: post
published: true
title: "Adding Citrix Netscaler images"
excerpt:
  "HowTo add Citrix Netscaler to UNetLab software."
section: "HowTo"
authors:
- andrea
tags:
- UNetLab
- Images
---
The Citrix Netscaler is available as a virtual appliance also.

## Supported Cisco Netscaler images

| UNetLab Image Name | Downloaded Filename | Version | vCPUs | vRAM |
|:--|:--|:-:|:-:|:-:|
| `nsvpx-10.5.54.9008` | `NSVPX-KVM-10.5-54.9008.e_nc.tgz` | 10.5.54.9008 | 2 | 2048 |
|----
{: rules="groups"}

## Importing Citrix Netscaler images

The following procedure refers to the most recent and supported image only. Older images should work too. Remember that UNetLab image names are strongly suggested for lab portability.

Upload the downloaded image to the UNetLab master node using for example [FileZilla](https://filezilla-project.org/ "FileZilla") or [WinSCP](http://winscp.net/ "WinSCP"). Then login as root using SSH protocol and uncompress it:

~~~
mkdir tmp
cd tmp
tar -xzvf ../NSVPX-KVM-10.5-54.9008.e_nc.tgz
~~~

Convert the vmdk file to a QEMU compatible format:

~~~
/opt/qemu/bin/qemu-img convert -f raw -O qcow2 NSVPX-KVM-10.5-54.9008.e_nc.raw virtioa.qcow2
~~~

Now create the UNetLab image:

~~~
mkdir -p /opt/unetlab/addons/qemu/nsvpx-10.5.54.9008
mv megasasa.qcow2 /opt/unetlab/addons/qemu/nsvpx-10.5.54.9008/virtioa.qcow2
~~~

Clean and fix permissions:

~~~
cd ..
rm -rf tmp
/opt/unetlab/wrappers/unl_wrapper -a fixpermissions
~~~

## References

* [Citrix Netscaler in UNetLab by Michal Adamopulos](http://www.ccie.cz/?p=56 "Citrix Netscaler in UNetLab by Michal Adamopulos")
* [NetScaler Application Delivery Controller](http://www.citrix.com/products/netscaler-application-delivery-controller/overview.html "NetScaler Application Delivery Controller")

