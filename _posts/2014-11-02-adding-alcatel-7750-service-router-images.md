---
layout: post
status: publish
published: true
title: Adding Alcatel 7750 Service Router images
author:
  display_name: Andrea Dainese
  login: admin
  email: andrea.dainese@gmail.com
  url: ''
author_login: admin
author_email: andrea.dainese@gmail.com
excerpt: ! "The Alcatel 7750 Service Router (SR) is available as a virtual router
  also.\r\n\r\n"
wordpress_id: 50
wordpress_url: http://www.unetlab.com/?p=50
date: !binary |-
  MjAxNC0xMS0wMiAxMTowMDoyNCArMDEwMA==
date_gmt: !binary |-
  MjAxNC0xMS0wMiAxMDowMDoyNCArMDEwMA==
categories:
- HowTo
tags:
- Images
- Alcatel
- '7750'
comments:
- id: 7401
  author: DA
  author_email: duberney.echeverri@gmail.com
  author_url: ''
  date: !binary |-
    MjAxNC0xMS0wNiAxMzo0OTowNSArMDEwMA==
  date_gmt: !binary |-
    MjAxNC0xMS0wNiAxMjo0OTowNSArMDEwMA==
  content: ! "Hi Andrea,\r\nFirst off, thanks for this fantastic network tool, just
    want to tell you that I followed carefully the above steps but nothing happned,
    the alcatel instances did no come up. Could you please advise.\r\n\r\nThis is
    one of the messages I get on the vmware console.\r\n\r\n[95.426577] kvm [1694]:
    vcpu0 disabled perfctr wrmsr: 0xc2 data 0x0\r\n\r\nSpecs, Intel Core i7/16GB/Ubuntu
    14.04 64b/vmware workstation 10"
- id: 7405
  author: admin
  author_email: andrea.dainese@gmail.com
  author_url: ''
  date: !binary |-
    MjAxNC0xMS0wNiAyMjo0MTowNyArMDEwMA==
  date_gmt: !binary |-
    MjAxNC0xMS0wNiAyMTo0MTowNyArMDEwMA==
  content: Honestly I never seen an Alcatel CLI. I can say that some users has reported
    it's working. If you can, debug it and I'll update the doc. It's a beta, remember
    ;)
- id: 7420
  author: ran_newstar
  author_email: ran_newstar@126.com
  author_url: ''
  date: !binary |-
    MjAxNC0xMS0xMSAwNTo1NDowOSArMDEwMA==
  date_gmt: !binary |-
    MjAxNC0xMS0xMSAwNDo1NDowOSArMDEwMA==
  content: Hi,expert! where can I download TiMOS-SR-12.0.R6-vm.zip?
- id: 7423
  author: admin
  author_email: andrea.dainese@gmail.com
  author_url: ''
  date: !binary |-
    MjAxNC0xMS0xMSAxNToyNDoxMyArMDEwMA==
  date_gmt: !binary |-
    MjAxNC0xMS0xMSAxNDoyNDoxMyArMDEwMA==
  content: ! 'From Alcatel website maybe?


    Don''t try to post here illegal links.'
- id: 7428
  author: ran_newstar
  author_email: ran_newstar@126.com
  author_url: ''
  date: !binary |-
    MjAxNC0xMS0xMiAwNjoxNjozOSArMDEwMA==
  date_gmt: !binary |-
    MjAxNC0xMS0xMiAwNToxNjozOSArMDEwMA==
  content: ! "Hi admin,\r\n  I can't see any screen of CLI from web pages when I click
    the icon to start telnet process.\r\nI'm sure my installation and configuration
    on web is ok.\r\nhow to slove it?\r\nName/prefix:7750SR1\r\nIcon:Router \r\nImage:timos-12.0.R6
    \r\nCPU:2\r\nRAM (MB):2048\r\nEthernets:4\r\nStartup configuration:Unconfigured
    \r\nDelay (s):0"
- id: 7430
  author: admin
  author_email: andrea.dainese@gmail.com
  author_url: ''
  date: !binary |-
    MjAxNC0xMS0xMiAwODo1Njo0MiArMDEwMA==
  date_gmt: !binary |-
    MjAxNC0xMS0xMiAwNzo1Njo0MiArMDEwMA==
  content: ! 'Try with R4. Another user reported the same problem, but when I tested
    on my lab it worked.

    Are you able to debug it?'
- id: 7432
  author: imniceman
  author_email: abc@abc.com
  author_url: ''
  date: !binary |-
    MjAxNC0xMS0xMiAxMDo0MzoyOCArMDEwMA==
  date_gmt: !binary |-
    MjAxNC0xMS0xMiAwOTo0MzoyOCArMDEwMA==
  content: ! "Hi admin,\r\n\r\nhow to connect to external network from vm in this
    enviroment."
