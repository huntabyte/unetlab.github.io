---
layout: post
status: publish
published: true
title: Adding Dynamips images
author:
  display_name: Andrea Dainese
  login: admin
  email: andrea.dainese@gmail.com
  url: ''
author_login: admin
author_email: andrea.dainese@gmail.com
excerpt: ! "Dynamips is a Cisco router emulator. Supported platforms are 1700, 2600,
  3600, 3700 and 7200 routers. Each IOS has an associated Idle PC value. Idle PC is
  used to map the idle instruction of the running IOS to the idle instruction of the
  UNetLab platform. With a good Idle PC value, the CPU usage should be less than 10%
  for each instance.\r\n\r\n"
wordpress_id: 143
wordpress_url: http://www.unetlab.com/?p=143
date: !binary |-
  MjAxNC0xMS0wMyAxMTowMDoxNiArMDEwMA==
date_gmt: !binary |-
  MjAxNC0xMS0wMyAxMDowMDoxNiArMDEwMA==
categories:
- HowTo
tags:
- Images
- Cisco
- Dynamips
comments:
- id: 7596
  author: caster
  author_email: caster@126.com
  author_url: ''
  date: !binary |-
    MjAxNC0xMS0yOCAwMzoxNTowOCArMDEwMA==
  date_gmt: !binary |-
    MjAxNC0xMS0yOCAwMjoxNTowOCArMDEwMA==
  content: ! "Hi admin,\r\nAfter few more seconds press &ldquo;CTRL&rdquo; + &ldquo;]&rdquo;
    then &ldquo;i&rdquo;. Dynamips will show suggested Idle PC values:\r\n\r\n\r\nthis
    step didn't happen."
- id: 7913
  author: system
  author_email: system@ccie-lab.cn
  author_url: http://www.ccie-lab.cn
  date: !binary |-
    MjAxNS0wMS0wNSAxMDoyNDoyNyArMDEwMA==
  date_gmt: !binary |-
    MjAxNS0wMS0wNSAwOToyNDoyNyArMDEwMA==
  content: ! "1710 IOS default startup has two interfaces, E0 and F0.\r\n\r\nAfter
    testing, E0 interface can not communicate, F0 interface with other devices communicate
    properly"
- id: 8608
  author: Majid
  author_email: m.sotoodeh@gmail.com
  author_url: ''
  date: !binary |-
    MjAxNS0wMy0wNiAwNjo0OToxMiArMDEwMA==
  date_gmt: !binary |-
    MjAxNS0wMy0wNiAwNTo0OToxMiArMDEwMA==
  content: I thought it was J instead of ]. it is CTRL + ] then quickly press i
- id: 8695
  author: Nguyễn Ki&ecirc;n
  author_email: nguyenvietkientn@yahoo.com
  author_url: ''
  date: !binary |-
    MjAxNS0wMy0xMiAwMzozMjoxMSArMDEwMA==
  date_gmt: !binary |-
    MjAxNS0wMy0xMiAwMjozMjoxMSArMDEwMA==
  content: ! "Hi admin!\r\nThank you so much about your post.\r\nI have some problems,
    Please help me fix it.\r\nAfter run command to Calculate Idle PC:\r\n# dynamips
    -P 1700 -t 1710 /opt/unetlab/addons/dynamips/c1710-bk9no3r2sy-mz.124-23.image\r\nMy
    machine can't stop, it always running! \r\n\r\nand how I can calculate c3725-adventerprisek9-mz.124-15.T5
    images, others.\r\nThank you!"
- id: 8769
  author: roger theo
  author_email: rogthi@gmail.com
  author_url: ''
  date: !binary |-
    MjAxNS0wMy0xNiAyMjo1NDowMiArMDEwMA==
  date_gmt: !binary |-
    MjAxNS0wMy0xNiAyMTo1NDowMiArMDEwMA==
  content: ! "I speculate that you have to start another instance of unl , kill the
    dynamips process and start \r\nthe process again with  (ex: )# dynamips -P 1700
    -t 1710 --idle-pc 0x80369ac4 /opt/unetlab/addons/dynamips/c1710-bk9no3r2sy-mz.124-23.image.\r\nthen
    check the cpu utilization ( show process cpu ) . Hopefully I am correct."
- id: 8811
  author: Support
  author_email: noreply@unetlab.com
  author_url: http://www.unetlab.com/
  date: !binary |-
    MjAxNS0wMy0yMCAxNToyODoxMiArMDEwMA==
  date_gmt: !binary |-
    MjAxNS0wMy0yMCAxNDoyODoxMiArMDEwMA==
  content: ! "Hi,\r\n\r\nTo stop dynamips you can you &ldquo;CTRL&rdquo; + &ldquo;]&rdquo;
    then &ldquo;q&rdquo; or another ssh connection to the server and kill the dynamips
    process from there"
- id: 8945
  author: Praveen
  author_email: raipraveen83@gmail.com
  author_url: ''
  date: !binary |-
    MjAxNS0wNC0wMiAyMTo1MDoyMyArMDIwMA==
  date_gmt: !binary |-
    MjAxNS0wNC0wMiAxOTo1MDoyMyArMDIwMA==
  content: I added mention ios image in directory dynamips.c3725 plateform with exact
    compatible listed version but when i open unl to lab it not appear in node. Can
    some one help me to fix it
