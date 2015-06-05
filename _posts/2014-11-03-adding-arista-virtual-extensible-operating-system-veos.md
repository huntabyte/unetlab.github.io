---
layout: post
status: publish
published: true
title: Adding Arista Virtual Extensible Operating System (vEOS) images
author:
  display_name: Andrea Dainese
  login: admin
  email: andrea.dainese@gmail.com
  url: ''
author_login: admin
author_email: andrea.dainese@gmail.com
excerpt: ! "The Arista vEOS is available as a virtual router also.\r\n\r\n"
wordpress_id: 232
wordpress_url: http://www.unetlab.com/?p=232
date: !binary |-
  MjAxNC0xMS0wMyAxNTowOTo1MiArMDEwMA==
date_gmt: !binary |-
  MjAxNC0xMS0wMyAxNDowOTo1MiArMDEwMA==
categories:
- HowTo
tags:
- Images
- Arista
- vEOS
comments:
- id: 7376
  author: MIke
  author_email: mike@mike.com
  author_url: ''
  date: !binary |-
    MjAxNC0xMS0wMyAyMzowODo1OSArMDEwMA==
  date_gmt: !binary |-
    MjAxNC0xMS0wMyAyMjowODo1OSArMDEwMA==
  content: ! "With the new images it doesn't work\r\nAboot-veos-2.0.8.iso\r\nAboot-veos-2.1.0.iso\r\nvEOS-4.14.2F\r\n\r\nwhen
    it is added, instead of telnet, there is vnc option when you get mouse on the
    icon.\r\neven if you telnet, it won't work (I didn't check logs much though)"
- id: 7381
  author: admin
  author_email: andrea.dainese@gmail.com
  author_url: ''
  date: !binary |-
    MjAxNC0xMS0wNCAwODozNTo1NSArMDEwMA==
  date_gmt: !binary |-
    MjAxNC0xMS0wNCAwNzozNTo1NSArMDEwMA==
  content: ! 'My tests showed the vEOS doesn''t expose a serial console, only a graphic
    display. So VNC is needed to manage the VM display. If someone find another solution,
    please report it so I can update the software.


    A HowTo regarding browser - VNC integration will follow. Until that you must point
    your VNC client to the UNetLab IP address and use the following port: 32768 +
    node_id'
- id: 7383
  author: MIke
  author_email: mike@mike.com
  author_url: ''
  date: !binary |-
    MjAxNC0xMS0wNCAwOToyOToyMyArMDEwMA==
  date_gmt: !binary |-
    MjAxNC0xMS0wNCAwODoyOToyMyArMDEwMA==
  content: aha, that is what I missed, the node id, will test and report
- id: 7384
  author: MIke
  author_email: mike@mike.com
  author_url: ''
  date: !binary |-
    MjAxNC0xMS0wNCAwOTozNToxNCArMDEwMA==
  date_gmt: !binary |-
    MjAxNC0xMS0wNCAwODozNToxNCArMDEwMA==
  content: ! "the port you can see when you get mouse on the device.\r\nbut vnc doesn't
    work, or it takes time to boot.\r\nIt opens a window, but close it immediately"
- id: 7385
  author: MIke
  author_email: mike@mike.com
  author_url: ''
  date: !binary |-
    MjAxNC0xMS0wNCAwOTo0NjowMyArMDEwMA==
  date_gmt: !binary |-
    MjAxNC0xMS0wNCAwODo0NjowMyArMDEwMA==
  content: vnc viewer doest work, but chrome extension works
- id: 7386
  author: admin
  author_email: andrea.dainese@gmail.com
  author_url: ''
  date: !binary |-
    MjAxNC0xMS0wNCAxMTozNzowMCArMDEwMA==
  date_gmt: !binary |-
    MjAxNC0xMS0wNCAxMDozNzowMCArMDEwMA==
  content: Which OS? Windows or MAC?
- id: 7388
  author: MIke
  author_email: mike@mike.com
  author_url: ''
  date: !binary |-
    MjAxNC0xMS0wNCAxMjoxMDowNyArMDEwMA==
  date_gmt: !binary |-
    MjAxNC0xMS0wNCAxMToxMDowNyArMDEwMA==
  content: windows 7