- id: 7433
  author: imniceman
  author_email: abc@abc.com
  author_url: ''
  date: !binary |-
    MjAxNC0xMS0xMiAxMDo0OToyNiArMDEwMA==
  date_gmt: !binary |-
    MjAxNC0xMS0xMiAwOTo0OToyNiArMDEwMA==
  content: ! "Hi admin,\r\nhow to create connections between 2 timos vms? if I use
    default 4 ethernets per timos vm.\r\nwhether can you give me some ideas?"
- id: 7435
  author: admin
  author_email: andrea.dainese@gmail.com
  author_url: ''
  date: !binary |-
    MjAxNC0xMS0xMiAxMDo1MjoyNyArMDEwMA==
  date_gmt: !binary |-
    MjAxNC0xMS0xMiAwOTo1MjoyNyArMDEwMA==
  content: You should edit network and set it as pnet0. pnet0 is mapped to the management
    network, but it can shared with labs. A complete howto will follow.
- id: 7436
  author: admin
  author_email: andrea.dainese@gmail.com
  author_url: ''
  date: !binary |-
    MjAxNC0xMS0xMiAxMDo1MzowMiArMDEwMA==
  date_gmt: !binary |-
    MjAxNC0xMS0xMiAwOTo1MzowMiArMDEwMA==
  content: You must create a network and connect both timos to that. I don't know
    timos so I cannot help.
- id: 7437
  author: imniceman
  author_email: abc@abc.com
  author_url: ''
  date: !binary |-
    MjAxNC0xMS0xMiAxMjowMjoxNiArMDEwMA==
  date_gmt: !binary |-
    MjAxNC0xMS0xMiAxMTowMjoxNiArMDEwMA==
  content: ! "which port is e0  in timos?\r\ne0 is  mapped to pnet0.\r\ntimos's port
    style is 1/1/1 something like that."
- id: 7438
  author: admin
  author_email: andrea.dainese@gmail.com
  author_url: ''
  date: !binary |-
    MjAxNC0xMS0xMiAxMjowMzo1MiArMDEwMA==
  date_gmt: !binary |-
    MjAxNC0xMS0xMiAxMTowMzo1MiArMDEwMA==
  content: e0 is the first "installed" ethernet, and should me mapped to the first
    ethernet of timos (maybe the management port).
- id: 7439
  author: imniceman
  author_email: abc@abc.com
  author_url: ''
  date: !binary |-
    MjAxNC0xMS0xMiAxNDozNTo0OCArMDEwMA==
  date_gmt: !binary |-
    MjAxNC0xMS0xMiAxMzozNTo0OCArMDEwMA==
  content: whether can you try it in your lab enviroment?
- id: 7440
  author: admin
  author_email: andrea.dainese@gmail.com
  author_url: ''
  date: !binary |-
    MjAxNC0xMS0xMiAxNDozODozNCArMDEwMA==
  date_gmt: !binary |-
    MjAxNC0xMS0xMiAxMzozODozNCArMDEwMA==
  content: I already did and it worked.
- id: 7442
  author: imniceman
  author_email: abc@abc.com
  author_url: ''
  date: !binary |-
    MjAxNC0xMS0xMiAxNToxMDozMSArMDEwMA==
  date_gmt: !binary |-
    MjAxNC0xMS0xMiAxNDoxMDozMSArMDEwMA==
  content: whether can you show your timos configuration that how to connect external
    network?
- id: 7443
  author: admin
  author_email: andrea.dainese@gmail.com
  author_url: ''
  date: !binary |-
    MjAxNC0xMS0xMiAxNjoyMjo1OSArMDEwMA==
  date_gmt: !binary |-
    MjAxNC0xMS0xMiAxNToyMjo1OSArMDEwMA==
  content: IT's not a timos configuration, it's a unetlab conf. Just connect timos
    to a network, and edit network type from bridge to peth0.
- id: 7449
  author: imniceman
  author_email: abc@abc.com
  author_url: ''
  date: !binary |-
    MjAxNC0xMS0xMyAwMjoxMToxOSArMDEwMA==
  date_gmt: !binary |-
    MjAxNC0xMS0xMyAwMToxMToxOSArMDEwMA==
  content: ! "can you ping pnet0 ip address from timos e0 interface ?\r\nwhich port
    did you use in timos ? \r\nthe port style of timos I mentioned before."
