---
layout: post
published: true
title: "Adding Cisco vIOS images (from All-in-One Virtual Machine)"
excerpt:
  "HowTo add Cisco vIOS to UNetLab software."
authors:
- andrea
tags:
- UNetLab
- Images
---
The Cisco vIOS router is released for OnePk developers within the All-in-One Virtual Machine.

## Supported Cisco vIOS images

| UNetLab Image Name | Downloaded Filename | Version | vCPUs | vRAM |
|:--|:--|:-:|:-:|:-:|
| `vios-adventerprisek9-m-15.4-1.2.0-173` | `all-in-one-VM-1.2.0-173.ova` | VIOS-ADVENTERPRISEK9-M 15.4(1.24)T0.9 | 1 | 256 |
|----
| `vios-adventerprisek9-m-15.4-1.3.0-181` | `all-in-one-VM-1.3.0-181.ova` | VIOS-ADVENTERPRISEK9-M 15.4(20140730:011659) | 1 | 384 |
|----
{: rules="groups"}

## Importing Cisco vIOS images

The following procedure refers to the most recent and supported image only. Older images should work too. Remember that UNetLab image names are strongly suggested for lab portability.

Upload the downloaded image to the UNetLab master node using for example [FileZilla](https://filezilla-project.org/ "FileZilla") or [WinSCP](http://winscp.net/ "WinSCP"). Then login as root using SSH protocol and uncompress it:

~~~
mkdir tmp
cd tmp
tar xf ../all-in-one-VM-1.3.0.181.ova
~~~

The vIOS images is stored inside the vmdk file. The virtual disk file can be mounted in &ldquo;read-only&rdquo; mode:

~~~
modprobe nbd max_part=32
/opt/qemu/bin/qemu-nbd -r -c /dev/nbd0 all-in-one-VM-1.3.0.181-disk1.vmdk
~~~

The vmdk contains the following partitions:

~~~
file -s /dev/nbd0p*
/dev/nbd0p1: Linux rev 1.0 ext4 filesystem data, UUID=d650adb8-b5b9-4889-9d88-94dab7d263d9 (extents) (large files) (huge files)
/dev/nbd0p2: x86 boot sector
/dev/nbd0p5: Linux/i386 swap file (new style), version 1 (4K pages), size 523519 pages, no label, UUID=5f28906f-ef02-48c7-a2f8-96d05409077b
~~~

The first partition can be mounted:

~~~
mount -t ext4 /dev/nbd0p1 /mnt -o ro
~~~

Uncompress the vIOS OVA to the temporary directory:

~~~
tar xf /mnt/usr/share/vmcloud/data/images/vios-adventerprisek9-m.ova
~~~

Convert the vmdk file to a QEMU compatible format:

~~~
/opt/qemu/bin/qemu-img convert -f vmdk -O qcow2 vios-adventerprisek9-m.vmdk hda.qcow2
~~~

Now create the UNetLab image:

~~~
mkdir -p /opt/unetlab/addons/qemu/vios-adventerprisek9-m-15.4-1.3.0-181
mv hda.qcow2 /opt/unetlab/addons/qemu/vios-adventerprisek9-m-15.4-1.3.0-181/
~~~

Clean and fix permissions:

~~~
cd ..
umount /mnt
/opt/qemu/bin/qemu-nbd -d /dev/nbd0
rmmod nbd
rm -rf tmp
/opt/unetlab/wrappers/unl_wrapper -a fixpermissions
~~~

## References

* [Cisco All-in-One Virtual Machine](https://developer.cisco.com/site/onepk/downloads/all-in-one-vm/index.gsp "Cisco All-in-One Virtual Machine")
