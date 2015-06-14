---
layout: post
published: true
title: "Adding Cisco IOU/IOL images"
excerpt:
  "HowTo add Cisco IOY/IOL to UNetLab software."
authors:
- andrea
tags:
- UNetLab
- Images
---
IOL or IOS On Linux, also called IOU or IOS On Unix. IOL, is a Cisco simulator available for internal use only. IOL refers to the Linux version, compiled for i386 architecture. IOU refers to the Unix (Solaris) version compiled for Sparc architecture. The term IOU usually refers to IOL too.

Because IOL is an internal tool, IOL can be used by Cisco employers or by authorized customers only.

## Supported Cisco IOU/IOL images

| Type | UNetLab Image Name | Version | vRAM |
|:--|:--|:--|:-:|:-:|:-:|
| L2 | `L2-ADVENTERPRISEK9-M-15.1-20130726.bin` | I86BI_LINUXL2-ADVENTERPRISEK9-M 15.1(20130726:213425) | 192 |
|----
| L2 | `L2-ADVENTERPRISE-M-15.1-20131216.bin` | I86BI_LINUXL2-ADVENTERPRISE-M 15.1(20131216:211730) | 256 |
|----
| L2 | `L2-IPBASEK9-M-15.1-20121123.bin` | I86BI_LINUXL2-IPBASEK9-M 15.1(20121123:074833) | 256 |
|----
| L2 | `L2-IPBASEK9-M-15.1-20130124.bin` | I86BI_LINUXL2-IPBASEK9-M 15.1(20130124:233217) | 256 |
|----
| L2 | `L2-IPBASEK9-M-15.1-20130426.bin` | I86BI_LINUXL2-IPBASEK9-M 15.1(20130426:181134) | 245 |
|----
| L2 | `L2-IPBASEK9-M-15.1-20130509.bin` | I86BI_LINUXL2-IPBASEK9-M 15.1(20130509:024903) | 256 |
|----
| L2 | `L2-IPBASEK9-M-15.1-20130617.bin` | I86BI_LINUXL2-IPBASEK9-M 15.1(20130617:213916) | 256 |
|----
| L2 | `L2-IPBASEK9-M-15.1-20130726.bin` | I86BI_LINUXL2-IPBASEK9-M 15.1(20130726:213425) | 256 |
|----
| L2 | `L2-UPK9-M-15.0-20120621.bin` | I86BI_LINUX_L2-UPK9-M 15.0(20120621:060510) | 256 |
|----
| L2 | `L2-UPK9-M-15.0-20121031.bin` | I86BI_LINUX_L2-UPK9-M 15.0(20121031:162848) | 256 |
|----
| L3 | `L3-ADVENTERPRISEK9_IVS-M-15.3-0.9T.bin` | I86BI_LINUX-ADVENTERPRISEK9_IVS-M 15.3(0.9)T | 128 |
|----
| L3 | `L3-ADVENTERPRISEK9-M-12.4-20090407.bin` | I86BI_LINUX-ADVENTERPRISEK9-M 12.4(20090407:185408) | 48 |
|----
| L3 | `L3-ADVENTERPRISEK9-M-15.3-1.3T.bin` | I86BI_LINUX-ADVENTERPRISEK9-M 15.3(1.3)T | 128 |
|----
| L3 | `L3-ADVENTERPRISEK9-M-15.2-2.15T.bin` | I86BI_LINUX-ADVENTERPRISEK9-M 15.2(2.15)T | 128 |
|----
| L3 | `L3-ADVENTERPRISEK9-M-15.2-2.3T.bin` | I86BI_LINUX-ADVENTERPRISEK9-M 15.2(2.3)T | 128 |
|----
| L3 | `L3-ADVENTERPRISEK9-M-15.2-4M1.bin` | I86BI_LINUX-ADVENTERPRISEK9-M 15.2(4)M1 | 128 |
|----
| L3 | `L3-ADVENTERPRISEK9-M-15.3-0.9T.bin` | I86BI_LINUX-ADVENTERPRISEK9-M 15.3(0.9)T | 128 |
|----
| L3 | `L3-ADVENTERPRISEK9-M-15.4-1T.bin` | I86BI_LINUX-ADVENTERPRISEK9-M 15.4(1)T | 128 |
|----
| L3 | `L3-ADVENTERPRISEK9-M-15.4-2T.bin` | I86BI_LINUX-ADVENTERPRISEK9-M 15.4(2)T | 128 |
|----
| L3 | `L3-ADVENTERPRISE-M-15.1-20130617.bin` | I86BI_LINUX-ADVENTERPRISE-M 15.1(20130617:213916) | 256 |
|----
| L3 | `L3-ADVENTERPRISE-M-15.1-20130726.bin` | I86BI_LINUX-ADVENTERPRISE-M 15.1(20130726:213425) | 256 |
|----
| L3 | `L3-ADVENTERPRISE-M-15.2-4-M3-12.bin` | I86BI_LINUX-ADVENTERPRISE-M 15.2(4)M3.12 | 128 |
|----
| L3 | `L3-ADVIPSERVICES-M-15.1-2.9S.bin` | I86BI_LINUX-ADVIPSERVICES-M 15.1(2.9)S | 64 |
|----
| L3 | `L3-IPBASEK9-M-15.1-20130124.bin` | I86BI_LINUX-IPBASEK9-M 15.1(20130124:233217) | 64 |
|----
| L3 | `L3-IPBASEK9-M-15.1-20130426.bin` | I86BI_LINUX-IPBASEK9-M 15.1(20130426:181134) | 256 |
|----
| L3 | `L3-IPBASEK9-M-15.1-20130509.bin` | I86BI_LINUX-IPBASEK9-M 15.1(20130509:024903) | 256 |
|----
| L3 | `L3-IPBASEK9-M-15.1-20130617.bin` | I86BI_LINUX-IPBASEK9-M 15.1(20130617:213916) | 256 |
|----
| L3 | `L3-IPBASEK9-M-15.1-20130726.bin` | I86BI_LINUX-IPBASEK9-M 15.1(20130726:213425) | 256 |
|----
| L3 | `L3-IPBASE-M-12.4-20090407.bin` | I86BI_LINUX-IPBASE-M 12.4(20090407:185408) | 96 |
|----
| L3 | `L3-IPVOICE_IVS-M-15.3-0.9T.bin` | I86BI_LINUX-IPVOICE_IVS-M 15.3(0.9)T | 192 |
|----
| L3 | `L3-JK9S-M-15.0-1-XJR111.bin` | I86BI_LINUX-JK9S-M 15.0(1)XJR111.358 | 256 |
|----
| L3 | `L3-P-M-15.0-20120621.bin` | I86BI_LINUX-P-M 15.0(20120621:202753) | 256 |
|----
| L3 | `L3-P-M-15.0-20121031.bin` | I86BI_LINUX-P-M 15.0(20121031:154527) | 256 |
|----
| L3 | `L3-TPGEN+ADVENTERPRISEK9-M-12.4-20090714.bin` | I86BI_LINUX-TPGEN+ADVENTERPRISEK9-M 12.4(20090714:160619) | 48 |
|----
| L3 | `L3-TPGEN+IPBASE-M-12.4-20090714.bin` | I86BI_LINUX-TPGEN+IPBASE-M 12.4(20090714:160619) | 80 |
|----
{: rules="groups"}