- id: 7701
  author: Panya
  author_email: pwatta@gmail.com
  author_url: ''
  date: !binary |-
    MjAxNC0xMi0xMiAxMDo1ODoyMiArMDEwMA==
  date_gmt: !binary |-
    MjAxNC0xMi0xMiAwOTo1ODoyMiArMDEwMA==
  content: I can access to vEOS but it seem like device is stuck in boot loop
- id: 7766
  author: Diego
  author_email: monasteriosd@gmail.com
  author_url: http://routingnull0.com
  date: !binary |-
    MjAxNC0xMi0yMiAxNDoyNToyMCArMDEwMA==
  date_gmt: !binary |-
    MjAxNC0xMi0yMiAxMzoyNToyMCArMDEwMA==
  content: Same as Panya. Boot loop when accessing through chrome extensions VNC viewer
- id: 7767
  author: admin
  author_email: andrea.dainese@gmail.com
  author_url: ''
  date: !binary |-
    MjAxNC0xMi0yMiAxNDo0NDoyNCArMDEwMA==
  date_gmt: !binary |-
    MjAxNC0xMi0yMiAxMzo0NDoyNCArMDEwMA==
  content: Check you have i7 processor if you're using UNetLab under VMware.
- id: 7814
  author: Panya
  author_email: pwatta@gmail.com
  author_url: ''
  date: !binary |-
    MjAxNC0xMi0yNSAwODo0OToyNSArMDEwMA==
  date_gmt: !binary |-
    MjAxNC0xMi0yNSAwNzo0OToyNSArMDEwMA==
  content: I used core i7 + 8GB of RAM at my office, but result still same. I'm stuck
    in boot loop.
- id: 7821
  author: admin
  author_email: andrea.dainese@gmail.com
  author_url: ''
  date: !binary |-
    MjAxNC0xMi0yNSAyMjo0MzoyOCArMDEwMA==
  date_gmt: !binary |-
    MjAxNC0xMi0yNSAyMTo0MzoyOCArMDEwMA==
  content: A user sent me a patch which should solve this issue. Please wait for the
    next release (on January 2nd, I suppose).
- id: 7877
  author: admin
  author_email: andrea.dainese@gmail.com
  author_url: ''
  date: !binary |-
    MjAxNS0wMS0wMiAyMDowMDo1MiArMDEwMA==
  date_gmt: !binary |-
    MjAxNS0wMS0wMiAxOTowMDo1MiArMDEwMA==
  content: The issue should be fixed on today's release.
- id: 8016
  author: Diego
  author_email: monasteriosd@gmail.com
  author_url: http://routingnull0.com
  date: !binary |-
    MjAxNS0wMS0xNiAxOToxMjoyNCArMDEwMA==
  date_gmt: !binary |-
    MjAxNS0wMS0xNiAxODoxMjoyNCArMDEwMA==
  content: ! 'With unetlab on ESXi I try to start a vEOS image and it gives me the
    error: "ERROR: Failed to start unl_wrapper with return code 143." It seems to
    be working fine on Virtualbox.'
- id: 8039
  author: Andrea Dainese
  author_email: andrea.dainese@gmail.com
  author_url: ''
  date: !binary |-
    MjAxNS0wMS0xOSAwODo1MzoyMiArMDEwMA==
  date_gmt: !binary |-
    MjAxNS0wMS0xOSAwNzo1MzoyMiArMDEwMA==
  content: Think you messed up something.
- id: 8274
  author: Diego
  author_email: monasteriosd@gmail.com
  author_url: http://routingnull0.com
  date: !binary |-
    MjAxNS0wMi0wMyAwMDoxMjoxNSArMDEwMA==
  date_gmt: !binary |-
    MjAxNS0wMi0wMiAyMzoxMjoxNSArMDEwMA==
  content: ! "Is there a way to check logs and see why it is not starting and returning
    this error? The vEOS versions you used to test is not available for download anymore.
    I am using vEOS-lab-4.14.2F.vmdk and Aboot-veos-2.0.8.iso\r\n\r\nThank you"