- id: 7454
  author: admin
  author_email: andrea.dainese@gmail.com
  author_url: ''
  date: !binary |-
    MjAxNC0xMS0xMyAwODo0Njo0NCArMDEwMA==
  date_gmt: !binary |-
    MjAxNC0xMS0xMyAwNzo0Njo0NCArMDEwMA==
  content: ! 'I never used an Alcatel in my life. Again: this is a beta version, if
    you''re autonomous to debug it, and you like to help, use it. Otherwise, don''t
    waste your time and go with GNS3.'
- id: 7521
  author: imniceman
  author_email: abc@abc.com
  author_url: ''
  date: !binary |-
    MjAxNC0xMS0yMiAwMzowMDoyOSArMDEwMA==
  date_gmt: !binary |-
    MjAxNC0xMS0yMiAwMjowMDoyOSArMDEwMA==
  content: ! "Hi Expert,\r\n      when I attach e1 of two SRs to net , it shows e0
    on one SR. I try it several times ,it's a bug."
- id: 7540
  author: admin
  author_email: andrea.dainese@gmail.com
  author_url: ''
  date: !binary |-
    MjAxNC0xMS0yNCAxNToyOTo0MCArMDEwMA==
  date_gmt: !binary |-
    MjAxNC0xMS0yNCAxNDoyOTo0MCArMDEwMA==
  content: Yes, it is. The web-ui is for test only. It will be rewritten from scratch.
- id: 7553
  author: Ifepipe
  author_email: ifepipe1@gmail.com
  author_url: ''
  date: !binary |-
    MjAxNC0xMS0yNSAwNzowMDo0MiArMDEwMA==
  date_gmt: !binary |-
    MjAxNC0xMS0yNSAwNjowMDo0MiArMDEwMA==
  content: ! "Hi Imniceman,\r\n\r\nHave been able to ping the 7750 ?!"
