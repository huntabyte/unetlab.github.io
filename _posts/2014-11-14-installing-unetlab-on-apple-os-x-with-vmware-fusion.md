---
layout: post
published: true
title: "Installing UNetLab on Apple OS X with VMware Fusion"
abstract: ! "HowTo install UNetLab on Apple OS X with VMware Fusion."
categories:
- HowTo
authors:
- andrea
tags:
- UNetLab
- Images
---

UNetLab is supported on VMware Fusion 7 or later. Version 10 is suggested and this guide will use that version.

Download from [VMware Fusion](http://www.vmware.com/it/products/fusion/ "VMware website") the VMware Fusion software and install it on your desktop, then run it:

![VM library](/images/posts/2014/11/fusion-1.png "VM library")

From `+` menu, select `New`:

![New VM](/images/posts/2014/11/fusion-2.png "New VM")

Press `continue`:

![Install method](/images/posts/2014/11/fusion-3.png "Install method")

Import an existing VM:

![Import an existing VM](/images/posts/2014/11/fusion-4.png "Import an existing VM")

Select the OVA file:

![Choose an existing VM](/images/posts/2014/11/fusion-5.png "Choose an existing VM")

Then press `Continue`:

![Confirm import](/images/posts/2014/11/fusion-6.png "Confirm import")

Configure the VM name:

![Set the VM name](/images/posts/2014/11/fusion-7.png "Set the VM name")

Click Save and accept the License/Disclaimer:

![Confirm the license](/images/posts/2014/11/fusion-8.png "Confirm the license")

The import starts:

![Wait for the import](/images/posts/2014/11/fusion-9.png "Wait for the import")

When the import ends customize settings:

![End the process](/images/posts/2014/11/fusion-10.png "End the process")

Select processors and memory:

![VM settings](/images/posts/2014/11/fusion-11.png "VM settings")

Adjust memory and processors:

![Adjust memory and processors](/images/posts/2014/11/fusion-12.png "Adjust memory and processors")

Finally enable under `Processors` the `Intel VT-x` feature:

![Enable VT-x feature](/images/posts/2014/11/fusion-13.png "Enable VT-x feature")

Add more vNICs to the proper section. Up to 10 vNICs are supported. The first one will be used as management and can be used as "Cloud" also.

Finally start the VM and proceed with the first boot configuration.