- id: 8282
  author: Andrea Dainese
  author_email: andrea.dainese@gmail.com
  author_url: ''
  date: !binary |-
    MjAxNS0wMi0wMyAwODozNzoxNyArMDEwMA==
  date_gmt: !binary |-
    MjAxNS0wMi0wMyAwNzozNzoxNyArMDEwMA==
  content: All logs are under /opt/unetlab/data/Logs.
- id: 8288
  author: Diego
  author_email: monasteriosd@gmail.com
  author_url: http://routingnull0.com
  date: !binary |-
    MjAxNS0wMi0wMyAxOTo1NzowMSArMDEwMA==
  date_gmt: !binary |-
    MjAxNS0wMi0wMyAxODo1NzowMSArMDEwMA==
  content: Ok found out it was not working because VT-x/AMD-V was not enabled
    for that VM in ESXi
- id: 8289
  author: Diego
  author_email: monasteriosd@gmail.com
  author_url: http://routingnull0.com
  date: !binary |-
    MjAxNS0wMi0wMyAyMjowODoyMyArMDEwMA==
  date_gmt: !binary |-
    MjAxNS0wMi0wMyAyMTowODoyMyArMDEwMA==
  content: I can run multiple vEOS individually without a problem but using networks
    type "bridge" nodes, I cannot get any traffic across them. I used TCP dump on
    both nodes interfaces trying to pass traffic and see outbound traffic but no inbound
    traffic. Any way I can check what interface is mapped to what interface?
- id: 8310
  author: Diego
  author_email: monasteriosd@gmail.com
  author_url: http://routingnull0.com
  date: !binary |-
    MjAxNS0wMi0wNCAxNjo0NTowOSArMDEwMA==
  date_gmt: !binary |-
    MjAxNS0wMi0wNCAxNTo0NTowOSArMDEwMA==
  content: It is working in new release 0.8.6-22. Thank you very much!
- id: 8313
  author: Diego
  author_email: monasteriosd@gmail.com
  author_url: http://routingnull0.com
  date: !binary |-
    MjAxNS0wMi0wNCAxNzowODo0OCArMDEwMA==
  date_gmt: !binary |-
    MjAxNS0wMi0wNCAxNjowODo0OCArMDEwMA==
  content: Ignore last comment. It is working only for management1 interface but none
    of the ethernet interfaces. I believe this is a problem with vEOS and not with
    the web UI since other images like IOL are working properly now.
- id: 8569
  author: Vincent Bernat
  author_email: vincent@bernat.im
  author_url: http://vincent.bernat.im
  date: !binary |-
    MjAxNS0wMy0wNCAxNDowMTo1MSArMDEwMA==
  date_gmt: !binary |-
    MjAxNS0wMy0wNCAxMzowMTo1MSArMDEwMA==
  content: ! 'I am using this script to fix the ISO image to enable serial console:
    github.com/vincentbernat/network-lab/blob/master/images/fix-arista-veos-iso-serial.sh
    (but I didn''t test it recently).'
- id: 8895
  author: ukccie
  author_email: ukccie24@gmail.com
  author_url: ''
  date: !binary |-
    MjAxNS0wMy0yNyAxMjowMzoxOSArMDEwMA==
  date_gmt: !binary |-
    MjAxNS0wMy0yNyAxMTowMzoxOSArMDEwMA==
  content: ! "I am trying to Lab the mlag with 3 switches. port-channel is up but
    can not ping the peer vlan ip on other switch. I don't believe this is a vEOS
    issue.\r\n\r\nThanks."
- id: 8928
  author: Thananchai
  author_email: thanachaip@chunbk.com
  author_url: http://running-config.blogspot.com
  date: !binary |-
    MjAxNS0wMy0zMSAxNDoxOTozMCArMDIwMA==
  date_gmt: !binary |-
    MjAxNS0wMy0zMSAxMjoxOTozMCArMDIwMA==
  content: ! "I can use eth3, eth4 to ping between two arista switch but in eth 1,
    eth 2 i can't ping or send another traffic across them and L2 protocol such as
    lldp is not working\r\n\r\nin my lab on arista switch i can used this port\r\n
    - management\r\n - eth3,4 (some port is ok, some port is not working)"
