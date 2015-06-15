---
layout: post
published: true
title: "Adding Cisco XRv images"
excerpt:
  "HowTo add Cisco XRv to UNetLab software."
section: "HowTo"
authors:
- andrea
tags:
- UNetLab
- Images
---
The Cisco XRv router is available as a virtual router also.

## Supported Cisco XRv images

| UNetLab Image Name | Downloaded Filename | Version | vCPUs | vRAM |
|:--|:--|:-:|:-:|:-:|
| `xrv-k9-5.1.1` | `iosxrv-k9-demo-5.1.1_2.ova` | 5.1.1 | 2 | 4096 |
|----
| `xrv-k9-5.2.1` | `iosxrv-k9-demo-5.2.0.ova` | 5.2.1 | 1 | 3072 |
|----
| `xrv-k9-5.2.2` | `iosxrv-k9-demo-5.2.2.ova` | 5.2.2 | 1 | 3072 |
|----
{: rules="groups"}

## Importing Cisco XRv images

The following procedure refers to the most recent and supported image only. Older images should work too. Remember that UNetLab image names are strongly suggested for lab portability.

Upload the downloaded image to the UNetLab master node using for example [FileZilla](https://filezilla-project.org/ "FileZilla") or [WinSCP](http://winscp.net/ "WinSCP"). Then login as root using SSH protocol and uncompress it:

~~~
mkdir tmp
cd tmp
tar xf ../iosxrv-k9-demo-5.1.1_2.ova
~~~

Then convert the disk to the qcow2 format:

~~~
/opt/qemu/bin/qemu-img convert -f vmdk -O qcow2 iosxrv-demo.vmdk hda.qcow2
~~~

Create the UNetLab image:

~~~
mkdir -p /opt/unetlab/addons/qemu/xrv-k9-5.1.1
mv hda.qcow2 /opt/unetlab/addons/qemu/xrv-k9-5.1.1
~~~

Clean and fix permissions:

~~~
cd ..
rm -rf tmp
/opt/unetlab/wrappers/unl_wrapper -a fixpermissions
~~~

From the 5.5.2 image, the conversion could create a very small qcow2 file. In this case:

1. import the ova file into a VMware platform;
2. grab the deployed vmdk;
3. convert the vmdk to qcow2.

Default username is `admin` without password.

## References

* [Cisco IOS XRv Software](http://www.cisco.com/c/en/us/support/ios-nx-os-software/ios-xrv-software/tsd-products-support-series-home.html "Cisco IOS XRv Software")
