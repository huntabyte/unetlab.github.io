---
layout: post
published: true
title: "Adding Alcatel 7750 Service Router images."
excerpt:
  "HowTo add Alcatel 7750 Service Router images to UNetLab software."
section: "HowTo"
authors:
- andrea
tags:
- UNetLab
- HowTo
- Images
---
The Alcatel 7750 Service Router (SR) is available as a virtual router also.

## Supported Alcatel 7750 Service Router images

| UNetLab Image Name | Downloaded Filename | Version | vCPUs | vRAM |
|:--|:--|:-:|:-:|:-:|
| `timos-12.0.R4` | `TiMOS-SR-12.0.R4-vm.zip` | B-12.0.R4 | 2 | 2048 |
|----
| `timos-12.0.R6` | `TiMOS-SR-12.0.R6-vm.zip` | B-12.0.R6 | 2 | 2048 |
|----
{: rules="groups"}

## Importing Alcatel 7750 Service Router images

The following procedure refers to the most recent and supported image only. Older images should work too. Remember that UNetLab image names are strongly suggested for lab portability.

Install required packages:

~~~
apt-get -y install unzip
~~~

Upload the downloaded image to the UNetLab master node using for example [FileZilla](https://filezilla-project.org/ "FileZilla") or [WinSCP](http://winscp.net/ "WinSCP"). Then login as root using SSH protocol and uncompress it:

~~~
mkdir tmp
cd tmp
unzip ../TiMOS-SR-12.0.R6-vm.zip
~~~

Create the UNetLab image:

~~~
mkdir -p /opt/unetlab/addons/qemu/timos-12.0.R6
mv vm/7xxx-i386/sros-vm.qcow2 /opt/unetlab/addons/qemu/timos-12.0.R6/hda.qcow2
~~~

Clean and fix permissions:

~~~
cd ..
rm -rf tmp
/opt/unetlab/wrappers/unl_wrapper -a fixpermissions
~~~

Default username is `admin` with password `admin`.

## References

* [Alcatel 7750 Service Router](http://www.alcatel-lucent.com/products/7750-service-router "Alcatel 7750 Service Router")
