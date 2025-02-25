---
layout: post
published: true
title: "Adding Arista Virtual Extensible Operating System (vEOS) images"
abstract: ! "HowTo add Arista VEOS to UNetLab software."
categories:
- HowTo
authors:
- andrea
tags:
- UNetLab
- Images
---

The Arista vEOS is available as a virtual router also.

## Supported Arista vEOS images

| UNetLab Image Name | Downloaded Filename | Version | vCPUs | vRAM |
|:--|:--|:-:|:-:|:-:|
| `veos-4.14.0F` | `vEOS-4.14.0F.vmdk`<br/>`Aboot-veos-serial-2.1.0.iso` | 4.14.0F | 1 | 2048 |
|----
{: rules="groups"}

## Importing Arista vEOS images

The following procedure refers to the most recent and supported image only. Older images should work too. Remember that UNetLab image names are strongly suggested for lab portability.

Upload the downloaded image to the UNetLab master node using for example <a title="FileZilla" href="https://filezilla-project.org/">FileZilla</a> or <a title="WinSCP" href="http://winscp.net/">WinSCP</a>. Then login as root using SSH protocol and convert it:

~~~
mkdir tmp
cd tmp
/opt/qemu/bin/qemu-img convert -f vmdk -O qcow2 ../vEOS-4.14.0F.vmdk hda.qcow2
~~~

Create the UNetLab image:

~~~
mkdir -p /opt/unetlab/addons/qemu/veos-4.14.0F
mv hda.qcow2 /opt/unetlab/addons/qemu/veos-4.14.0F
mv Aboot-veos-serial-2.1.0.iso /opt/unetlab/addons/qemu/veos-4.14.0F/cdrom.iso
~~~

Clean and fix permissions:

~~~
cd ..
rm -rf tmp
/opt/unetlab/wrappers/unl_wrapper -a fixpermissions
~~~

Default username is `admin` without password.

## References

* [Arista EOS](https://eos.arista.com/ "Arista EOS")
