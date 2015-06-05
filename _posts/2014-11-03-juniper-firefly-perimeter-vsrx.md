---
layout: post
status: publish
published: true
title: Adding Juniper Firefly Perimeter (vSRX) images
author:
  display_name: Andrea Dainese
  login: admin
  email: andrea.dainese@gmail.com
  url: ''
author_login: admin
author_email: andrea.dainese@gmail.com
excerpt: ! "The Juniper Firefly Perimeter (vSRX) is available as a virtual router
  also.\r\n\r\n"
wordpress_id: 239
wordpress_url: http://www.unetlab.com/?p=239
date: !binary |-
  MjAxNC0xMS0wMyAxNToyNTo0NSArMDEwMA==
date_gmt: !binary |-
  MjAxNC0xMS0wMyAxNDoyNTo0NSArMDEwMA==
categories:
- HowTo
tags:
- Images
- Juniper
- vSRX
comments:
- id: 7431
  author: Adam
  author_email: nelreth@gmail.com
  author_url: ''
  date: !binary |-
    MjAxNC0xMS0xMiAxMDozNzoxNCArMDEwMA==
  date_gmt: !binary |-
    MjAxNC0xMS0xMiAwOTozNzoxNCArMDEwMA==
  content: ! "I added vsrx image to UNL but it doesn't show interfaces (ge-)\r\nvsrx
    version: 12.1X47-D10.4"
- id: 7434
  author: admin
  author_email: andrea.dainese@gmail.com
  author_url: ''
  date: !binary |-
    MjAxNC0xMS0xMiAxMDo1MTo0NSArMDEwMA==
  date_gmt: !binary |-
    MjAxNC0xMS0xMiAwOTo1MTo0NSArMDEwMA==
  content: Try to debug it. It worked for me and other users.
- id: 7441
  author: Adam
  author_email: nelreth@gmail.com
  author_url: ''
  date: !binary |-
    MjAxNC0xMS0xMiAxNTowNDo0NiArMDEwMA==
  date_gmt: !binary |-
    MjAxNC0xMS0xMiAxNDowNDo0NiArMDEwMA==
  content: ! "During booting I get info about interfaces em0,1,2,3 but show interfaces
    terse doesn't show them:\r\ndsc                     up    up  \r\ngre                     up
    \   up  \r\nipip                    up    up  \r\nlo0                     up    up
    \ \r\nlo0.16384               up    up   inet     127.0.0.1           --> 0/0\r\nlo0.16385
    \              up    up   inet     10.0.0.1            --> 0/0\r\n                                            10.0.0.16
    \          --> 0/0\r\n                                            128.0.0.1
    \          --> 0/0\r\n                                            128.0.0.4
    \          --> 0/0\r\n                                            128.0.1.16
    \         --> 0/0\r\nlo0.32768               up    up  \r\nlsi                     up
    \   up  \r\nmtun                    up    up  \r\npimd                    up    up
    \ \r\npime                    up    up  \r\npp0                     up    up  \r\nppd0
    \                   up    up  \r\nppe0                    up    up  \r\nst0                     up
    \   up  \r\ntap                     up    up  \r\nvlan                    up    down\r\n\r\nHow
    should I debug it ?"
- id: 7444
  author: admin
  author_email: andrea.dainese@gmail.com
  author_url: ''
  date: !binary |-
    MjAxNC0xMS0xMiAxNjoyMzozMSArMDEwMA==
  date_gmt: !binary |-
    MjAxNC0xMS0xMiAxNToyMzozMSArMDEwMA==
  content: Don't use it if you're not autonomous to debug.
