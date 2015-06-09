---
layout: post
published: true
title: "Installing UNetLab on VMware Player"
excerpt:
  "HowTo install UNetLab software within VMware Player."
authors:
- andrea
tags:
- UNetLab
- HowTo
--
UNetLab is supported on VMware Player 5 or later. Version 6 is suggested and this guide will use that version.

Download from [VMware website]("http://www.vmware.com/products/player/?src=vmw_so_vex_adain_773 "VMware Player Pro") the VMware Player software and install it on your desktop, then run it:

![VMware Player home](/images/posts/2014/11/player-1.png "VMware Player home")

From `Player` menu, select `File` -> `Open`, and select the UNetLab OVA file:

![VMware Player add VM](/images/posts/2014/11/player-2.png "VMware Player add VM")

Click Import and accept the License/Disclaimer:

![UNetLab afreement](/images/posts/2014/11/player-3.png "UNetLab agreement")

After a while the UNetLab VM will be created:

![UNetLab VM](/images/posts/2014/11/player-4.png "UNetLab VM")

Now select `Edit virtual machine settings` and adjust processors, memory, network adapters and number of disks. By default the UNetLab is configured with 1 vCPU, 1GB of RAM and 1 vNIC. Finally enable under `Processors` the `Virtualize Intel VT-x/EPT or AMD-V/RVI` feature:

![UNetLab edit VM settings](/images/posts/2014/11/player-5.png "UNetLab edit VM settings")

Up to 10 vNICs are supported. The first one will be used as management and can be used as "Cloud" also.

Finally start the VM and proceed with the first boot configuration.
