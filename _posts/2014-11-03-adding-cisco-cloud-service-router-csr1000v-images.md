---
layout: post
status: publish
published: true
title: Adding Cisco Cloud Service Router (CSR1000V) images
author:
  display_name: Andrea Dainese
  login: admin
  email: andrea.dainese@gmail.com
  url: ''
author_login: admin
author_email: andrea.dainese@gmail.com
excerpt: ! "The Cisco XRv router is available as a virtual router also.\r\n\r\n"
wordpress_id: 261
wordpress_url: http://www.unetlab.com/?p=261
date: !binary |-
  MjAxNC0xMS0wMyAxNjo1MTozMyArMDEwMA==
date_gmt: !binary |-
  MjAxNC0xMS0wMyAxNTo1MTozMyArMDEwMA==
categories:
- HowTo
tags:
- Images
- Cisco
- CSR1000V
comments:
- id: 7699
  author: Panya
  author_email: pwatta@gmail.com
  author_url: ''
  date: !binary |-
    MjAxNC0xMi0xMiAwOTo0NDowNiArMDEwMA==
  date_gmt: !binary |-
    MjAxNC0xMi0xMiAwODo0NDowNiArMDEwMA==
  content: ! "After add CSR1000v image when I start CSR router from gui device is
    not appear router> but it appear RP_0(diag)> how can to fix it?\r\n\r\nBecause
    I follow all your instruction from 1st until the last line, but after used in
    gui router cannot access to router> as first boot before killall qemu-system-x86_64"
- id: 7840
  author: Ola
  author_email: olamagic@gmail.com
  author_url: ''
  date: !binary |-
    MjAxNC0xMi0yOSAxNjoyNTo1OSArMDEwMA==
  date_gmt: !binary |-
    MjAxNC0xMi0yOSAxNToyNTo1OSArMDEwMA==
  content: ! "Hi Admin,\r\n\r\nAm getting failed to initialize KVM after trying to
    run this cmd \" /usr/bin/qemu-system-x86_64 --enable-kvm -serial mon:stdio
    -nographic -boot order=c,once=d -smp 1 -m 3072 -usb -hda hda.qcow2 -cdrom csr1000v-universalk9.03.13.00.S.154-3.S-ext.iso\""
- id: 7850
  author: admin
  author_email: andrea.dainese@gmail.com
  author_url: ''
  date: !binary |-
    MjAxNC0xMi0zMCAxNzozMDowNSArMDEwMA==
  date_gmt: !binary |-
    MjAxNC0xMi0zMCAxNjozMDowNSArMDEwMA==
  content: That's why yor CPU does not support KVM.
- id: 7963
  author: Cody
  author_email: codylo@gmail.com
  author_url: ''
  date: !binary |-
    MjAxNS0wMS0xMCAxMzoxMzoxNyArMDEwMA==
  date_gmt: !binary |-
    MjAxNS0wMS0xMCAxMjoxMzoxNyArMDEwMA==
  content: ! "Hi Andrea! Thank you for the excellent work. Although I have VIRL but
    currently I still prefer to use UNL as it's simplicity (from my point of view)
    of use. However I have run into an issue which the VM ran out of disk space. I
    have UNL install onto a ESXi 5.5u1 on a HP Z620 workstation, when deploying the
    OVA the disk size is fixed to 20G. When I add an instance of qemu VMs such as
    Arista and CSR1000v, each device will have it's own disk being copied from the
    template to the folder /opt/unetlab/tmp/. For example each of
    the disk of a CSR1000v is about 1.3G so when I run about 12 of them the whole
    disk will be filled up.\r\n\r\nTried extend the VM disk but don't have idea on
    how to extend the partition even I see the disk is expanded to 200G in the hypervisor.
    Is there any quick trick to extend the root partition? Thank you!"
- id: 7977
  author: admin
  author_email: andrea.dainese@gmail.com
  author_url: ''
  date: !binary |-
    MjAxNS0wMS0xMiAwOToxMTo1MCArMDEwMA==
  date_gmt: !binary |-
    MjAxNS0wMS0xMiAwODoxMTo1MCArMDEwMA==
  content: Just updated the FAQ on doc page, please check and let me know if it works
    for you.
