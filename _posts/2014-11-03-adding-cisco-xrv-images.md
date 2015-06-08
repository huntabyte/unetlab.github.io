---
layout: post
status: publish
published: true
title: Adding Cisco XRv images
author:
  display_name: Andrea Dainese
  login: admin
  email: andrea.dainese@gmail.com
  url: ''
author_login: admin
author_email: andrea.dainese@gmail.com
excerpt: ! "The Cisco XRv router is available as a virtual router also.\r\n\r\n"
wordpress_id: 255
wordpress_url: http://www.unetlab.com/?p=255
date: !binary |-
  MjAxNC0xMS0wMyAxNjowMjozNCArMDEwMA==
date_gmt: !binary |-
  MjAxNC0xMS0wMyAxNTowMjozNCArMDEwMA==
categories:
- HowTo
tags:
- Images
- Cisco
- XRv
comments:
- id: 7377
  author: MIke
  author_email: mike@mike.com
  author_url: ''
  date: !binary |-
    MjAxNC0xMS0wMyAyMzoxNDozOCArMDEwMA==
  date_gmt: !binary |-
    MjAxNC0xMS0wMyAyMjoxNDozOCArMDEwMA==
  content: 5.2.0 works fine too
- id: 7380
  author: admin
  author_email: andrea.dainese@gmail.com
  author_url: ''
  date: !binary |-
    MjAxNC0xMS0wNCAwODozMzo1NiArMDEwMA==
  date_gmt: !binary |-
    MjAxNC0xMS0wNCAwNzozMzo1NiArMDEwMA==
  content: Thank you very much. Can you post also OVA filename, suggested vCPU/vRAM?
    So I can update the post.
- id: 7382
  author: MIke
  author_email: mike@mike.com
  author_url: ''
  date: !binary |-
    MjAxNC0xMS0wNCAwOToyNzo1OSArMDEwMA==
  date_gmt: !binary |-
    MjAxNC0xMS0wNCAwODoyNzo1OSArMDEwMA==
  content: ! "xrv-k9-5.2.0\tiosxrv-k9-demo-5.2.0.ova\t5.2.0    1\t 3072\r\n\r\nI used
    your pre-defined cpu and ram"
- id: 7402
  author: Mohammad Khalil
  author_email: eng_mssk@hotmail.com
  author_url: http://www.nmsboost.com
  date: !binary |-
    MjAxNC0xMS0wNiAxNDoxMTo0MCArMDEwMA==
  date_gmt: !binary |-
    MjAxNC0xMS0wNiAxMzoxMTo0MCArMDEwMA==
  content: ! "Hi , I followed all steps and all is well\r\nBut when adding the router
    from the web interface , I get the message ERROR : Tenant ID is not set\r\n\r\nAny
    ideas?\r\n\r\nBR,\r\nMohammad"
- id: 7403
  author: admin
  author_email: andrea.dainese@gmail.com
  author_url: ''
  date: !binary |-
    MjAxNC0xMS0wNiAyMjozODoxMSArMDEwMA==
  date_gmt: !binary |-
    MjAxNC0xMS0wNiAyMTozODoxMSArMDEwMA==
  content: Sometimes it happens, especially after a timeout. Try to refresh the page
    or close the browser and clear the cache. If you are able to, please try to debug.
    It's a beta, remember? ;)
- id: 7462
  author: Davidodav
  author_email: davidodav3@gmail.com
  author_url: ''
  date: !binary |-
    MjAxNC0xMS0xNCAwNjowMToyOCArMDEwMA==
  date_gmt: !binary |-
    MjAxNC0xMS0xNCAwNTowMToyOCArMDEwMA==
  content: ! "Hey Andrea,\r\n\r\n In the first place i thank you for your great effort.
    I'm able to run the IOS-Xrv by just following the steps you mentioned above. the
    only issue I observed is when the router boots, it takes a while. I have used
    the same RAM setting in the ESXi for the IOS-XRV and in the ESXi it boots much
    faster than in the UNL. I will increase the RAM size and try it again"
- id: 7463
  author: admin
  author_email: andrea.dainese@gmail.com
  author_url: ''
  date: !binary |-
    MjAxNC0xMS0xNCAwODo1NDo0OSArMDEwMA==
  date_gmt: !binary |-
    MjAxNC0xMS0xNCAwNzo1NDo0OSArMDEwMA==
  content: It's because nested virtualization. VIRL use the same technique. You need
    to check if the "Warning" on the console is displayed or not.
