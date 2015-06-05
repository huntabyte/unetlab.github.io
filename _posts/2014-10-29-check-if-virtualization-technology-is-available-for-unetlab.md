---
layout: post
status: publish
published: true
title: Check if Virtualization Technology is available for UNetLab
author:
  display_name: Andrea Dainese
  login: admin
  email: andrea.dainese@gmail.com
  url: ''
author_login: admin
author_email: andrea.dainese@gmail.com
excerpt: ! "A critical step in UNetLab installation is check if virtualization technology
  is enabled or not. If the following tests fail, be sure Virtualization Technology
  is enabled on BIOS. See the following links:\r\n\r\n\t* <a title=\"HP Z1/Z420/Z620/Z820
  Workstation\" href=\"http://h20566.www2.hp.com/portal/site/hpsc/template.PAGE/public/kb/docDisplay?docId=mmr_kc-0105673&amp;ac.admitted=1414586828368.876444892.199480143\">HP
  Z1/Z420/Z620/Z820 Workstation</a>\r\n\r\n## "
wordpress_id: 79
wordpress_url: http://www.unetlab.com/?p=79
date: !binary |-
  MjAxNC0xMC0yOSAxMTo0ODo0OCArMDEwMA==
date_gmt: !binary |-
  MjAxNC0xMC0yOSAxMDo0ODo0OCArMDEwMA==
categories:
- HowTo
tags:
- Requirements
comments:
- id: 7359
  author: Mohammed
  author_email: moh.elhassan@gmail.com
  author_url: http://linkedin.com/in/melhassan
  date: !binary |-
    MjAxNC0xMC0yOSAxNTowMTowNyArMDEwMA==
  date_gmt: !binary |-
    MjAxNC0xMC0yOSAxNDowMTowNyArMDEwMA==
  content: Super!. I've got a new laptop specially for VTs. All VT features are set
    and ready + 16GB of RAM. It's my miniServer at a backbag! :D
- id: 7360
  author: Crys K
  author_email: ase_c@yahoo.com
  author_url: ''
  date: !binary |-
    MjAxNC0xMC0yOSAxODozNDowMSArMDEwMA==
  date_gmt: !binary |-
    MjAxNC0xMC0yOSAxNzozNDowMSArMDEwMA==
  content: Thank you fr your work, i can't wait for the download link !
---

A critical step in UNetLab installation is check if virtualization technology is enabled or not. If the following tests fail, be sure Virtualization Technology is enabled on BIOS. See the following links:

* <a title="HP Z1/Z420/Z620/Z820 Workstation" href="http://h20566.www2.hp.com/portal/site/hpsc/template.PAGE/public/kb/docDisplay?docId=mmr_kc-0105673&amp;ac.admitted=1414586828368.876444892.199480143">HP Z1/Z420/Z620/Z820 Workstation</a>

## <a id="more"></a><a id="more-79"></a>Microsoft Windows
Download one of the following, depending by your CPU vendor:

* <a title="Intel&reg; Processor Identification Utility" href="http://www.intel.com/support/processors/tools/piu/sb/cs-014921.htm">Intel&reg; Processor Identification Utility</a>
* <a title="AMD Virtualization&trade; Technology and Microsoft&reg; Hyper-V&trade; System Compatibility Check Utility" href="http://download.amd.com/techdownloads/AMD-VwithRVI_Hyper-V_CompatibilityUtility.zip">AMD Virtualization&trade; Technology and Microsoft&reg; Hyper-V&trade; System Compatibility Check Utility</a>
* <a title="Microsoft&reg; Hardware-Assisted Virtualization Detection Tool" href="http://www.microsoft.com/en-us/download/details.aspx?id=592">Microsoft&reg; Hardware-Assisted Virtualization Detection Tool</a>

Install the download package and run it.
### Intel Processors
The Intel utility will show a report like the following:

<a href="/images/posts/2014/10/Intel-CPU-features.png"><img class="aligncenter wp-image-81" src="/images/posts/2014/10/Intel-CPU-features.png" alt="Intel CPU feature report" width="300" height="224" /></a>

The report shows

* Intel(R) Virtualization Technology
* Intel VT-x with Extended Page Tables

VMware Workstation or Player can be used to install UNetLab as virtual machine.
### AMD Processors
The AMD utility will show a report like the following:

<a href="/images/posts/2014/10/AMD-CPU-features.png"><img class="aligncenter wp-image-82" src="/images/posts/2014/10/AMD-CPU-features.png" alt="AMD CPU features" width="299" height="63" /></a>

 

The report shows that AMD-V technology is enabled and compatible with Microsoft Hyper-V.

VMware Workstation or Player can be used to install UNetLab as virtual machine.
### Intel and AMD processors using Microsoft tool
The Microsoft tool is valid for both Intel and AMD processors, and will show a report like following:

<a href="/images/posts/2014/10/CPU-features.png"><img class="aligncenter wp-image-85" src="/images/posts/2014/10/CPU-features.png" alt="CPU features" width="300" height="271" /></a>

The report shows that hardware virtualization is supported.

VMware Workstation or Player can be used to install UNetLab as virtual machine.
## Ubuntu Linux 14.04
Processors supported features are included in the /proc/cpuinfo file. Just check for vmx or svm features:
<pre># grep --color -e vmx -e svm /proc/cpuinfo | tail -n1
flags           : fpu vme de pse tsc msr pae mce cx8 apic sep mtrr pge mca cmov pat pse36 clflush mmx fxsr sse sse2 ht syscall mmxext fxsr_opt pdpe1gb rdtscp lm 3dnowext 3dnow constant_tsc nonstop_tsc pni cx16 popcnt lahf_lm cmp_legacy svm extapic cr8_legacy altmovcr8 abm sse4a misalignsse 3dnowprefetch osvw</pre>
If the output is printed out, then either Intel VT-x (vmx) or AMD-V (svm) is supported.

UNetLab can be directly installed for maximum performance.