- id: 7998
  author: Thomas
  author_email: thomas.novin@cygate.se
  author_url: ''
  date: !binary |-
    MjAxNS0wMS0xNCAxNDozNzowMiArMDEwMA==
  date_gmt: !binary |-
    MjAxNS0wMS0xNCAxMzozNzowMiArMDEwMA==
  content: ! "Got this error. UNetLab 0.8.5-82.\r\n\r\nroot@unl01:~# /opt/unetlab/wrappers/unl_wrapper
    -a fixpermissions\r\nERROR: invalid action \"fixpermissions\".\r\nERROR: Action
    is not valid.\r\nUsage: /opt/unetlab/wrappers/unl_wrapper \r\nStandard
    Options:\r\n-T      Tenant ID (default 0)\r\n-D   ***Device ID (default \"all\")\r\n-F
    \   **Lab file\r\n-a     *Action (\"clean\", \"start\", \"stop\", \"kill\", \"status\"
    or \"console\")\r\n  * Mandatory option\r\n ** Not required for \"kill\"\r\n***
    Action \"console\" must have a numeric Device ID"
- id: 7999
  author: Thomas
  author_email: thomas.novin@cygate.se
  author_url: ''
  date: !binary |-
    MjAxNS0wMS0xNCAxNDo0NzowNCArMDEwMA==
  date_gmt: !binary |-
    MjAxNS0wMS0xNCAxMzo0NzowNCArMDEwMA==
  content: ! "Note how my system did not get upgraded properly, following the instructions.
    I did a manual upgrade of unetlab (apt-get -y install unetlab') after reboot of
    the first upgrade, then I really got the upgrade.\r\n\r\nSo I got that error because
    of the low version. Now it works.\r\n\r\nhttps://www.dropbox.com/s/q5endvpmfbss67g/Screenshot%202015-01-14%2014.46.57.png?dl=0"
- id: 8000
  author: Thomas
  author_email: thomas.novin@cygate.se
  author_url: ''
  date: !binary |-
    MjAxNS0wMS0xNCAxNToxMzo0OSArMDEwMA==
  date_gmt: !binary |-
    MjAxNS0wMS0xNCAxNDoxMzo0OSArMDEwMA==
  content: ! "After adding two TiMOS 12.0R6 devices, I could not connect to them via
    management. If I manually do a telnet to the port I can see is used by hovering
    over the routers in the web ui, I get a connection refused.\r\n\r\nI can connect
    to the server itself.\r\n\r\nAFAIK SROS does not have telnet opened by default,
    only SSH. Can this be an issue here?\r\n\r\nLooking further, I can see that the
    routers are in a stopped mode (black square). Not the arrow which I suspect it
    should show if they were running?\r\n\r\nI'm running this on ESXI 5. How can I
    troubleshoot further?"
- id: 8436
  author: Carlos Moya
  author_email: cjmoya@gmail.com
  author_url: http://www.etp.com.co
  date: !binary |-
    MjAxNS0wMi0xNyAwMTozMzozMiArMDEwMA==
  date_gmt: !binary |-
    MjAxNS0wMi0xNyAwMDozMzozMiArMDEwMA==
  content: ! "Dear Sirs,\r\n\r\nCan you help me about pnet interface, so, i connect
    vm to cloud device (pnet0) and it is configure in pnet0. Ok\r\ni setup ip address
    in both vm and pnet, i can ping between vm and pnet and i can ping from real network
    to pnet. \r\nthe problem: \r\ni can't ping between vm and real network, how can
    i do the forwarding between pnet0 to realword, if traffic come from vm or reverse?."
- id: 8453
  author: Andrea Dainese
  author_email: andrea.dainese@gmail.com
  author_url: ''
  date: !binary |-
    MjAxNS0wMi0xOSAwODozNTo1OCArMDEwMA==
  date_gmt: !binary |-
    MjAxNS0wMi0xOSAwNzozNTo1OCArMDEwMA==
  content: pnet is a bridge between your lab nodes and the network where unl is attached
    to.
- id: 8464
  author: L_Lau
  author_email: luke.kw.lau@gmail.com
  author_url: ''
  date: !binary |-
    MjAxNS0wMi0yMSAwNTo1ODowNyArMDEwMA==
  date_gmt: !binary |-
    MjAxNS0wMi0yMSAwNDo1ODowNyArMDEwMA==
  content: ! "Hi Andrea,\r\n\r\nFirst I wanted to thank you for creating this AWESOME
    \"UNL\" network tool.  Second i would like to request a small enhancement on port
    mapping between SROS and UNL.   It would be very helpful to have UNL's first installed
    Ethernet port labelled as SROS Mgmt port.   So that the network map would show
    the correct port #s used by the routers.   It took me awhile to figure out all
    connectivity between the SROS VMs.   I hope the below details would help others
    in setting up their own SROS lab.\r\n\r\nthanks,\r\n\r\nL_Lau\r\n\r\nSROS Port
    ---- UNL Port\r\nMgmt (BOF) ---- 1/1/1\r\n1/1/1 --------- 1/1/2\r\n1/1/2
    --------- 1/1/3\r\n1/1/3 --------- 1/1/4\r\n1/1/4
    --------- 1/1/5\r\n1/1/5 --------- 1/1/6"
- id: 8477
  author: Andrea Dainese
  author_email: andrea.dainese@gmail.com
  author_url: ''
  date: !binary |-
    MjAxNS0wMi0yMyAwODo0MDoyOCArMDEwMA==
  date_gmt: !binary |-
    MjAxNS0wMi0yMyAwNzo0MDoyOCArMDEwMA==
  content: Already scheduled for the next release, please wait a few ;)
- id: 8578
  author: Besal Mon
  author_email: reachbesal@gmail.com
  author_url: ''
  date: !binary |-
    MjAxNS0wMy0wNSAwMToyNDo1MiArMDEwMA==
  date_gmt: !binary |-
    MjAxNS0wMy0wNSAwMDoyNDo1MiArMDEwMA==
  content: ! "I have assigned 8 gig off RAM for the VM  and I am running 2 Alcatel
    devices , and when the device loads it says \"Total Memory: 1536MB  Chassis Type:
    unknown\" and\r\nit takes 5 minutes to load , is there anything I can do to speed
    the boot time of the devices."
- id: 8580
  author: Besal Mon
  author_email: reachbesal@gmail.com
  author_url: ''
  date: !binary |-
    MjAxNS0wMy0wNSAwMTozMTo0NSArMDEwMA==
  date_gmt: !binary |-
    MjAxNS0wMy0wNSAwMDozMTo0NSArMDEwMA==
  content: ! "I have noticed a problem here with Telnet consol session:\r\nAfter you
    have saved the config &ldquo;admin save&rdquo; and close the putty window and
    then try to open the putty console window for the same box, it comes with this
    error message.\r\n=====================================\r\nSystem Crash Dump Written
    &ndash; Please run the command\r\n`admin tech-support` and contact your Alcatel-Lucent\r\nsupport
    representative.\r\nFatal Error: CORE0 dead. Rebooting!\r\n=====================================\r\nAnd
    then restarts the device &hellip; is there any thing which I am missing."
- id: 8636
  author: Ruslan
  author_email: rusmanking@gmail.com
  author_url: ''
  date: !binary |-
    MjAxNS0wMy0wOCAyMTozNzozMSArMDEwMA==
  date_gmt: !binary |-
    MjAxNS0wMy0wOCAyMDozNzozMSArMDEwMA==
  content: ! "I think the problem in emulation that use in template. try to change
    /opt/unetlab/html/templates/timos.php from accel=tcg to accel=kvm.\r\nfor
    the trick was worked.\r\nRuslan"
- id: 9206
  author: Radwa
  author_email: radwa.rawoof@telus.com
  author_url: ''
  date: !binary |-
    MjAxNS0wNC0zMCAxNTo0NzowNiArMDIwMA==
  date_gmt: !binary |-
    MjAxNS0wNC0zMCAxMzo0NzowNiArMDIwMA==
  content: ! "Hi Andrea,\r\n\r\nI tried adding a 7750 (TiMOS 12.0R6 ) image under
    qemu but it doesn't get detected on the lab page as an image, I completed the
    fix permissions step etc. Could you please advise?"
- id: 9284
  author: Hasan
  author_email: hasan288snw@gmail.com
  author_url: ''
  date: !binary |-
    MjAxNS0wNS0wNiAxOToxODo0NSArMDIwMA==
  date_gmt: !binary |-
    MjAxNS0wNS0wNiAxNzoxODo0NSArMDIwMA==
  content: ! "First of all a huge thanks to Andrea for making networking knowledge
    so simple. Now every network guy can test his knowledge in multi vendor platform.
    \ \r\n\r\nNow my problem: I am trying to connect 7750 (TiMOS 12.0R6 ) using ssh
    but asking for password. admin/admin not working but same username/password
    is working in GNS3. \r\n\r\nPlease advice..."
- id: 9335
  author: NetWorker
  author_email: asa@asa.com
  author_url: ''
  date: !binary |-
    MjAxNS0wNS0wOCAxNzowMDozNiArMDIwMA==
  date_gmt: !binary |-
    MjAxNS0wNS0wOCAxNTowMDozNiArMDIwMA==
  content: ! "Hello,\r\n\r\nAfter starting router I click on and secureCRT shows this
    message \"The remote system refused the connection.\"\r\nWhen I test in GNS3 there
    is no problem.\r\n\r\nThanks."
- id: 9396
  author: Andrea Dainese
  author_email: andrea.dainese@gmail.com
  author_url: ''
  date: !binary |-
    MjAxNS0wNS0xMSAxMDoyNDowMiArMDIwMA==
  date_gmt: !binary |-
    MjAxNS0wNS0xMSAwODoyNDowMiArMDIwMA==
  content: We found a issue on Alcatel runnin on UNetLab VM. UNetLab installed as
    baremetal is OK. We're testing a fix.
---

The Alcatel 7750 Service Router (SR) is available as a virtual router also.

<a id="more"></a><a id="more-50"></a>
## Supported Alcatel 7750 Service Router images
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
<td>timos-12.0.R6</td>
<td>TiMOS-SR-12.0.R6-vm.zip</td>
<td>B-12.0.R6</td>
<td>2</td>
<td>2048</td>
</tr>
<tr>
<td>timos-12.0.R4</td>
<td>TiMOS-SR-12.0.R4-vm.zip</td>
<td>B-12.0.R4</td>
<td>2</td>
<td>2048</td>
</tr>
</tbody>
</table>
## Importing Alcatel 7750 Service Router images
The following procedure refers to the most recent and supported image only. Older images should work too. Remember that UNetLab image names are strongly suggested for lab portability.

Install required packages:
<pre># apt-get -y install unzip</pre>
Upload the downloaded image to the UNetLab master node using for example <a title="FileZilla" href="https://filezilla-project.org/">FileZilla</a> or <a title="WinSCP" href="http://winscp.net/">WinSCP</a>. Then login as root using SSH protocol and uncompress it:
<pre># mkdir tmp
# cd tmp
# unzip ../TiMOS-SR-12.0.R6-vm.zip</pre>
Create the UNetLab image:
<pre># mkdir -p /opt/unetlab/addons/qemu/timos-12.0.R6
# mv vm/7xxx-i386/sros-vm.qcow2 /opt/unetlab/addons/qemu/timos-12.0.R6/hda.qcow2</pre>
Clean and fix permissions:
<pre># cd ..
# rm -rf tmp
# /opt/unetlab/wrappers/unl_wrapper -a fixpermissions</pre>
Default username is "<strong>admin</strong>" with password "<strong>admin</strong>".
## References

* <a title="Alcatel 7750 Service Router" href="http://www.alcatel-lucent.com/products/7750-service-router">Alcatel 7750 Service Router</a>