- id: 7464
  author: Davidodav
  author_email: davidodav3@gmail.com
  author_url: ''
  date: !binary |-
    MjAxNC0xMS0xNCAxNzo1Mzo0NSArMDEwMA==
  date_gmt: !binary |-
    MjAxNC0xMS0xNCAxNjo1Mzo0NSArMDEwMA==
  content: ! "Successfully added junos-vsrx-12.1X46-D20.5-domestic.ova , add 4 interfaces
    and connectivity verified....i will test chassis cluster and advise the result\r\nroot#
    run show interfaces terse \r\nInterface               Admin Link Proto    Local
    \                Remote\r\nge-0/0/0                up    up  \r\nge-0/0/0.0
    \             up    up   inet     10.0.0.1/24     \r\ngr-0/0/0                up
    \   up  \r\n\r\nge-0/0/1.0              up    up   inet     192.168.120.1/24\r\nge-0/0/2
    \               up    up  \r\nge-0/0/3                up    up  \r\n root#
    run ping 10.0.0.2 \r\nPING 10.0.0.2 (10.0.0.2): 56 data bytes\r\n64 bytes from
    10.0.0.2: icmp_seq=0 ttl=64 time=2826.257 ms\r\n64 bytes from 10.0.0.2: icmp_seq=1
    ttl=64 time=1478.531 ms\r\n root# run ping 192.168.120.2 \r\nPING 192.168.120.2
    (192.168.120.2): 56 data bytes\r\n64 bytes from 192.168.120.2: icmp_seq=1 ttl=64
    time=7.607 ms\r\n64 bytes from 192.168.120.2: icmp_seq=2 ttl=64 time=16.478 ms"
- id: 7466
  author: admin
  author_email: andrea.dainese@gmail.com
  author_url: ''
  date: !binary |-
    MjAxNC0xMS0xNCAyMjoxMDoyMSArMDEwMA==
  date_gmt: !binary |-
    MjAxNC0xMS0xNCAyMToxMDoyMSArMDEwMA==
  content: Thank you very much for your report!
- id: 7511
  author: Mile
  author_email: 1@1.com
  author_url: ''
  date: !binary |-
    MjAxNC0xMS0xOSAxNzowOTo1NCArMDEwMA==
  date_gmt: !binary |-
    MjAxNC0xMS0xOSAxNjowOTo1NCArMDEwMA==
  content: ! "Hostname: srx01\r\nModel: firefly-perimeter\r\nJUNOS Software Release
    [12.1X46-D25.7]\r\n\r\nthat one works too"
- id: 7514
  author: admin
  author_email: andrea.dainese@gmail.com
  author_url: ''
  date: !binary |-
    MjAxNC0xMS0yMCAwOToyMTozMSArMDEwMA==
  date_gmt: !binary |-
    MjAxNC0xMS0yMCAwODoyMTozMSArMDEwMA==
  content: Canyou provide ova filename too? So I can update the page.
- id: 7572
  author: Liang
  author_email: liang@cciers.com
  author_url: http://www.cciers.com
  date: !binary |-
    MjAxNC0xMS0yNiAxNzo0NDoxNCArMDEwMA==
  date_gmt: !binary |-
    MjAxNC0xMS0yNiAxNjo0NDoxNCArMDEwMA==
  content: ! "help!!!!\r\nSuccessfully added junos-vsrx into UNL,  But the CPU utilization
    is very high,   If I add two SRX into the lab, CPU is 100% .    Why ? \r\n\r\nthanks"
- id: 7612
  author: test
  author_email: rpra006@gmail.com
  author_url: ''
  date: !binary |-
    MjAxNC0xMS0yOSAwNzoxNDo1MCArMDEwMA==
  date_gmt: !binary |-
    MjAxNC0xMS0yOSAwNjoxNDo1MCArMDEwMA==
  content: ! "Hi,\r\nAfter i have set up a lab using Juniepr vSRX, i have manage to
    start it from web page but how do i console into the vSRX instance. I click on
    the image it starts putty but the putty screen is blank. \r\n\r\nthanks"
- id: 7655
  author: system
  author_email: system@ccie-lab.cn
  author_url: http://www.ccie-lab.cn
  date: !binary |-
    MjAxNC0xMi0wNyAxNzo1MToyNiArMDEwMA==
  date_gmt: !binary |-
    MjAxNC0xMi0wNyAxNjo1MToyNiArMDEwMA==
  content: Equipment operation is normal....