- id: 7994
  author: Cody
  author_email: codylo@gmail.com
  author_url: ''
  date: !binary |-
    MjAxNS0wMS0xNCAwNDozNzozNCArMDEwMA==
  date_gmt: !binary |-
    MjAxNS0wMS0xNCAwMzozNzozNCArMDEwMA==
  content: Working! Thank  you very much for your quick response!
- id: 8361
  author: Rizwan
  author_email: rizwanafzal79@yahoo.com
  author_url: ''
  date: !binary |-
    MjAxNS0wMi0wOCAwOToyMjo1MyArMDEwMA==
  date_gmt: !binary |-
    MjAxNS0wMi0wOCAwODoyMjo1MyArMDEwMA==
  content: ! "In my case, it is stuck at Calculating SHA-1 hash...\r\n\r\n  Booting
    'CSR 1000V Serial Console -- Wed-03-Sep-14-12:55'\r\n\r\nroot (cd)\r\n Filesystem
    type is iso9660, using whole disk\r\nkernel /boot/csr1000v-universalk9.03.13.00a.S.154-3.S0a-ext.SPA.bin
    rw root=/de\r\nv/ram quiet console= max_loop=64 HARDWARE=virtual SR_BOOT=cdrom:csr1000v-univer\r\nsalk9.03.13.00a.S.154-3.S0a-ext.iso\r\npackage
    header rev 1 structure detected\r\nCalculating SHA-1 hash...\r\n\r\n\r\n\r\nAny
    ideas??? I am running on Vmware workstation."
- id: 8600
  author: router76
  author_email: nomanahmad@gmail.com
  author_url: ''
  date: !binary |-
    MjAxNS0wMy0wNSAxODoyNjoxNSArMDEwMA==
  date_gmt: !binary |-
    MjAxNS0wMy0wNSAxNzoyNjoxNSArMDEwMA==
  content: ! "Hi Admin,\r\n  After executing this command below, I am getting memory
    error.\r\n\r\n/usr/bin/qemu-system-x86_64 --enable-kvm -serial mon:stdio
    -nographic -boot order=c,once=d -smp 1 -m 3072 -usb -hda hda.qcow2 -cdrom csr1000v-universalk9.03.10.05.S.153-3.S5-ext.iso\r\n\r\nCannot
    setup guest memory \"pc.ram'. Cannot allocate memory.\r\n\r\nKindly Advise.\r\n\r\n\r\n\r\nThanks"
- id: 8601
  author: router76
  author_email: nomanahmad@gmail.com
  author_url: ''
  date: !binary |-
    MjAxNS0wMy0wNSAxODoyOTozNCArMDEwMA==
  date_gmt: !binary |-
    MjAxNS0wMy0wNSAxNzoyOTozNCArMDEwMA==
  content: ! "Sorry made a mistake in copy paste. The image name is\r\n\r\n/usr/bin/qemu-system-x86_64
    &ndash;enable-kvm -serial mon:stdio -nographic -boot order=c,once=d -smp 1 -m
    3072 -usb -hda hda.qcow2 -cdrom \r\ncsr1000v-universalk9.03.13.01.S.154-3.S1-ext.iso\r\n\r\nThanks..."
- id: 8638
  author: NpN
  author_email: cnsphng@gmail.com
  author_url: ''
  date: !binary |-
    MjAxNS0wMy0wOSAwMzo0NToyOCArMDEwMA==
  date_gmt: !binary |-
    MjAxNS0wMy0wOSAwMjo0NToyOCArMDEwMA==
  content: ! "is there anyway i could check my CPU if it support KVM. My Mac retina
    is working but my ESXi 5.5 using Xeon E5 is not.\r\n\r\nThanks!"
- id: 9043
  author: shakti singh
  author_email: shaktichouhan555@gmail.com
  author_url: ''
  date: !binary |-
    MjAxNS0wNC0xNSAxMTo0NTo0MyArMDIwMA==
  date_gmt: !binary |-
    MjAxNS0wNC0xNSAwOTo0NTo0MyArMDIwMA==
  content: how we can copy paste the commands from text to UNL CLI window