- id: 9063
  author: ramIndia
  author_email: talk2ram@gmail.com
  author_url: ''
  date: !binary |-
    MjAxNS0wNC0xNyAwNDo0NjoyMiArMDIwMA==
  date_gmt: !binary |-
    MjAxNS0wNC0xNyAwMjo0NjoyMiArMDIwMA==
  content: ! "iam using vEOS-lab-4.14.2F.vmdk\r\nBut i do not see ISO Image how can
    i get ISO Image any help here ?"
- id: 9275
  author: Mitch
  author_email: mitch@aol.com
  author_url: ''
  date: !binary |-
    MjAxNS0wNS0wNiAwNjoyODoyMCArMDIwMA==
  date_gmt: !binary |-
    MjAxNS0wNS0wNiAwNDoyODoyMCArMDIwMA==
  content: ! "Hi guys,\r\nvEOS is not starting for me. The UI says the node is started
    but I still see the stop icon, here is what I am able to see in the logs:\r\n/opt/unetlab/wrappers/qemu_wrapper
    -T 0 -D 4 -t \"vEOS\" -d 0 -F /opt/qemu/bin/qemu-system-x86_64
    -- -machine type=pc-1.0,accel=kvm -serial mon:stdio -nographic -display none -nodefconfig
    -rtc base=utc -no-shutdown -boot order=d -smp 1 -m 1024 -name \\\"vEOS\\\" -device
    e1000,netdev=net0,mac=52:00:00:04:00:00 -netdev tap,id=net0,ifname=vunl0_4_0,script=no
    -device e1000,netdev=net1,mac=52:00:00:04:00:01 -netdev tap,id=net1,ifname=vunl0_4_1,script=no
    -device e1000,netdev=net2,mac=52:00:00:04:00:02 -netdev tap,id=net2,ifname=vunl0_4_2,script=no
    -device e1000,netdev=net3,mac=52:00:00:04:00:03 -netdev tap,id=net3,ifname=vunl0_4_3,script=no
    -hda \"\\\"/opt/unetlab/tmp/0/Test1/4/hda.qcow2\\\"\"
    -cdrom \"\\\"/opt/unetlab/tmp/0/Test1/4/cdrom.iso\\\"\"
    >> \"/opt/unetlab/tmp/0/Test1/4/../vEOS\" 2>&amp;1
    &amp;\r\n\r\nAnybody seen this before?\r\n\r\nRegards,\r\nMitch"
---

The Arista vEOS is available as a virtual router also.

<a id="more"></a><a id="more-232"></a>
## Supported Arista vEOS images
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
<td>veos-4.14.0F</td>
<td>vEOS-4.14.0F.vmdk
Aboot-qemu-serial-2.0.8.iso</td>
<td>4.14.0F</td>
<td>1</td>
<td>1024</td>
</tr>
</tbody>
</table>
## Importing Arista vEOS images
The following procedure refers to the most recent and supported image only. Older images should work too. Remember that UNetLab image names are strongly suggested for lab portability.

Upload the downloaded image to the UNetLab master node using for example <a title="FileZilla" href="https://filezilla-project.org/">FileZilla</a> or <a title="WinSCP" href="http://winscp.net/">WinSCP</a>. Then login as root using SSH protocol and convert it:
<pre># mkdir tmp
# cd tmp
# qemu-img convert -f vmdk -O qcow2 ../vEOS-4.14.0F.vmdk hda.qcow2</pre>
Create the UNetLab image:
<pre># mkdir -p /opt/unetlab/addons/qemu/veos-4.14.0F
# mv hda.qcow2 /opt/unetlab/addons/qemu/veos-4.14.0F
# mv Aboot-qemu-serial-2.0.8.iso /opt/unetlab/addons/qemu/veos-4.14.0F/cdrom.iso</pre>
Clean and fix permissions:
<pre># cd ..
# rm -rf tmp
# /opt/unetlab/wrappers/unl_wrapper -a fixpermissions</pre>
Default username is "<strong>admin</strong>" without password.
## References

* <a title="Arista EOS" href="https://eos.arista.com/">Arista EOS</a>