- id: 7887
  author: Ciprian
  author_email: ciprian_stroe@yahoo.com
  author_url: ''
  date: !binary |-
    MjAxNS0wMS0wMyAxMDozMTo0MyArMDEwMA==
  date_gmt: !binary |-
    MjAxNS0wMS0wMyAwOTozMTo0MyArMDEwMA==
  content: ! "Hello,\r\n\r\nI managed to get vSRX working, my only problem is that
    I can't get two or more instances working at the same time. Basically, I start
    2 vSRXs, but the consoles are for the same vSRX instance. Any idea about it ?
    \r\n\r\nThank you,\r\nCiprian."
- id: 7888
  author: Ciprian
  author_email: ciprian_stroe@yahoo.com
  author_url: ''
  date: !binary |-
    MjAxNS0wMS0wMyAxMDo1MDowNSArMDEwMA==
  date_gmt: !binary |-
    MjAxNS0wMS0wMyAwOTo1MDowNSArMDEwMA==
  content: ! "Hi, \r\n\r\nPlease forget about my previous post, I was just stupid
    :) \r\nOnly 1G of RAM allocated, that was the reason. Everything working fine
    now.\r\n\r\nThanks,\r\nCiprian."
- id: 7915
  author: Ciprian
  author_email: ciprian_stroe@yahoo.com
  author_url: ''
  date: !binary |-
    MjAxNS0wMS0wNSAxNDoxOToxMyArMDEwMA==
  date_gmt: !binary |-
    MjAxNS0wMS0wNSAxMzoxOToxMyArMDEwMA==
  content: ! "Hi admin,\r\n\r\n4 vSRX instances up and running, only problem is that
    CPU is 100% full. Is there any kind of fix for this ?\r\n\r\nThank you very much,\r\nCiprian."
- id: 7921
  author: Mostager
  author_email: mostager@gmail.com
  author_url: ''
  date: !binary |-
    MjAxNS0wMS0wNiAxMjo0MTo0MyArMDEwMA==
  date_gmt: !binary |-
    MjAxNS0wMS0wNiAxMTo0MTo0NCArMDEwMA==
  content: ! "I had the Vsrx working but it's very slow and commit is taking so long
    time and sometimes the router stucked when I do commit.\r\n\r\nanyone can help
    solve this?"
- id: 8027
  author: JunOS
  author_email: junosexpert@outlook.com
  author_url: ''
  date: !binary |-
    MjAxNS0wMS0xNyAyMTo0OTo0NyArMDEwMA==
  date_gmt: !binary |-
    MjAxNS0wMS0xNyAyMDo0OTo0NyArMDEwMA==
  content: Yes, it is working but it is very very slow and can't be used so far, This
    is as we face in GNS3 also. This is due to Qemu hyper visor.
- id: 8705
  author: Vinny
  author_email: arcanjov8@gmail.com
  author_url: ''
  date: !binary |-
    MjAxNS0wMy0xMiAxMzoyMzoyNiArMDEwMA==
  date_gmt: !binary |-
    MjAxNS0wMy0xMiAxMjoyMzoyNiArMDEwMA==
  content: ! "Has anyone had any success on setting up vmx? I tred to follow these
    same steps for deploy/running the jinstall-vmx-14.1R1.10-domestic.img but
    it turns out that when I tried to start the nodes, even though there is a message
    that say \"nodes started\", a few seconds later, pops this other message saying
    \"cannot call API\".\r\n\r\nPlease could someone shed some light on how to setup
    the vMX proerply? \r\n\r\nThanks a million!"
- id: 8964
  author: Cincy
  author_email: shiftee7@hotmail.com
  author_url: ''
  date: !binary |-
    MjAxNS0wNC0wNCAxNzoyNjozMCArMDIwMA==
  date_gmt: !binary |-
    MjAxNS0wNC0wNCAxNToyNjozMCArMDIwMA==
  content: ! "Same here - I have the vMX.ova and converted it to a .qcow2 file and
    followed same steps as above placing it in /qemu/vmx-14.1R1.10-domestic\r\n\r\nHowever,
    same as Vinny, when I start the node, it says it started, but the play symbol
    never shows and it doesn't seem to turn on. Now when I boot up the .ova as a standalone
    VM on my ESXi box, works just fine......any ideas on the issue?\r\n\r\nThanks
    in advance"
