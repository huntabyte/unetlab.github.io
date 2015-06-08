---
layout: post
status: publish
published: true
title: Adding Cisco vIOS images (from All-in-One Virtual Machine)
author:
  display_name: Andrea Dainese
  login: admin
  email: andrea.dainese@gmail.com
  url: ''
author_login: admin
author_email: andrea.dainese@gmail.com
excerpt: ! "The Cisco vIOS router is released for OnePk developers within the All-in-One
  Virtual Machine.\r\n"
wordpress_id: 265
wordpress_url: http://www.unetlab.com/?p=265
date: !binary |-
  MjAxNC0xMS0wNCAxMTozMjowMCArMDEwMA==
date_gmt: !binary |-
  MjAxNC0xMS0wNCAxMDozMjowMCArMDEwMA==
categories:
- HowTo
tags:
- Images
- Cisco
- vIOS
comments:
- id: 7392
  author: Mohammed
  author_email: moh.elhassan@gmail.com
  author_url: ''
  date: !binary |-
    MjAxNC0xMS0wNSAwNTozNzo0MSArMDEwMA==
  date_gmt: !binary |-
    MjAxNC0xMS0wNSAwNDozNzo0MSArMDEwMA==
  content: ! "Hi Andrea,\r\nI've got this error in the last steps:\r\n#qemu-nbd -d
    /dev/nbd0\r\n[1287.225985] block nbd0: Unexpected reply (ffff88003c95bc78)\r\n/dev/nbd0
    disconnected"
- id: 7396
  author: admin
  author_email: andrea.dainese@gmail.com
  author_url: ''
  date: !binary |-
    MjAxNC0xMS0wNSAwODozMDozMCArMDEwMA==
  date_gmt: !binary |-
    MjAxNC0xMS0wNSAwNzozMDozMCArMDEwMA==
  content: I suppose you can go on because the nbd0 is disconnected.
- id: 7398
  author: Mohammed
  author_email: moh.elhassan@gmail.com
  author_url: ''
  date: !binary |-
    MjAxNC0xMS0wNSAxNTo0NToyNyArMDEwMA==
  date_gmt: !binary |-
    MjAxNC0xMS0wNSAxNDo0NToyNyArMDEwMA==
  content: ! "ahaaaaa, got it right this time ;)\r\nnbd0 was disconnected but I wasn't
    able to find the vIOS image inside the http interface, however, I re-did the steps
    again and got the same error but ignored it and it worked.\r\n\r\nSo basically
    this error is ignore-able without any problems.\r\n\r\nThanks Admin"
- id: 7400
  author: Mohammed
  author_email: moh.elhassan@gmail.com
  author_url: ''
  date: !binary |-
    MjAxNC0xMS0wNiAwODoyNDo1MyArMDEwMA==
  date_gmt: !binary |-
    MjAxNC0xMS0wNiAwNzoyNDo1MyArMDEwMA==
  content: ! "Hi again,\r\n\r\n1. How can I connect ethernet ints in vIOS network?\r\n\r\n2.
    No Serial ints in vIOS. vIOS limitation?\r\n\r\nThanks,"
- id: 7404
  author: admin
  author_email: andrea.dainese@gmail.com
  author_url: ''
  date: !binary |-
    MjAxNC0xMS0wNiAyMjozOToyOSArMDEwMA==
  date_gmt: !binary |-
    MjAxNC0xMS0wNiAyMTozOToyOSArMDEwMA==
  content: ! '1. Read the doc: ethernet interfaces can be connected to Networks only.

    2. Of course it is! Again read docs. Serials are supported on IOU only, and it
    will be on dynamips in the future. Qemu images cannot have serial interfaces.'
- id: 7406
  author: Mohammed
  author_email: moh.elhassan@gmail.com
  author_url: ''
  date: !binary |-
    MjAxNC0xMS0wNyAwNjoxNToyNyArMDEwMA==
  date_gmt: !binary |-
    MjAxNC0xMS0wNyAwNToxNToyNyArMDEwMA==
  content: What Docs are you referring to exactly? because your Docs here mention
    nothing about what I was asking about.
- id: 7407
  author: admin
  author_email: andrea.dainese@gmail.com
  author_url: ''
  date: !binary |-
    MjAxNC0xMS0wNyAwODozNzo1MCArMDEwMA==
  date_gmt: !binary |-
    MjAxNC0xMS0wNyAwNzozNzo1MCArMDEwMA==
  content: ! 'http://www.unetlab.com/2014/11/create-the-first-lab/


    "Ethernet interfaces can be connected to networks only. There is no P2P ethernet
    link, a network must be used. Serial interfaces, currently available for IOU/IOL
    nodes only, are P2P."'
