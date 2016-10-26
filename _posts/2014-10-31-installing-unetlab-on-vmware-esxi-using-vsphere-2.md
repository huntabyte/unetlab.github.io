---
layout: post
published: true
title: "Installing UNetLab on VMware ESXi using vSphere vClient"
abstract: ! "HowTo install UNetLab software within VMware vSpherer."
categories:
- HowTo
authors:
- andrea
tags:
- UNetLab
- HowTo
---
UNetLab is supported on VMware ESXi 5.0 or later. ESXi 5.5 version  will be used through this guide.

Download from [VMware website](http://www.vmware.com/products/vsphere/ "VMware vSphere") the VMware Workstation software and install it on your desktop, then rum it.
From `File` menu, select `Deploy OVF Template`:

![VMware vSphere home](/images/posts/2014/10/vsphere-1.png "VMware vSphere home")

Select the source of the OVA file you downloaded from your local machine.

![VMware vSphere add OVF](/images/posts/2014/10/vsphere-2.png "VMware vSphere add OVF")

The next screen should be similar to the one below after the source has been selected.

![UNetLab OVF](/images/posts/2014/10/vsphere-3.png "UNetLab OVF")

Click Accept the License/Disclaimer to continue:

![UNetLab agreement](/images/posts/2014/10/vsphere-4.png "UNetLab agreement")

The next screen will display the name for the virtual machine. You can change this if you would like.

![UNetLab VM name](/images/posts/2014/10/vsphere-5.png "UNetLab VM name")

Now you need to select the datastore, in my case I have only one datastore so it is selected by default:

![UNetLab datastore](/images/posts/2014/10/vsphere-6.png "UNetLab datastore")

The next screen will be a summary screen so just click finish and then VMWare will start importing the OVA file.

![UNetLab confirm deploy](/images/posts/2014/10/vsphere-7.png "UNetLab confirm deploy")

A bar will show the percentage of the progress:

![UNetLab deploy](/images/posts/2014/10/vsphere-8.png "UNetLab deploy")

The deployed is terminated when a dialog will confirm it:

![UNetLab completed deploy](/images/posts/2014/10/vsphere-9.png "UNetLab completed deploy")

It may take a few minutes to import depending on the connection speed between your vSphere client and the ESXi server. Finally start your VM and proceed with your first UNetLab boot configuration.