- id: 9129
  author: cool2
  author_email: februarycc@gmail.com
  author_url: ''
  date: !binary |-
    MjAxNS0wNC0yMyAxMjowODoxMiArMDIwMA==
  date_gmt: !binary |-
    MjAxNS0wNC0yMyAxMDowODoxMiArMDIwMA==
  content: I have exactly the same problem :(
- id: 9208
  author: Radwa
  author_email: radwa.rawoof@telus.com
  author_url: ''
  date: !binary |-
    MjAxNS0wNC0zMCAxNjoyNzoxOCArMDIwMA==
  date_gmt: !binary |-
    MjAxNS0wNC0zMCAxNDoyNzoxOCArMDIwMA==
  content: Hi Andrea, is the Juniper jinstall64-12.1R2.9-domestic-signed.tgz image
    supported? It doesn't seem to get detected on the Unetlab page either. I am using
    VMWare player
- id: 9229
  author: roger theo
  author_email: rogthi@gmail.com
  author_url: ''
  date: !binary |-
    MjAxNS0wNS0wMiAxNjo1NTowMSArMDIwMA==
  date_gmt: !binary |-
    MjAxNS0wNS0wMiAxNDo1NTowMSArMDIwMA==
  content: ! "Support\r\nAs others pointed out it is very slow to the point command
    execution takes very long."
- id: 9350
  author: Tuan Nguyen
  author_email: viva.anything@gmail.com
  author_url: ''
  date: !binary |-
    MjAxNS0wNS0wOSAwOTowNjoxMCArMDIwMA==
  date_gmt: !binary |-
    MjAxNS0wNS0wOSAwNzowNjoxMCArMDIwMA==
  content: I upgraded my VM to UNL0.9.0-26, then I tried to use vSRX and vMX. I can
    start and telnet to both devices, but I got stuck in login prompt. I tried many
    couple of user/password but it didn't work.
- id: 9560
  author: mouslou
  author_email: mouslou@gmail.com
  author_url: ''
  date: !binary |-
    MjAxNS0wNS0xNiAwMDowMjo0MCArMDIwMA==
  date_gmt: !binary |-
    MjAxNS0wNS0xNSAyMjowMjo0MCArMDIwMA==
  content: ! "this is how to import vMX.ova in unetlab, it's working for me :\r\n\r\nUpload
    the downloaded image : vMX.ova to the UNetLab\r\n# mv vMX.ova vmx-14.1R1.10-domestic.ova\r\n#
    mkdir tmp\r\n# cd tmp\r\n# tar xf ../vmx-14.1R1.10-domestic.ova\r\n# mkdir
    -p /opt/unetlab/addons/qemu/vmx-14.1R1.10-domestic\r\n# mv
    hda.qcow2 /opt/unetlab/addons/qemu/vmx-14.1R1.10-domestic\r\n#
    cd ..\r\n# rm -rf tmp\r\n# /opt/unetlab/wrappers/unl_wrapper -a
    fixpermissions\r\n\r\nlogin : root\r\npass : root123\r\n\r\nand this is all, enjoy
    !!!"
- id: 10013
  author: dvalin
  author_email: smoke42@yandex.ru
  author_url: ''
  date: !binary |-
    MjAxNS0wNS0yOCAwNzowMDo1MCArMDIwMA==
  date_gmt: !binary |-
    MjAxNS0wNS0yOCAwNTowMDo1MCArMDIwMA==
  content: ! "hi!\r\nrunning 0.9.0-40 under esxi 5.5\r\ntrying starting to run vsrx,
    nothing interesting in the logs, but i get the following error when starting manually:\r\n\r\n/opt/unetlab/wrappers/qemu_wrapper
    -T 0 -D 2 -t \"vSRX2\" -F /opt/qemu/bin/qemu-system-i386 -d 0
    -- -device e1000,netdev=net0,mac=50:00:00:02:00:00 -netdev tap,id=net0,ifname=vunl0_2_0,script=no
    -device e1000,netdev=net1,mac=50:00:00:02:00:01 -netdev tap,id=net1,ifname=vunl0_2_1,script=no
    -smp 2 -m 1024 -name vSRX2 -uuid 69fa6a47-b0c5-442f-b78d-89cbfb4ad9f9 -hda hda.qcow2
    -machine type=pc-1.0,accel=kvm -serial mon:stdio -nographic -nodefconfig -nodefaults
    -rtc base=utc -no-shutdown -boot order=c\r\n0:2 ERR: error while reading data
    from the subprocess, killing it."
- id: 10116
  author: Steven Coutts
  author_email: stevec@couttsnet.com
  author_url: ''
  date: !binary |-
    MjAxNS0wNS0zMSAxNjowNTo1NyArMDIwMA==
  date_gmt: !binary |-
    MjAxNS0wNS0zMSAxNDowNTo1NyArMDIwMA==
  content: I get the same as this
- id: 10119
  author: Juraj
  author_email: juraj.papic@gmail.com
  author_url: ''
  date: !binary |-
    MjAxNS0wNS0zMSAxODozNjoyNyArMDIwMA==
  date_gmt: !binary |-
    MjAxNS0wNS0zMSAxNjozNjoyNyArMDIwMA==
  content: ! "Hello,\r\n\r\nWhen I want to convert the disk1 file I get the error\r\n
    \"qemu-img: command not found\"\r\n\r\nThanks."
- id: 10122
  author: Ruslan
  author_email: rusmanking@gmail.com
  author_url: ''
  date: !binary |-
    MjAxNS0wNS0zMSAyMjozMzozMyArMDIwMA==
  date_gmt: !binary |-
    MjAxNS0wNS0zMSAyMDozMzozMyArMDIwMA==
  content: try "/opt/qemu/bin/qemu-img"
- id: 10126
  author: JP
  author_email: juraj.papic@gmail.com
  author_url: ''
  date: !binary |-
    MjAxNS0wNi0wMSAwMjoyMzoxMyArMDIwMA==
  date_gmt: !binary |-
    MjAxNS0wNi0wMSAwMDoyMzoxMyArMDIwMA==
  content: ! "Please can you also explain how to add Junos Olive?\r\n\r\nthanks."
- id: 10139
  author: JP
  author_email: juraj.papic@gmail.com
  author_url: ''
  date: !binary |-
    MjAxNS0wNi0wMSAxMjo0NTowNyArMDIwMA==
  date_gmt: !binary |-
    MjAxNS0wNi0wMSAxMDo0NTowNyArMDIwMA==
  content: thanks it worked.
- id: 10152
  author: dvalin
  author_email: smoke42@yandex.ru
  author_url: ''
  date: !binary |-
    MjAxNS0wNi0wMiAwMzoxODoxMiArMDIwMA==
  date_gmt: !binary |-
    MjAxNS0wNi0wMiAwMToxODoxMiArMDIwMA==
  content: ! "at the same time I can start image manually. it seems sort of a problem
    with unl_wrapper and start parameters.\r\n\r\nroot@unl01:/opt/unetlab/addons/qemu/vsrx-12.1X47-D20.7-domestic#
    qemu-system-x86_64 -device e1000 -smp 2 -m 1024 -hda hda.qcow2 -machine type=pc-1.0,
    -nographic\r\nConsoles: serial port\r\nBIOS drive A: is disk0\r\nBIOS drive C:
    is disk1\r\nBIOS 639kB/1047544kB available memory\r\n\r\nFreeBSD/i386
    bootstrap loader, Revision 1.2\r\n(builder@chamuth.juniper.net, Tue Mar  3 20:07:26
    UTC 2015)\r\nLoading /boot/defaults/loader.conf\r\n/kernel text=0x985784
    data=0x538f0+0x1020ec syms=[0x4+0xa1c50+0x4+0xe7666]\r\n/boot/modules/if_em.ko
    text=0x15404 data=0x79c+0x14 -\r\n/boot/modules/libmbpool.ko text=0xd9c
    data=0x100\r\n/boot/modules/if_em_vjx.ko text=0xb94c data=0x600+0x204
    -\r\n/boot/modules/virtio.ko text=0x21f8 data=0x1f8 syms=[0x4+0x7e0+0x4+0x972]\r\n/boot/modules/virtio_pci.ko
    text=0x2e98 data=0x208+0x8 syms=[0x4+0x8f0+0x4+0xb22]\r\n/boot/modules/virtio_blk.ko
    text=0x2a08 data=0x1f0+0xc syms=[0x4+0x960+0x4+0xa0f]\r\n/boot/modules/if_vtnet.ko
    text=0x6004 data=0x37c+0x10 syms=[0x4+0xde0+0x4+0xf0f]\r\n/boot/modules/if_vtnet_vsrx.ko
    text=0x1f44 data=0x480+0x304 syms=[0x4+0x820+0x4+0xacb]"
- id: 10153
  author: dvalin
  author_email: smoke42@yandex.ru
  author_url: ''
  date: !binary |-
    MjAxNS0wNi0wMiAwNjoyNTozOCArMDIwMA==
  date_gmt: !binary |-
    MjAxNS0wNi0wMiAwNDoyNTozOCArMDIwMA==
  content: ! "managed to get it running. \r\nissue was that unl couldnot detect that
    it was runing as a vm and tried to start using kvm acceleration. adding include
    with FORCE_VM didn't fix the problem. removing accel from template helped: \r\n/opt/unetlab/html/templates/vsrx.php\r\n
    remove \"machine type=pc-1.0,accel=kvm\"\r\nkilled the same line for xrv templete,
    xrv started perfectly.\r\n\r\nis there a way to enforce different acceleration?"
- id: 10159
  author: Michael
  author_email: myandulov@gmail.com
  author_url: ''
  date: !binary |-
    MjAxNS0wNi0wMiAxMjowMTozOSArMDIwMA==
  date_gmt: !binary |-
    MjAxNS0wNi0wMiAxMDowMTozOSArMDIwMA==
  content: ! "vsrx and xrv runs perfect with kvm accel under ESXi\r\n\r\nThe config
    file is used only for Alcatel, which is written in the post."
---

The Juniper Firefly Perimeter (vSRX) is available as a virtual router also.

<a id="more"></a><a id="more-239"></a>
## Supported Juniper vSRX images
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
<td>vsrx-12.1X44-D10.4-domestic</td>
<td>junos-vsrx-12.1X44-D10.4-domestic.ova</td>
<td>12.1X44-D10.4</td>
<td>2</td>
<td>1024</td>
</tr>
</tbody>
</table>
## Importing Juniper vSRX images
The following procedure refers to the most recent and supported image only. Older images should work too. Remember that UNetLab image names are strongly suggested for lab portability.

Upload the downloaded image to the UNetLab master node using for example <a title="FileZilla" href="https://filezilla-project.org/">FileZilla</a> or <a title="WinSCP" href="http://winscp.net/">WinSCP</a>. Then login as root using SSH protocol and uncompress it:
<pre># mkdir tmp
# cd tmp
# tar xf ../junos-vsrx-12.1X44-D10.4-domestic.ova</pre>
Then convert the disk to the qcow2 format:
<pre># qemu-img convert -f vmdk -O qcow2 junos-vsrx-12.1X44-D10.4-domestic-disk1.vmdk hda.qcow2</pre>
Create the UNetLab image:
<pre># mkdir -p /opt/unetlab/addons/qemu/vsrx-12.1X44-D10.4-domestic
# mv hda.qcow2 /opt/unetlab/addons/qemu/vsrx-12.1X44-D10.4-domestic</pre>
Clean and fix permissions:
<pre># cd ..
# rm -rf tmp
# /opt/unetlab/wrappers/unl_wrapper -a fixpermissions</pre>
Default username is "<strong>admin</strong>" without password.
## References

* <a title="Juniper Firefly Perimeter" href="http://www.juniper.net/us/en/products-services/security/firefly-perimeter/">Juniper Firefly Perimeter</a>