- id: 9201
  author: Radwa
  author_email: radwa.rawoof@telus.com
  author_url: ''
  date: !binary |-
    MjAxNS0wNC0zMCAwNjowNTozMiArMDIwMA==
  date_gmt: !binary |-
    MjAxNS0wNC0zMCAwNDowNTozMiArMDIwMA==
  content: ! "Hi,\r\n\r\nI would like to use the ME 3600X Cisco image. However when
    I add this image, it doesn't get detected under Nodes. Is this image not supported?"
- id: 9207
  author: Radwa
  author_email: radwa.rawoof@telus.com
  author_url: ''
  date: !binary |-
    MjAxNS0wNC0zMCAxNjowMjoxMCArMDIwMA==
  date_gmt: !binary |-
    MjAxNS0wNC0zMCAxNDowMjoxMCArMDIwMA==
  content: Hi Andrea, correction to that, I am able to add the image but it doesn't
    run, is it not supported? It doesn't open up the console in putty/SecureCRT
    upon clicking the node. What steps should I take?
- id: 9647
  author: Vivek
  author_email: sumjoy_vicky@yahoo.com
  author_url: ''
  date: !binary |-
    MjAxNS0wNS0xNyAyMToyMDo1OSArMDIwMA==
  date_gmt: !binary |-
    MjAxNS0wNS0xNyAxOToyMDo1OSArMDIwMA==
  content: ! "Hi Support,\r\n\r\nI've added image c3725-adventerprisek9-mz.124-15.T14.bin
    in dynamips and it's working fine however no interface is showing in drop down
    menu at the time of create connection with other device. Is this happened due
    to any bug?"
---

Dynamips is a Cisco router emulator. Supported platforms are 1700, 2600, 3600, 3700 and 7200 routers. Each IOS has an associated Idle PC value. Idle PC is used to map the idle instruction of the running IOS to the idle instruction of the UNetLab platform. With a good Idle PC value, the CPU usage should be less than 10% for each instance.

<a id="more"></a><a id="more-143"></a>
## Suuported Dynamips images
<table>
<thead>
<tr>
<th>Prefix</th>
<th>UNetLab Image Name</th>
<th>Downloaded Filename</th>
<th>Version</th>
<th>vRAM</th>
<th>Idle PC</th>
</tr>
</thead>
<tbody>
<tr>
<td>c1710-</td>
<td>c1710-bk9no3r2sy-mz.124-23.image</td>
<td>c1710-bk9no3r2sy-mz.124-23.bin</td>
<td>C1710-BK9NO3R2SY-M 12.4(23)</td>
<td>96</td>
<td>0x80369ac4</td>
</tr>
<tr>
<td>c3725-</td>
<td>c3725-adventerprisek9-mz.124-15.T14.image</td>
<td>c3725-adventerprisek9-mz.124-15.T14.bin</td>
<td>C3725-ADVENTERPRISEK9-M 12.4(15)T14</td>
<td>256</td>
<td>0x60c08728</td>
</tr>
<tr>
<td>c7200-</td>
<td>c7200-adventerprisek9-mz.152-4.S2.image</td>
<td>c7200-adventerprisek9-mz.152-4.S2..bin</td>
<td>C7200-ADVENTERPRISEK9-M 15.2(4)S2</td>
<td>512</td>
<td>0x60630d5c</td>
</tr>
</tbody>
</table>
## Importing Dynamips Images
The following procedure refers to the most recent and supported image only. Older images should work too. Remember that UNetLab image names are strongly suggested for lab portability.

Install required packages:
~~~
# apt-get -y install unzip
~~~
Upload the downloaded image to the UNetLab master node using for example <a title="FileZilla" href="https://filezilla-project.org/">FileZilla</a> or <a title="WinSCP" href="http://winscp.net/">WinSCP</a>. Then login as root using SSH protocol and uncompress it:
~~~
# mkdir tmp
# cd tmp
# unzip -p c1710-bk9no3r2sy-mz.124-23.bin > c1710-bk9no3r2sy-mz.124-23.image
~~~
Create the UNetLab image:
~~~
# mkdir -p /opt/unetlab/addons/dynamips
# mv c1710-bk9no3r2sy-mz.124-23.image /opt/unetlab/addons/dynamips/
~~~
Clean and fix permissions:
~~~
# cd ..
# rm -rf tmp
# /opt/unetlab/wrappers/unl_wrapper -a fixpermissions
~~~
## Calculating Idle PC
If an unsupported image is added to the UNetLab platform, an Idle PC value must be identified. Start a Dynamips instance with basic configuration:
~~~
# dynamips -P 1700 -t 1710 /opt/unetlab/addons/dynamips/c1710-bk9no3r2sy-mz.124-23.image
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
After few more seconds press &ldquo;CTRL&rdquo; + &ldquo;]&rdquo; then &ldquo;i&rdquo;. Dynamips will show suggested Idle PC values:
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
# dynamips -P 1700 -t 1710 --idle-pc 0x80369ac4 /opt/unetlab/addons/dynamips/c1710-bk9no3r2sy-mz.124-23.image
~~~
If CPU usage is lower, then a good Idle PC value has been found:
~~~
  PID USER      PR  NI    VIRT    RES    SHR S %CPU %MEM     TIME+ COMMAND
 3598 root      20   0  346700 125328 109828 S  5.3 25.3   0:03.98 dynamips
~~~
If CPU is still busy, then another value must be tested.
## References

* <a title="Dynamips" href="https://sourceforge.net/projects/gns-3/files/Dynamips/">Dynamips</a>

