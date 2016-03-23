---
layout: post
published: true
title: "Adding Dynamips images"
excerpt:
  "HowTo add Dynamips images to UNetLab software."
section: "HowTo"
authors:
- andrea
tags:
- UNetLab
- Images
---
Dynamips is a Cisco router emulator. Supported platforms are 1700, 2600, 3600, 3700 and 7200 routers. Each IOS has an associated Idle PC value. Idle PC is used to map the idle instruction of the running IOS to the idle instruction of the UNetLab platform. With a good Idle PC value, the CPU usage should be less than 10% for each instance.

## Supported Dynamips images

| UNetLab Image Name | Downloaded Filename | Version | vRAM | Idle PC |
|:--|:--|:-:|:-:|:-:|
| `c1710-bk9no3r2sy-mz.124-23.image` | `c1710-bk9no3r2sy-mz.124-23.bin` | C1710-BK9NO3R2SY-M 12.4(23) | 96 | 0x80369ac4 |
|----
| `c3725-adventerprisek9-mz.124-15.T14.image` | `c3725-adventerprisek9-mz.124-15.T14.bin` | C3725-ADVENTERPRISEK9-M 12.4(15)T14 | 256 | 0x60c08728 |
|----
| `c7200-adventerprisek9-mz.152-4.S2.image` | `c7200-adventerprisek9-mz.152-4.S2.bin` | C7200-ADVENTERPRISEK9-M 15.2(4)S2 | 512 | 0x60630d5c |
|----
| `c7200-adventerprisek9-mz.152-4.S6.image` | `c7200-adventerprisek9-mz.152-4.S6.bin` | C7200-ADVENTERPRISEK9-M 15.2(4)S6 | 512 | 0x62f224ac |
|----
{: rules="groups"}

## Importing Dynamips Images
The following procedure refers to the most recent and supported image only. Older images should work too. Remember that UNetLab image names are strongly suggested for lab portability.

Install required packages:

~~~
apt-get -y install unzip
~~~

Upload the downloaded image to the UNetLab master node using for example [FileZilla](https://filezilla-project.org/ "FileZilla") or [WinSCP](http://winscp.net/ "WinSCP"). Then login as root using SSH protocol and uncompress it:

~~~
mkdir tmp
cd tmp
unzip -p c1710-bk9no3r2sy-mz.124-23.bin > c1710-bk9no3r2sy-mz.124-23.image
~~~

Create the UNetLab image:

~~~
mkdir -p /opt/unetlab/addons/dynamips
mv c1710-bk9no3r2sy-mz.124-23.image /opt/unetlab/addons/dynamips/
~~~

Clean and fix permissions:

~~~
cd ..
rm -rf tmp
/opt/unetlab/wrappers/unl_wrapper -a fixpermissions
~~~

## Calculating Idle PC

If an unsupported image is added to the UNetLab platform, an Idle PC value must be identified. Start a Dynamips instance with basic configuration:

~~~
dynamips -P 1700 -t 1710 /opt/unetlab/addons/dynamips/c1710-bk9no3r2sy-mz.124-23.image
~~~

CPU usage is very high, a whole CPU for each instance:

~~~
  PID USER      PR  NI    VIRT    RES    SHR S %CPU %MEM     TIME+ COMMAND
 3521 root      20   0  412236 125408 109904 S 99.5 25.4   3:27.82 dynamips
~~~

Wait for the following line on the console:

~~~
Would you like to enter the initial configuration dialog? [yes/no]:
~~~

Exit from initial configuration dialog, and quit to get the con0 prompt:

~~~
Router con0 is now available

Press RETURN to get started.
~~~

Press Enter to get to teh router's promnt:

~~~
Router>
~~~

After few more seconds press `CTRL` + `]` then `i`. Dynamips will show suggested Idle PC values:

~~~
Please wait while gathering statistics...
Done. Suggested idling PC:
   0x80369ac4 (count=35)
   0x8023afac (count=51)
   0x8023b008 (count=30)
   0x8023b050 (count=27)
   0x803637a0 (count=38)
   0x80363984 (count=20)
   0x80363ccc (count=28)
   0x80363d48 (count=28)
   0x80363d78 (count=74)
   0x803645d0 (count=76)
Restart the emulator with "--idle-pc=0x80369ac4" (for example)
~~~

Select one and restart dynamips with the IDle PC value:

~~~
dynamips -P 1700 -t 1710 --idle-pc 0x80369ac4 /opt/unetlab/addons/dynamips/c1710-bk9no3r2sy-mz.124-23.image
~~~

If CPU usage is lower, then a good Idle PC value has been found:

~~~
  PID USER      PR  NI    VIRT    RES    SHR S %CPU %MEM     TIME+ COMMAND
 3598 root      20   0  346700 125328 109828 S  5.3 25.3   0:03.98 dynamips
~~~

If CPU is still busy, then another value must be tested.

## References

* [Dynamips](https://sourceforge.net/projects/gns-3/files/Dynamips/ "Dynamips")