## Importing Cisco IOU/IOL images

The following procedure refers to the most recent and supported image only. Older images should work too. Remember that UNetLab image names are strongly suggested for lab portability.

Upload the downloaded image to the UNetLab master node using for example [FileZilla](https://filezilla-project.org/ "FileZilla") or [WinSCP](http://winscp.net/ "WinSCP"). Then login as root using SSH protocol and uncompress it:

~~~
/opt/unetlab/wrappers/unl_wrapper -a fixpermissions
~~~

IOL images must end with the ".bin" extension and must be executable. License must be stored under the same path:

~~~
cat /opt/unetlab/addons/iol/bin/iourc
[license]
unl01 = 0123456789abcdef;
~~~

## Testing Cisco IOU/IOL images

IOU/IOL license is bound to the hostname and domain name. A test should be made to check if IOU/IOL images can run properly:

~~~
cd /opt/unetlab/addons/iol/bin
touch NETMAP
LD_LIBRARY_PATH=/opt/unetlab/addons/iol/lib /opt/unetlab/addons/iol/bin/L3-ADVENTERPRISEK9_IVS-M-15.3-0.9T.bin 1
***************************************************************
IOS On Unix - Cisco Systems confidential, internal use only
Under no circumstances is this software to be provided to any
non Cisco staff or customers.  To do so is likely to result
in disciplinary action. Please refer to the IOU Usage policy at
wwwin-iou.cisco.com for more information.
***************************************************************

              Restricted Rights Legend

Use, duplication, or disclosure by the Government is
subject to restrictions as set forth in subparagraph
(c) of the Commercial Computer Software - Restricted
Rights clause at FAR sec. 52.227-19 and subparagraph
(c) (1) (ii) of the Rights in Technical Data and Computer
Software clause at DFARS sec. 252.227-7013.

           cisco Systems, Inc.
           170 West Tasman Drive
           San Jose, California 95134-1706
~~~

If the IOL/IOU instance doen't start, then you won't be able to use IOL/IOU nodes inside UNetLab.