- id: 7467
  author: Davidodav
  author_email: davidodav3@gmail.com
  author_url: ''
  date: !binary |-
    MjAxNC0xMS0xNCAyMzoyOTo0MiArMDEwMA==
  date_gmt: !binary |-
    MjAxNC0xMS0xNCAyMjoyOTo0MiArMDEwMA==
  content: ! "I got the following error when i tried to extract  it:\r\n\r\nroot@DAVE-UNL:~/tmp#
    tar xf ../all-in-one-VM-1.3.0.181.ova \r\ntar: Unexpected EOF in archive\r\ntar:
    rmtlseek not stopped at a record boundary\r\ntar: Error is not recoverable: exiting
    now\r\nroot@DAVE-UNL:~/tmp# \r\n\r\ni think this is due to an incomplete download
    and tried to download it again from cisco site. But sill the same issue. What
    do you advise?"
- id: 7479
  author: admin
  author_email: andrea.dainese@gmail.com
  author_url: ''
  date: !binary |-
    MjAxNC0xMS0xNSAxNToyNjo1MyArMDEwMA==
  date_gmt: !binary |-
    MjAxNC0xMS0xNSAxNDoyNjo1MyArMDEwMA==
  content: Seems it's corrupted. Try to download it again.
- id: 7679
  author: Stephan
  author_email: stephan@baenisch.de
  author_url: ''
  date: !binary |-
    MjAxNC0xMi0xMSAxNjo1MzozNCArMDEwMA==
  date_gmt: !binary |-
    MjAxNC0xMi0xMSAxNTo1MzozNCArMDEwMA==
  content: ! "Hi Andrea,\r\n\r\nFirst of all many thanks for your efforts providing
    the two great pieces of software webiou and the new unetlab!\r\n\r\nAbove you
    mention \"ios-adventerprisek9-m-15.4-1.2.0-173\" as the recommended name for the
    vIOS images/folder. But this doesn&rsquo;t work and the images is not shown
    in the menu. \r\n\r\nThe vios.php matches on ^vios in line 20. So should be corrected
    here or there :-)\r\n\r\nMany thanks again!\r\n\r\nRegards\r\nStephan"
- id: 7695
  author: admin
  author_email: andrea.dainese@gmail.com
  author_url: ''
  date: !binary |-
    MjAxNC0xMi0xMSAyMjozNToxOSArMDEwMA==
  date_gmt: !binary |-
    MjAxNC0xMi0xMSAyMTozNToxOSArMDEwMA==
  content: You're totally right! Thank you for pointing it out!
- id: 7723
  author: Panya
  author_email: pwatta@gmail.com
  author_url: ''
  date: !binary |-
    MjAxNC0xMi0xNCAxNzoyNToxMiArMDEwMA==
  date_gmt: !binary |-
    MjAxNC0xMi0xNCAxNjoyNToxMiArMDEwMA==
  content: Could you please provide instruction for vIOS L2?
- id: 7802
  author: system
  author_email: system@ccie-lab.cn
  author_url: http://www.ccie-lab.cn
  date: !binary |-
    MjAxNC0xMi0yNCAxODowNToyOSArMDEwMA==
  date_gmt: !binary |-
    MjAxNC0xMi0yNCAxNzowNToyOSArMDEwMA==
  content: The file download link [removed]
- id: 7819
  author: admin
  author_email: andrea.dainese@gmail.com
  author_url: ''
  date: !binary |-
    MjAxNC0xMi0yNSAyMjo0MDo0OCArMDEwMA==
  date_gmt: !binary |-
    MjAxNC0xMi0yNSAyMTo0MDo0OCArMDEwMA==
  content: I cannot allow download links.