- id: 7548
  author: Anu
  author_email: fatokun_anu@yahoo.com
  author_url: ''
  date: !binary |-
    MjAxNC0xMS0yNCAyMDowNDo0MyArMDEwMA==
  date_gmt: !binary |-
    MjAxNC0xMS0yNCAxOTowNDo0MyArMDEwMA==
  content: ! "The command tar xf ../iosxrv-k9-demo-5.1.1_2.ova is not executing.\r\n\r\n\r\npls
    assist"
- id: 7583
  author: Alex
  author_email: shohan@gmail.com
  author_url: ''
  date: !binary |-
    MjAxNC0xMS0yNiAyMToyNjowMSArMDEwMA==
  date_gmt: !binary |-
    MjAxNC0xMS0yNiAyMDoyNjowMSArMDEwMA==
  content: Hi, It works fine. there is issue with network connectivity. No ping between
    routers.
- id: 7724
  author: system
  author_email: system@ccie-lab.cn
  author_url: http://www.ccie-lab.cn
  date: !binary |-
    MjAxNC0xMi0xNCAxODo0Nzo1OSArMDEwMA==
  date_gmt: !binary |-
    MjAxNC0xMi0xNCAxNzo0Nzo1OSArMDEwMA==
  content: ! "Hi admin\r\n\r\npl help, It works fine. But no ping between the device？"
- id: 7912
  author: system
  author_email: system@ccie-lab.cn
  author_url: http://www.ccie-lab.cn
  date: !binary |-
    MjAxNS0wMS0wNSAwODozNDo1MSArMDEwMA==
  date_gmt: !binary |-
    MjAxNS0wMS0wNSAwNzozNDo1MSArMDEwMA==
  content: ! "Hi admin\r\n\r\nIn the test version 0.8.5-72, XRv can not communicate
    with other devices. However, the device can communicate properly with the cloud.\r\n\r\nIf
    this is a BUG, I hope the next version fixes, thank you."
- id: 8503
  author: dimonpc
  author_email: filchakov_mail@bk.ru
  author_url: ''
  date: !binary |-
    MjAxNS0wMi0yNyAxNDoxNjoyMyArMDEwMA==
  date_gmt: !binary |-
    MjAxNS0wMi0yNyAxMzoxNjoyMyArMDEwMA==
  content: I use latest version 0.8.6-26 and xrv-k9-5.2.0 can communicate with other
    devices. All works fine.
- id: 8737
  author: Mauriicio
  author_email: andmauricio@gmail.com
  author_url: ''
  date: !binary |-
    MjAxNS0wMy0xNCAwMzowNTowNCArMDEwMA==
  date_gmt: !binary |-
    MjAxNS0wMy0xNCAwMjowNTowNCArMDEwMA==
  content: 5.3.0 works great
- id: 8891
  author: Lipton Brux
  author_email: clipton@163.com
  author_url: ''
  date: !binary |-
    MjAxNS0wMy0yNyAwNTozNTozMiArMDEwMA==
  date_gmt: !binary |-
    MjAxNS0wMy0yNyAwNDozNTozMiArMDEwMA==
  content: ! "Hi, everyone!\r\n\r\nI followed all steps and it works well, but when
    I open the LAB, add the XRv node, there's no image to choose. \r\n\r\nHelp~~\r\n\r\nI
    upload iosxrv-k9-5.1.1 and iosxrv-k9-5.2.0"
- id: 9086
  author: ramIndia
  author_email: talk2ram@gmail.com
  author_url: ''
  date: !binary |-
    MjAxNS0wNC0xOSAwMDowMTowNyArMDIwMA==
  date_gmt: !binary |-
    MjAxNS0wNC0xOCAyMjowMTowNyArMDIwMA==
  content: ! "After booting XRV, not able to login  why ?\r\n\r\n Enter root-system
    username: admin\r\n\r\n Username \"admin\" is locked, please choose another.\r\n\r\n
    \ Enter root-system username: \r\n\r\nAny help here ?\r\n\r\nRam"