- id: 9077
  author: ramIndia
  author_email: talk2ram@gmail.com
  author_url: ''
  date: !binary |-
    MjAxNS0wNC0xNyAyMjo1NjozMiArMDIwMA==
  date_gmt: !binary |-
    MjAxNS0wNC0xNyAyMDo1NjozMiArMDIwMA==
  content: ! "Shakti,\r\n\r\nBetter login using PUTTY to ssh you can not paste command
    in console.\r\n\r\nRam"
- id: 9346
  author: Tuan Nguyen
  author_email: viva.anything@gmail.com
  author_url: ''
  date: !binary |-
    MjAxNS0wNS0wOSAwNTozMjo1MSArMDIwMA==
  date_gmt: !binary |-
    MjAxNS0wNS0wOSAwMzozMjo1MSArMDIwMA==
  content: I have the same issue. Is there any work around this, please?
- id: 9351
  author: Tuan Nguyen
  author_email: viva.anything@gmail.com
  author_url: ''
  date: !binary |-
    MjAxNS0wNS0wOSAwOTo0MzowMiArMDIwMA==
  date_gmt: !binary |-
    MjAxNS0wNS0wOSAwNzo0MzowMiArMDIwMA==
  content: ! "Never mind. I tried to start installing it again, step by step as the
    guide and it worked.\r\nThanks so much Andrea!"
---

The Cisco XRv router is available as a virtual router also.

<a id="more"></a><a id="more-261"></a>
## Supported Cisco CSR1000V images
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
<td>csr1000v-universalk9-15.4-2S</td>
<td>csr1000v-universalk9.03.12.00.S.154-2.S-std.ova</td>
<td>X86_64_LINUX_IOSD-UNIVERSALK9-M 15.4(2)S</td>
<td>1</td>
<td>2560</td>
</tr>
<tr>
<td>csr1000v-universalk9-15.4-3S</td>
<td>csr1000v-universalk9.03.13.00.S.154-3.S-ext.ova</td>
<td>X86_64_LINUX_IOSD-UNIVERSALK9-M 15.4(3)S</td>
<td>1</td>
<td>2560</td>
</tr>
</tbody>
</table>
## Importing Cisco CSR1000V images
The following procedure refers to the most recent and supported image only. Older images should work too. Remember that UNetLab image names are strongly suggested for lab portability.

Upload the downloaded image to the UNetLab master node using for example <a title="FileZilla" href="https://filezilla-project.org/">FileZilla</a> or <a title="WinSCP" href="http://winscp.net/">WinSCP</a>. Then login as root using SSH protocol and uncompress it:
~~~
# mkdir tmp
# cd tmp
# tar xf ../csr1000v-universalk9.03.13.00.S.154-3.S-ext.ova
~~~
Then convert the disk to the qcow2 format:
~~~
# qemu-img convert -f vmdk -O qcow2 csr1000v_harddisk.vmdk hda.qcow2
~~~
Start the first boot installation:
~~~
# /usr/bin/qemu-system-x86_64 --enable-kvm -serial mon:stdio -nographic -boot order=c,once=d -smp 1 -m 3072 -usb -hda hda.qcow2 -cdrom csr1000v-universalk9.03.13.00.S.154-3.S-ext.iso
~~~
Press any key to interrupt the boot process, and select the following image:
~~~
CSR 1000V Serial Console -- Sun-27-Jul-14-15:56
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
# killall qemu-system-x86_64
# mkdir -p /opt/unetlab/addons/qemu/csr1000v-universalk9-15.4-3S
# mv hda.qcow2 /opt/unetlab/addons/qemu/csr1000v-universalk9-15.4-3S
~~~
Clean and fix permissions:
~~~
# cd ..
# rm -rf tmp
# /opt/unetlab/wrappers/unl_wrapper -a fixpermissions
~~~
Default username is "**admin**" without password.
## References

* <a title="Cisco Cloud Services Router 1000V Series" href="http://www.cisco.com/c/en/us/products/routers/cloud-services-router-1000v-series/index.html">Cisco Cloud Services Router 1000V Series</a>