- id: 7885
  author: Panya
  author_email: pwatta@gmail.com
  author_url: ''
  date: !binary |-
    MjAxNS0wMS0wMyAwNzoyNDo1MiArMDEwMA==
  date_gmt: !binary |-
    MjAxNS0wMS0wMyAwNjoyNDo1MiArMDEwMA==
  content: ! "Hi Admin,\r\n\r\nI founded that vIOS always used 25-30% of CPU for one
    node below are my information.\r\n\r\nCisco IOS Software, IOSv Software (VIOS-ADVENTERPRISEK9-M),
    Version 15.4(2)T1, RELEASE SOFTWARE (fc3)\r\n\r\n  PID USER      PR  NI    VIRT
    \   RES    SHR S  %CPU %MEM     TIME+ COMMAND\r\n20437 root      20   0  785624
    314756   4492 S  25.2  2.5   5:43.61 qemu-syste+\r\n\r\nroot@unl01:~# iostat\r\nLinux
    3.13.0-43-generic (unl01)         01/03/2015      _x86_64_        (4 CPU)\r\n\r\navg-cpu:
    \ %user   %nice %system %iowait  %steal   %idle\r\n           9.44    0.00    2.24
    \   0.04    0.00   88.28\r\n\r\nDevice:            tps    kB_read/s    kB_wrtn/s
    \   kB_read    kB_wrtn\r\nsda               3.19       189.10       258.40    2988061
    \   4083101\r\ndm-0              3.88       188.85       258.40    2984141    4083080\r\ndm-1
    \             0.02         0.06         0.00        976          0\r\n\r\nroot@unl01:~#
    ps -aux | grep qemu\r\nroot     20432  0.1  0.0   6396  2468 ?        S    06:16
    \  0:00 /opt/unetlab/wrappers/qemu_wrapper -T 0 -D 6 -t Switch
    -d 0 -F /opt/qemu/bin/qemu-system-i386 -- -machine type=pc-1.0,accel=kvm:tcg
    -serial mon:stdio -nographic -nodefconfig -nodefaults -rtc base=utc -no-shutdown
    -boot order=c -smp 1 -m 512 -name \"Switch\" -device e1000,netdev=net0,mac=52:00:00:06:00:00
    -netdev tap,id=net0,ifname=vunl0_6_0,script=no -device e1000,netdev=net1,mac=52:00:00:06:00:01
    -netdev tap,id=net1,ifname=vunl0_6_1,script=no -device e1000,netdev=net2,mac=52:00:00:06:00:02
    -netdev tap,id=net2,ifname=vunl0_6_2,script=no -device e1000,netdev=net3,mac=52:00:00:06:00:03
    -netdev tap,id=net3,ifname=vunl0_6_3,script=no -device e1000,netdev=net4,mac=52:00:00:06:00:04
    -netdev tap,id=net4,ifname=vunl0_6_4,script=no -device e1000,netdev=net5,mac=52:00:00:06:00:05
    -netdev tap,id=net5,ifname=vunl0_6_5,script=no -hda \"/opt/unetlab/tmp/0/1/6/hda.qcow2\"\r\nroot
    \    20435  0.0  0.0   6396  2144 ?        S    06:16   0:00 /opt/unetlab/wrappers/qemu_wrapper
    -T 0 -D 6 -t Switch -d 0 -F /opt/qemu/bin/qemu-system-i386 --
    -machine type=pc-1.0,accel=kvm:tcg -serial mon:stdio -nographic -nodefconfig -nodefaults
    -rtc base=utc -no-shutdown -boot order=c -smp 1 -m 512 -name \"Switch\" -device
    e1000,netdev=net0,mac=52:00:00:06:00:00 -netdev tap,id=net0,ifname=vunl0_6_0,script=no
    -device e1000,netdev=net1,mac=52:00:00:06:00:01 -netdev tap,id=net1,ifname=vunl0_6_1,script=no
    -device e1000,netdev=net2,mac=52:00:00:06:00:02 -netdev tap,id=net2,ifname=vunl0_6_2,script=no
    -device e1000,netdev=net3,mac=52:00:00:06:00:03 -netdev tap,id=net3,ifname=vunl0_6_3,script=no
    -device e1000,netdev=net4,mac=52:00:00:06:00:04 -netdev tap,id=net4,ifname=vunl0_6_4,script=no
    -device e1000,netdev=net5,mac=52:00:00:06:00:05 -netdev tap,id=net5,ifname=vunl0_6_5,script=no
    -hda \"/opt/unetlab/tmp/0/1/6/hda.qcow2\"\r\nroot
    \    20436  0.0  0.0   4444   652 ?        S    06:16   0:00 sh -c /opt/qem
    /bin/qemu-system-i386 -machine type=pc-1.0,accel=kvm:tcg -serial mon:stdio
    -nographic -nodefconfig -nodefaults -rtc base=utc -no-shutdown -boot order=c -smp
    1 -m 512 -name \"Switch\" -device e1000,netdev=net0,mac=52:00:00:06:00:00 -netdev
    tap,id=net0,ifname=vunl0_6_0,script=no -device e1000,netdev=net1,mac=52:00:00:06:00:01
    -netdev tap,id=net1,ifname=vunl0_6_1,script=no -device e1000,netdev=net2,mac=52:00:00:06:00:02
    -netdev tap,id=net2,ifname=vunl0_6_2,script=no -device e1000,netdev=net3,mac=52:00:00:06:00:03
    -netdev tap,id=net3,ifname=vunl0_6_3,script=no -device e1000,netdev=net4,mac=52:00:00:06:00:04
    -netdev tap,id=net4,ifname=vunl0_6_4,script=no -device e1000,netdev=net5,mac=52:00:00:06:00:05
    -netdev tap,id=net5,ifname=vunl0_6_5,script=no -hda \"/opt/unetlab/tmp/0/1/6/hda.qcow2\"\r\nroot
    \    20437 82.8  2.5 785624 314756 ?       Sl   06:16   6:03 /opt/qemu/bin/qemu-system-i386
    -machine type=pc-1.0,accel=kvm:tcg -serial mon:stdio -nographic -nodefconfig -nodefaults
    -rtc base=utc -no-shutdown -boot order=c -smp 1 -m 512 -name Switch -device e1000,netdev=net0,mac=52:00:00:06:00:00
    -netdev tap,id=net0,ifname=vunl0_6_0,script=no -device e1000,netdev=net1,mac=52:00:00:06:00:01
    -netdev tap,id=net1,ifname=vunl0_6_1,script=no -device e1000,netdev=net2,mac=52:00:00:06:00:02
    -netdev tap,id=net2,ifname=vunl0_6_2,script=no -device e1000,netdev=net3,mac=52:00:00:06:00:03
    -netdev tap,id=net3,ifname=vunl0_6_3,script=no -device e1000,netdev=net4,mac=52:00:00:06:00:04
    -netdev tap,id=net4,ifname=vunl0_6_4,script=no -device e1000,netdev=net5,mac=52:00:00:06:00:05
    -netdev tap,id=net5,ifname=vunl0_6_5,script=no -hda /opt/unetlab/tmp/0/1/6/hda.qcow2\r\nroot
    \    23750  0.0  0.0  10468   928 pts/1    S+   06:23   0:00 grep --color=auto
    qemu\r\n\r\nThx."
