---
layout: post
published: true
title: "Adding F5 BIG-IP images"
abstract: ! "HowTo add F5 BIGIP to UNetLab software."
categories:
- HowTo
authors:
- andrea
tags:
- UNetLab
- Images
---

The F5 BIG-IP is available as a virtual appliance also.

## Supported F5 BIG-IP images

| UNetLab Image Name | Downloaded Filename | Version | vCPUs | vRAM |
|:--|:--|:-:|:-:|:-:|
| `bigip-11.6.0` | `BIGIP-11.6.0.0.0.401.ALL.qcow2.zip` | 11.6.0 | 2 | 2048 |
|----
{: rules="groups"}

## Importing F5 BIG-IP images

The following procedure refers to the most recent and supported image only. Older images should work too. Remember that UNetLab image names are strongly suggested for lab portability.

Install required packages:

~~~
apt-get -y install unzip
~~~

Upload the downloaded image to the UNetLab master node using for example [FileZilla](https://filezilla-project.org/ "FileZilla") or [WinSCP](http://winscp.net/ "WinSCP"). Then login as root using SSH protocol and uncompress it:

~~~
mkdir tmp
cd tmp
unzip ../BIGIP-11.6.0.0.0.401.ALL.qcow2.zip
~~~

Create the UNetLab image:

~~~
mkdir -p /opt/unetlab/addons/qemu/bigip-11.6.0
mv BIGIP-11.6.0.0.0.401.qcow2 hda.qcow2
mv BIGIP-11.6.0.0.0.401.DATASTOR.ALL.qcow2 hdb.qcow2
mv hda.qcow2 /opt/unetlab/addons/qemu/bigip-11.6.0
mv hdb.qcow2 /opt/unetlab/addons/qemu/bigip-11.6.0
~~~

Clean and fix permissions:

~~~
cd ..
rm -rf tmp
/opt/unetlab/wrappers/unl_wrapper -a fixpermissions
~~~

Default username is `root` with password `default`.

Making F5 work with telnet instead of vnc:

~~~
cd /opt/unetlab/addons/qemu/bigip-xxxx

modprobe nbd
/opt/qemu/bin/qemu-nbd -c /dev/nbd0 hda.qcow2
mount /dev/nbd0p1 /mnt/hgfs/
sed -e 's/ \(console=tty0 \)\([^c]\)/ \1 console=ttyS0 \2/' -e 's/\(^splashimage.*\)/#\1\nserial --unit=0 --speed=9600\nterminal --timeout=8 console serial\n/' -i  /mnt/hgfs/grub/grub.conf
umount /mnt/hgfs/
/opt/qemu/bin/qemu-nbd -d /dev/nbd0
rmmod nbd
~~~

## References

* [F5 BIG-IP Product Modules](https://f5.com/products/big-ip "F5 BIG-IP Product Modules")
