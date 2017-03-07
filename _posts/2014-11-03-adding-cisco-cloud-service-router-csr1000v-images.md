---
layout: post
published: true
title: "Adding Cisco Cloud Service Router (CSR1000V) images"
abstract: ! "HowTo add Cisco CSR1000V to UNetLab software."
categories:
- HowTo
authors:
- andrea
tags:
- EVE-NG
- Images
---

The Cisco XRv router is available as a virtual router also.

## Supported Cisco CSR1000V images

| UNetLab Image Name | Downloaded Filename | Version | vCPUs | vRAM |
|:--|:--|:-:|:-:|:-:|
| `csr1000v-universalk9-15.4-2S` | `csr1000v-universalk9.03.12.00.S.154-2.S-std.ova` | X86_64_LINUX_IOSD-UNIVERSALK9-M 15.4(2)S | 1 | 2560 |
|----
| `csr1000v-universalk9-15.4-3S` | `csr1000v-universalk9.03.13.00.S.154-3.S-ext.ova` | X86_64_LINUX_IOSD-UNIVERSALK9-M 15.4(3)S | 1 | 2560 |
|----
{: rules="groups"}

## Importing Cisco CSR1000V images

The following procedure refers to the most recent and supported image only. Older images should work too. Remember that UNetLab image names are strongly suggested for lab portability.

Upload the downloaded image to the UNetLab master node using for example [FileZilla](https://filezilla-project.org/ "FileZilla") or [WinSCP](http://winscp.net/ "WinSCP"). Then login as root using SSH protocol and uncompress it:

~~~
mkdir tmp
cd tmp
tar xf ../csr1000v-universalk9.03.13.00.S.154-3.S-ext.ova
~~~

Then convert the disk to the qcow2 format:

~~~
/opt/qemu/bin/qemu-img convert -f vmdk -O qcow2 csr1000v_harddisk.vmdk hda.qcow2
~~~

Start the first boot installation:

~~~
/opt/qemu/bin/qemu-system-x86_64 --enable-kvm -serial mon:stdio -nographic -boot order=c,once=d -smp 2 -m 3072 -usb -hda hda.qcow2 -cdrom csr1000v-universalk9.03.13.00.S.154-3.S-ext.iso
~~~

Press any key to interrupt the boot process, and select the following image:

~~~
CSR 1000V Serial Console
~~~

After installation, the CSR is automatically rebooted. Output will be available without any further action:

~~~
[...]
cisco CSR1000V (VXE) processor (revision VXE) with 1195119K/6147K bytes of memory.
Processor board ID 9Z9MH2DD18C
1 Gigabit Ethernet interface
32768K bytes of non-volatile configuration memory.
3022420K bytes of physical memory.
7774207K bytes of virtual hard disk at bootflash:.

         --- System Configuration Dialog ---

Would you like to enter the initial configuration dialog? [yes/no]:
~~~

Now kill the process and create the UNetLab image:

~~~
killall qemu-system-x86_64
mkdir -p /opt/unetlab/addons/qemu/csr1000v-universalk9-15.4-3S
mv hda.qcow2 /opt/unetlab/addons/qemu/csr1000v-universalk9-15.4-3S
~~~

Clean and fix permissions:

~~~
cd ..
rm -rf tmp
/opt/unetlab/wrappers/unl_wrapper -a fixpermissions
~~~

Default username is `admin` without password.

## References

* [Cisco Cloud Services Router 1000V Series](http://www.cisco.com/c/en/us/products/routers/cloud-services-router-1000v-series/index.html "Cisco Cloud Services Router 1000V Series")