- id: 7902
  author: Hansen
  author_email: zm_mail@sina.com
  author_url: ''
  date: !binary |-
    MjAxNS0wMS0wNCAxOTo0NDo0MCArMDEwMA==
  date_gmt: !binary |-
    MjAxNS0wMS0wNCAxODo0NDo0MCArMDEwMA==
  content: I have upgraded my unetlab to UNetLab 0.8.5-72. After I finished it according
    to the guideline, I can't find the ios-adventerprisek9-m-15.4-1.3.0-181 in front
    web page in CISCO vIOS.
- id: 8024
  author: zin
  author_email: kokyawzinoo@gmail.com
  author_url: http://it.mmjp.net
  date: !binary |-
    MjAxNS0wMS0xNyAxMTo1Mzo1MSArMDEwMA==
  date_gmt: !binary |-
    MjAxNS0wMS0xNyAxMDo1Mzo1MSArMDEwMA==
  content: ! "I got below error :)\r\nroot@unl01:/tmp# qemu-nbd -r -c /dev/nbd0
    all-in-one-VM-1.2.0-173-disk1.vmdk\r\n/build/buildd/qemu-2.0.0+dfsg/nbd.c:nbd_init():L504:
    Failed to set NBD socket\r\n/build/buildd/qemu-2.0.0+dfsg/nbd.c:nbd_receive_request():L638:
    read failed"
- id: 8337
  author: Jubal
  author_email: giljubal@gmail.com
  author_url: ''
  date: !binary |-
    MjAxNS0wMi0wNiAyMDoyMzozMCArMDEwMA==
  date_gmt: !binary |-
    MjAxNS0wMi0wNiAxOToyMzozMCArMDEwMA==
  content: ! "I have this problem:\r\nAfter I finished it according to the guideline,
    I cannot find the ios-adventerprisek9-m-15.4-1.3.0-181 in front web page in CISCO
    vIOS.\r\nI try to run vios con this command:\r\n/qemu-system-x86_64 --enable-kvm
    -serial mon:stdio -nographic -boot order=c,once=d -smp 1 -m 3072 -usb -hda /opt/unetlab/addons/qemu/ios-adventerprisek9-m-15.4-1.3.0-181/hda.qcow2\r\nMoreover,
    start correctly:\r\nps -aux | grep qemu-system-x86\r\nroot      6426 57.1  4.7
    3568176 299708 pts/0  Sl+  19:13   4:37 /usr/bin/qemu-system-x86_64
    --enable-kvm -serial mon:stdio -nographic -boot order=c,once=d -smp 1 -m 3072
    -usb -hda hda.qcow2\r\nI do not understand what the problem is.\r\n\r\nThanks"
