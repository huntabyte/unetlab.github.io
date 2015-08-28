---
layout: post
published: true
title: "Installing UNetLab on VMware Workstation"
excerpt:
  "HowTo install UNetLab software within VMware Workstation."
section: "HowTo"
authors:
- andrea
tags:
- UNetLab
- HowTo
---
UNetLab is supported on VMware Workstation 9 or later. Version 10 is suggested and this guide will use that version.

Download from [VMware website](http://www.vmware.com/it/products/workstation/ "VMware Workstation") the VMware Workstation software and install it on your desktop, then run it:

![VMware Workstation home](/images/posts/2014/10/workstation-1.png "VMware Workstation home")

From `File` menu, select `Open`, and select the UNetLab OVA file:

![VMware Workstation import VM](/images/posts/2014/10/workstation-2.png "VMware Workstation import VM")

Click Import and accept the License/Disclaimer:

![UNetLab agreement](/images/posts/2014/10/workstation-3.png "UNetLab agreement")

After a while the UNetLab VM will be created:

![UNetLab VM](/images/posts/2014/10/workstation-4.png "UNetLab VM")

Now select `Edit virtual machine settings` and adjust processors, memory, network adapters and number of disks. By default the UNetLab is configured with 1 vCPU, 1GB of RAM and 1 vNIC. Finally enable under `Processors` the `Virtualize Intel VT-x/EPT or AMD-V/RVI` feature:

![UNetLab VM settings](/images/posts/2014/10/workstation-5.png "UNetLab VM settings")

Up to 10 vNICs are supported. The first one will be used as management and can be used as "Cloud" also.

Finally start the VM and proceed with the first boot configuration.
