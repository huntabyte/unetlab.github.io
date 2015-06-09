---
layout: post
published: true
title: "Adding Palo Alto VM-100 images"
excerpt:
  "HowTo add Palo Alto VM-100 to UNetLab software."
authors:
- andrea
tags:
- UNetLab
- Images
---

The Palo Alto firewall is available as a virtual appliance.

## Supported Palo Alto VM-100 images

| UNetLab Image Name | Downloaded Filename | Version | vCPUs | vRAM |
|:--|:--|:-:|:-:|:-:|
| `paloalto-6.1.0` | `PA-VM-ESX-6.1.0.ova` | 11.6.0 | 2 | 4096 |
|----
{: rules="groups"}

## Importing Palo Alto VM-100 images

The following procedure refers to the most recent and supported image only. Older images should work too. Remember that UNetLab image names are strongly suggested for lab portability.

Upload the downloaded image to the UNetLab master node using for example [FileZilla](https://filezilla-project.org/ "FileZilla") or [WinSCP](http://winscp.net/ "WinSCP"). Then login as root using SSH protocol and uncompress it:

~~~
mkdir tmp
cd tmp
tar ../PA-VM-ESX-6.1.0.ova
~~~

Then convert the disk to the qcow2 format:

~~~
/opt/qemu/bin/qemu-img convert -f vmdk -O qcow2 PA-VM-ESX-6.1.0-disk1.vmdk virtioa.qcow2
~~~

Create the UNetLab image:

~~~
mkdir -p /opt/unetlab/addons/qemu/paloalto-6.1.0
mv virtioa.qcow2 /opt/unetlab/addons/qemu/paloalto-6.1.0
~~~

Clean and fix permissions:

~~~
cd ..
rm -rf tmp
/opt/unetlab/wrappers/unl_wrapper -a fixpermissions
~~~

Default username is `admin` with password `admin`.

## References

* [Palo Alto Virtualized Firewalls](https://www.paloaltonetworks.com/products/platforms/virtualized-firewalls/vm-series/overview.html "Palo Alto Virtualized Firewalls")