- id: 8370
  author: Andrea Dainese
  author_email: andrea.dainese@gmail.com
  author_url: ''
  date: !binary |-
    MjAxNS0wMi0wOSAxMzoyNDozNiArMDEwMA==
  date_gmt: !binary |-
    MjAxNS0wMi0wOSAxMjoyNDozNiArMDEwMA==
  content: Because you must use the prefix! (vios- for vIOS).
- id: 8420
  author: Tom
  author_email: tkranjec@yahoo.com
  author_url: ''
  date: !binary |-
    MjAxNS0wMi0xNCAxNDowOTozNiArMDEwMA==
  date_gmt: !binary |-
    MjAxNS0wMi0xNCAxMzowOTozNiArMDEwMA==
  content: ! "Hi guys,\r\n\r\nIs it procedure for L2 image same and what extension
    needs to be vios-?"
- id: 8432
  author: raipraveen83
  author_email: raipraveen83@gmail.com
  author_url: ''
  date: !binary |-
    MjAxNS0wMi0xNiAxNDoxMjowNCArMDEwMA==
  date_gmt: !binary |-
    MjAxNS0wMi0xNiAxMzoxMjowNCArMDEwMA==
  content: ! "Hi Andrea,\r\n\r\n  after uploading vIOS all in one image as documented
    above getting error while running fix up permission.please refer below error report
    and provide what to do. i am not even able to web page through ip address.\r\n\r\nroot@unl01:~#
    /opt/unetlab/wrappers/unl_wrapper -a fixpermissions\r\nERROR:
    invalid action \"fixpermissions\".\r\nERROR: Action is not valid.\r\nUsage: /opt/unetlab/wrappers/unl_wrapper
    \r\nStandard Options:\r\n-T      Tenant ID (default 0)\r\n-D   ***Device ID (default
    \"all\")\r\n-F    **Lab file\r\n-a     *Action (\"clean\", \"start\", \"stop\",
    \"kill\", \"status\" or \"console\")\r\n  * Mandatory option\r\n ** Not required
    for \"kill\"\r\n*** Action \"console\" must have a numeric Device ID"
- id: 8435
  author: raipraveen83
  author_email: raipraveen83@gmail.com
  author_url: ''
  date: !binary |-
    MjAxNS0wMi0xNiAyMDowMjozNSArMDEwMA==
  date_gmt: !binary |-
    MjAxNS0wMi0xNiAxOTowMjozNSArMDEwMA==
  content: ! "prefix i did'nt get friend i just followed the steps you mention.please
    corret me i am right or wrong prefix vios means command look like this\r\n\r\n/opt/unetlab/wrappers/unl_wrapper
    -vios fixpermissions"
- id: 8444
  author: raipraveen83
  author_email: raipraveen83@gmail.com
  author_url: ''
  date: !binary |-
    MjAxNS0wMi0xOCAwOTowMToyMyArMDEwMA==
  date_gmt: !binary |-
    MjAxNS0wMi0xOCAwODowMToyMyArMDEwMA==
  content: ! "anyone here help me ...i uploaded images vIOS as instructed in documentation
    and when i try to run command \r\n\r\n/opt/unetlab/wrappers/unl_wrapper
    -a fixpermissions get error below\r\n\r\nERROR: invalid action &ldquo;fixpermissions&rdquo;.\r\nERROR:
    Action is not valid.\r\nUsage: /opt/unetlab/wrappers/unl_wrapper\r\nStandard
    Options:\r\n-T Tenant ID (default 0)\r\n-D ***Device ID (default &ldquo;all&rdquo;)\r\n-F
    **Lab file\r\n-a *Action (&ldquo;clean&rdquo;, &ldquo;start&rdquo;, &ldquo;stop&rdquo;,
    &ldquo;kill&rdquo;, &ldquo;status&rdquo; or &ldquo;console&rdquo;)\r\n* Mandatory
    option\r\n** Not required for &ldquo;kill&rdquo;\r\n*** Action &ldquo;console&rdquo;
    must have a numeric Device ID\r\n\r\nand becoz of this when i create topology
    i am not able to see my uploaded vios image in list as well.\r\n\r\nhope some
    one guide me to do it"
- id: 8454
  author: Andrea Dainese
  author_email: andrea.dainese@gmail.com
  author_url: ''
  date: !binary |-
    MjAxNS0wMi0xOSAwODozODowNCArMDEwMA==
  date_gmt: !binary |-
    MjAxNS0wMi0xOSAwNzozODowNCArMDEwMA==
  content: http://lmgtfy.com/?q=ERROR%3A+invalid+action+%E2%80%9Cfixpermissions%E2%80%9D&l=1
- id: 8455
  author: Stuart Fordham
  author_email: stu@802101.com
  author_url: http://www.802101.com
  date: !binary |-
    MjAxNS0wMi0xOSAwOTowNDoxMCArMDEwMA==
  date_gmt: !binary |-
    MjAxNS0wMi0xOSAwODowNDoxMCArMDEwMA==
  content: ! "Praveen\r\n\r\nFollow the upgrade steps:\r\n\r\nhttp://www.unetlab.com/2014/11/upgrade-unetlab-installation/\r\n\r\nI
    had a similar issue"
- id: 8489
  author: Liks
  author_email: p0wershell@mail.ru
  author_url: ''
  date: !binary |-
    MjAxNS0wMi0yNSAxNzoyNzo1NSArMDEwMA==
  date_gmt: !binary |-
    MjAxNS0wMi0yNSAxNjoyNzo1NSArMDEwMA==
  content: ! "Hello, all step fine\r\n\r\nroot@unl01:/opt/unetlab/addons/qemu/ios-adventerprisek9-m-15.4-1.3.0-181#
    ls\r\nhda.qcow2\r\n\r\nbut in menu ( web ) don't see image vIOS\r\n\r\nwhat need
    to do?"
- id: 8496
  author: Andrea Dainese
  author_email: andrea.dainese@gmail.com
  author_url: ''
  date: !binary |-
    MjAxNS0wMi0yNiAwODozMjo1MiArMDEwMA==
  date_gmt: !binary |-
    MjAxNS0wMi0yNiAwNzozMjo1MiArMDEwMA==
  content: it's vios- not ios-
- id: 8568
  author: Wizmatic
  author_email: wizmatic@gmail.com
  author_url: ''
  date: !binary |-
    MjAxNS0wMy0wNCAxMzowNjoyMiArMDEwMA==
  date_gmt: !binary |-
    MjAxNS0wMy0wNCAxMjowNjoyMiArMDEwMA==
  content: I am getting this same error. Any ideas Andreas?
- id: 8592
  author: Majid
  author_email: m.sotoodeh@gmail.com
  author_url: ''
  date: !binary |-
    MjAxNS0wMy0wNSAxNDoxODoyNyArMDEwMA==
  date_gmt: !binary |-
    MjAxNS0wMy0wNSAxMzoxODoyNyArMDEwMA==
  content: ! "Hi\r\n\r\nmany thanks for help and building this fantastic box\r\nfirst,
    I can turn on VIOS but I waited for long time to boot up nothing happened and
    tries to telnet to the port same result\r\n\r\nsecond, in docs above you mentioned
    mounting vmdk to see inside of it but after that you said we convert vmdk to qcow2.
    it mean mounting actually is optional not part of instruction. is this right ?
    if I am wrong what should i do to boot it correctly."
- id: 8661
  author: Dennis
  author_email: flemmig@gmail.com
  author_url: ''
  date: !binary |-
    MjAxNS0wMy0xMCAxNDoyNDo1NyArMDEwMA==
  date_gmt: !binary |-
    MjAxNS0wMy0xMCAxMzoyNDo1NyArMDEwMA==
  content: ! "Hi,\r\n\r\nthe VIOS L3 Router seems to start, but the telnet sessions
    stays black.\r\nI copied the vios-adventerprisek9-m.ova from the running all-in-one
    vm via SCP and into the unetlab /tmp directory. Problem?\r\nAfter this I followed
    the instructions from this on :\r\n\"Uncompress the vIOS OVA to the temporary
    directory:\""
- id: 8662
  author: Dennis
  author_email: flemmig@gmail.com
  author_url: ''
  date: !binary |-
    MjAxNS0wMy0xMCAxNDo0MDoxNSArMDEwMA==
  date_gmt: !binary |-
    MjAxNS0wMy0xMCAxMzo0MDoxNSArMDEwMA==
  content: ! "With this the router starts fine : \r\nps -aux | grep qemu-system-x86\r\nroot
    6426 57.1 4.7 3568176 299708 pts/0 Sl+ 19:13 4:37 /usr/bin/qemu-system-x86_64
    &ndash;enable-kvm -serial mon:stdio -nographic -boot order=c,once=d -smp 1 -m
    3072 -usb -hda hda.qcow2"
- id: 8663
  author: Dennis
  author_email: flemmig@gmail.com
  author_url: ''
  date: !binary |-
    MjAxNS0wMy0xMCAxNDo0ODo0OCArMDEwMA==
  date_gmt: !binary |-
    MjAxNS0wMy0xMCAxMzo0ODo0OCArMDEwMA==
  content: ! "It does work now!\r\nI got the image out of this all-in-one vm  : all-in-one-VM-1.3.0.181.ova\r\nI
    had to rename the folder on unetlab to : vios-adventerprisek9-m15.4-1.3.0-173
    instead of vios-adventerprisek9-m15.4-1.3.0-181 \r\nMistake under the 'Unetlab
    Image Name' above?"
- id: 8664
  author: Andrea Dainese
  author_email: andrea.dainese@gmail.com
  author_url: ''
  date: !binary |-
    MjAxNS0wMy0xMCAxNDo1MjoyOCArMDEwMA==
  date_gmt: !binary |-
    MjAxNS0wMy0xMCAxMzo1MjoyOCArMDEwMA==
  content: Yes, you're totally right! Thx!
- id: 8667
  author: Dennis
  author_email: flemmig@gmail.com
  author_url: ''
  date: !binary |-
    MjAxNS0wMy0xMCAxOToxNzoxNiArMDEwMA==
  date_gmt: !binary |-
    MjAxNS0wMy0xMCAxODoxNzoxNiArMDEwMA==
  content: ! "Unfortunately I am not able to use more than 2 router. \r\nWith 2 the
    CPU is at about 70% - 80%.\r\nIs there a possibility to tweak that?"
- id: 8751
  author: Hemant
  author_email: hemant.rashimalalu@yahoo.com
  author_url: ''
  date: !binary |-
    MjAxNS0wMy0xNSAwOTo1NTo1MyArMDEwMA==
  date_gmt: !binary |-
    MjAxNS0wMy0xNSAwODo1NTo1MyArMDEwMA==
  content: ! "this command is not working  , please help \r\n\r\n\r\n qemu-img convert
    -f vmdk -O qcow2 vios-adventerprisek9-m.vmdk hda.qcow2"
- id: 8766
  author: Andrea Dainese
  author_email: andrea.dainese@gmail.com
  author_url: ''
  date: !binary |-
    MjAxNS0wMy0xNiAxMzowMzo1MCArMDEwMA==
  date_gmt: !binary |-
    MjAxNS0wMy0xNiAxMjowMzo1MCArMDEwMA==
  content: Try /opt/qemu/bin/qemu-img
- id: 8777
  author: jack
  author_email: henanwzy@sina.cn
  author_url: ''
  date: !binary |-
    MjAxNS0wMy0xOCAwNDozNjozOCArMDEwMA==
  date_gmt: !binary |-
    MjAxNS0wMy0xOCAwMzozNjozOCArMDEwMA==
  content: ! "how to find the vios l2 ?\r\ni have already setup the all-in-one-VM-1.3.0.181.ova\r\nbut
    i only have a vios"
- id: 8810
  author: Support
  author_email: noreply@unetlab.com
  author_url: http://www.unetlab.com/
  date: !binary |-
    MjAxNS0wMy0yMCAxNToyNToxMyArMDEwMA==
  date_gmt: !binary |-
    MjAxNS0wMy0yMCAxNDoyNToxMyArMDEwMA==
  content: ! "Hi,\r\n\r\nThose images are available in VIRL"
- id: 8942
  author: raipraveen83
  author_email: raipraveen83@gmail.com
  author_url: ''
  date: !binary |-
    MjAxNS0wNC0wMiAxMzoxODowMyArMDIwMA==
  date_gmt: !binary |-
    MjAxNS0wNC0wMiAxMToxODowMyArMDIwMA==
  content: ! "Hi Dennis\r\n\r\nas you mention command \"ps -aux | grep qemu-system-x86\r\nroot
    6426 57.1 4.7 3568176 299708 pts/0 Sl+ 19:13 4:37 /usr/bin/qemu-system-x86_64
    &ndash;enable-kvm -serial mon:stdio -nographic -boot order=c,once=d -smp 1 -m
    3072 -usb -hda hda.qcow2\" i used it.but it through error invalid option grep"
- id: 8947
  author: Ahmed
  author_email: shafi2ma@hotmail.com
  author_url: ''
  date: !binary |-
    MjAxNS0wNC0wMyAwMjoxNToxNyArMDIwMA==
  date_gmt: !binary |-
    MjAxNS0wNC0wMyAwMDoxNToxNyArMDIwMA==
  content: ! "Hi Andrea,\r\nI tried unetlab today, it is awsome. Run vIOS and vNX-OS,
    \ but did not get through with L2-vIOS.\r\n\r\nI appreciate if you, post the instructions
    for L2-vIOS.\r\nThanks in advance.\r\n\r\nAhmed"
---

The Cisco vIOS router is released for OnePk developers within the All-in-One Virtual Machine.
<a id="more"></a><a id="more-265"></a>
## Supported Cisco vIOS images
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
<td>vios-adventerprisek9-m-15.4-1.2.0-173</td>
<td>all-in-one-VM-1.2.0-173.ova</td>
<td>VIOS-ADVENTERPRISEK9-M 15.4(1.24)T0.9</td>
<td>1</td>
<td>256</td>
</tr>
<tr>
<td>vios-adventerprisek9-m-15.4-1.3.0-181</td>
<td>all-in-one-VM-1.3.0.181.ova</td>
<td>VIOS-ADVENTERPRISEK9-M 15.4(20140730:011659)</td>
<td>1</td>
<td>384</td>
</tr>
</tbody>
</table>
## Importing Cisco vIOS images
The following procedure refers to the most recent and supported image only. Older images should work too. Remember that UNetLab image names are strongly suggested for lab portability.

Upload the downloaded image to the UNetLab master node using for example <a title="FileZilla" href="https://filezilla-project.org/">FileZilla</a> or <a title="WinSCP" href="http://winscp.net/">WinSCP</a>. Then login as root using SSH protocol and uncompress it:
~~~
# mkdir tmp
# cd tmp
# tar xf ../all-in-one-VM-1.3.0.181.ova
~~~
The vIOS images is stored inside the vmdk file. The virtual disk file can be mounted in &ldquo;read-only&rdquo; mode:
~~~
# modprobe nbd max_part=32
# qemu-nbd -r -c /dev/nbd0 all-in-one-VM-1.3.0.181-disk1.vmdk
~~~
The vmdk contains the following partitions:
~~~
# file -s /dev/nbd0p*
/dev/nbd0p1: Linux rev 1.0 ext4 filesystem data, UUID=d650adb8-b5b9-4889-9d88-94dab7d263d9 (extents) (large files) (huge files)
/dev/nbd0p2: x86 boot sector
/dev/nbd0p5: Linux/i386 swap file (new style), version 1 (4K pages), size 523519 pages, no label, UUID=5f28906f-ef02-48c7-a2f8-96d05409077b
~~~
The first partition can be mounted:
~~~
# mount -t ext4 /dev/nbd0p1 /mnt -o ro
~~~
Uncompress the vIOS OVA to the temporary directory:
~~~
# tar xf /mnt/usr/share/vmcloud/data/images/vios-adventerprisek9-m.ova
~~~
Convert the vmdk file to a QEMU compatible format:
~~~
# qemu-img convert -f vmdk -O qcow2 vios-adventerprisek9-m.vmdk hda.qcow2
~~~
Now create the UNetLab image:
~~~
# mkdir -p /opt/unetlab/addons/qemu/vios-adventerprisek9-m-15.4-1.3.0-181
# mv hda.qcow2 /opt/unetlab/addons/qemu/vios-adventerprisek9-m-15.4-1.3.0-181/

~~~
Clean and fix permissions:
~~~
# cd ..
# umount /mnt
# qemu-nbd -d /dev/nbd0
# rmmod nbd
# rm -rf tmp
# /opt/unetlab/wrappers/unl_wrapper -a fixpermissions
~~~
## References

* <a title="Cisco All-in-One Virtual Machine" href="https://developer.cisco.com/site/onepk/downloads/all-in-one-vm/index.gsp">Cisco All-in-One Virtual Machine</a>