- id: 9240
  author: danang
  author_email: danangdh@yahoo.com
  author_url: ''
  date: !binary |-
    MjAxNS0wNS0wMyAxODowMToyNSArMDIwMA==
  date_gmt: !binary |-
    MjAxNS0wNS0wMyAxNjowMToyNSArMDIwMA==
  content: ! 'Try it --> user and password : Admin'
- id: 9544
  author: peter sithole
  author_email: sithole.peter@yahoo.com
  author_url: ''
  date: !binary |-
    MjAxNS0wNS0xNSAxNToyODowMSArMDIwMA==
  date_gmt: !binary |-
    MjAxNS0wNS0xNSAxMzoyODowMSArMDIwMA==
  content: ! "Hi UNL Team,,\r\n\r\nThanks for the great work, i just having a problem
    to get VNC working everything is running XRv routers there are starting i selected
    to console using VNC . But when i click to open the device to console it for VNC
    it comes up and show a black screen popup aQEMU window and in the middle is written
    : \"THIS VM HAS NO GRAPHIC DISPLAY DEVICE\" does any one has an idea ho to solve
    this issue"
- id: 10172
  author: Feroze
  author_email: keen2know@munshibari.com
  author_url: ''
  date: !binary |-
    MjAxNS0wNi0wMiAyMDo1Njo0NCArMDIwMA==
  date_gmt: !binary |-
    MjAxNS0wNi0wMiAxODo1Njo0NCArMDIwMA==
  content: ! "Please help,\r\n\r\nI have following the instruction and using iosxrv-k9-demo-5.3.0.ova
    but the node is not starting ,I am using ESXi 5. 0 to run the unl VM,  Thanks
    in advance"
---

The Cisco XRv router is available as a virtual router also.

<a id="more"></a><a id="more-255"></a>
## Supported Cisco XRv images
<table>
<thead>
<tr>
<th>UNetLab Image Name</th>
<th>Downloaded Filename</th>
<th>Version</th>
<th>vCPUs</th>
<th>vRAM</th>
</tr>
</thead>
<tbody>
<tr>
<td>xrv-k9-5.1.1</td>
<td>iosxrv-k9-demo-5.1.1_2.ova</td>
<td>5.1.1</td>
<td>1</td>
<td>3072</td>
</tr>
<tr>
<td>xrv-k9-5.2.0</td>
<td>iosxrv-k9-demo-5.2.0.ova</td>
<td>5.2.0</td>
<td>1</td>
<td>3072</td>
</tr>
<tr>
<td>xrv-k9-5.2.2</td>
<td>iosxrv-k9-demo-5.2.2.ova</td>
<td>5.2.2</td>
<td>1</td>
<td>3072</td>
</tr>
</tbody>
</table>
## Importing Cisco XRv images
The following procedure refers to the most recent and supported image only. Older images should work too. Remember that UNetLab image names are strongly suggested for lab portability.

Upload the downloaded image to the UNetLab master node using for example <a title="FileZilla" href="https://filezilla-project.org/">FileZilla</a> or <a title="WinSCP" href="http://winscp.net/">WinSCP</a>. Then login as root using SSH protocol and uncompress it:
~~~
# mkdir tmp
# cd tmp
# tar xf ../iosxrv-k9-demo-5.1.1_2.ova
~~~
Then convert the disk to the qcow2 format:
~~~
# qemu-img convert -f vmdk -O qcow2 iosxrv-demo.vmdk hda.qcow2
~~~
Create the UNetLab image:
~~~
# mkdir -p /opt/unetlab/addons/qemu/xrv-k9-5.1.1
# mv hda.qcow2 /opt/unetlab/addons/qemu/xrv-k9-5.1.1
~~~
Clean and fix permissions:
~~~
# cd ..
# rm -rf tmp
# /opt/unetlab/wrappers/unl_wrapper -a fixpermissions
~~~
From the 5.5.2 image, the conversion could create a very small qcow2 file. In this case:
<ol>
* import the ova file into a VMware platform;
* grab the deployed vmdk;
* convert the vmdk to qcow2.
</ol>
Default username is "**admin**" without password.
## References

* <a title="Cisco IOS XRv Software" href="http://www.cisco.com/c/en/us/support/ios-nx-os-software/ios-xrv-software/tsd-products-support-series-home.html">Cisco IOS XRv Software</a>

