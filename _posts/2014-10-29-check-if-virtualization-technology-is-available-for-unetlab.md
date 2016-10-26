---
layout: post
published: true
title: "Check if Virtualization Technology is available for UNetLab"
abstract: ! "HowTo check if VT is configured for UNetLab software."
categories:
- HowTo
authors:
- andrea
tags:
- UNetLab
- HowTo
---
A critical step in UNetLab installation is check if virtualization technology is enabled or not. If the following tests fail, be sure Virtualization Technology is enabled on BIOS. See the following links:

* [HP Z1/Z420/Z620/Z820 Workstation](http://h20566.www2.hp.com/portal/site/hpsc/template.PAGE/public/kb/docDisplay?docId=mmr_kc-0105673&ac.admitted=1414586828368.876444892.199480143 "HP Z1/Z420/Z620/Z820 Workstation")

## Microsoft Windows

Download one of the following, depending by your CPU vendor:

* [Intel&reg; Processor Identification Utility](http://www.intel.com/support/processors/tools/piu/sb/cs-014921.htm "Intel&reg; Processor Identification Utility")
* [AMD Virtualization&trade; Technology and Microsoft&reg; Hyper-V&trade; System Compatibility Check Utility](http://download.amd.com/techdownloads/AMD-VwithRVI_Hyper-V_CompatibilityUtility.zip "AMD Virtualization&trade; Technology and Microsoft&reg; Hyper-V&trade; System Compatibility Check Utility")
* [Microsoft&reg; Hardware-Assisted Virtualization Detection Tool](http://www.microsoft.com/en-us/download/details.aspx?id=592 "Microsoft&reg; Hardware-Assisted Virtualization Detection Tool")

Install the download package and run it.

### Intel Processors

The Intel utility will show a report like the following:

![Intel CPU feature report]](/images/posts/2014/10/cpufeatures-1.png "Intel CPU feature report")

The report shows

* Intel(R) Virtualization Technology
* Intel VT-x with Extended Page Tables

VMware Workstation or Player can be used to install UNetLab as virtual machine.

### AMD Processors

The AMD utility will show a report like the following:

![AMD CPU feature report]](/images/posts/2014/10/cpufeatures-2.png "AMD CPU feature report")

The report shows that AMD-V technology is enabled and compatible with Microsoft Hyper-V.

VMware Workstation or Player can be used to install UNetLab as virtual machine.

### Intel and AMD processors using Microsoft tool

The Microsoft tool is valid for both Intel and AMD processors, and will show a report like following:

![Microsoft CPU feature report]](/images/posts/2014/10/cpufeatures-3.png "Microsoft CPU feature report")

The report shows that hardware virtualization is supported.

VMware Workstation or Player can be used to install UNetLab as virtual machine.

## Ubuntu Linux 14.04

Processors supported features are included in the /proc/cpuinfo file. Just check for vmx or svm features:

~~~
# grep --color -e vmx -e svm /proc/cpuinfo | tail -n1
flags           : fpu vme de pse tsc msr pae mce cx8 apic sep mtrr pge mca cmov pat pse36 clflush mmx fxsr sse sse2 ht syscall mmxext fxsr_opt pdpe1gb rdtscp lm 3dnowext 3dnow constant_tsc nonstop_tsc pni cx16 popcnt lahf_lm cmp_legacy svm extapic cr8_legacy altmovcr8 abm sse4a misalignsse 3dnowprefetch osvw
~~~

If the output is printed out, then either Intel VT-x (vmx) or AMD-V (svm) is supported.

UNetLab can be directly installed for maximum performance.
