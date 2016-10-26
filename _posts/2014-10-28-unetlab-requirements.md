---
layout: post
published: true
title: "UNetLab Requirements"
abstract: ! "Requirements for UNetLab software."
categories:
- HowTo
authors:
- andrea
tags:
- UNetLab
- HowTo
---
UNetLab is currently released as an OVA file. An OVA is a Open Virtual Appliance format. It's an archive (TAR) which holds disks and configuration file (OVF or Open Virtualization File) for the virtual machine. UNetLab can be also directly installed on the physical hardware, without any virtualization. Because UNetLab runs many hypervisor, it's strongly recommended a physical server dedicated for UNetLab, without any virtualization software. Mind that nested virtualization is not a good thing and can lead to poor performance.

UNetLab requires:

* Intel VT-x/EPT or AMD-V/RVI capable processor.
* One of the following:
    * Ubuntu 14.04 (suggested with any processors).
    * VMware ESXi 5.1 or later (version 5.5 is suggested, Intel i7 processors are mandatory).
    * VMware Workstation 9 or later (version 10 is suggested, Intel i7 processors are mandatory).
    * VMware Fusion 5 or later (version 6 is suggested, Intel i7 processors are mandatory).
    * VMware Player 5 or later (version 6 is suggested, Intel i7 processors are mandatory).

Required CPU and RAM depend on how many nodes are needed to run. 1 CPU and 2GB of RAM can be enough for IOU/IOL and Dynamips only, but will be insufficient for topology with CSR1000V routers.

In other words the UNetLab requirements are the same for nested ESXi virtualization or Cisco VIRL/CML. UNetLab can still works without Intel VT processors and can run installed within other hypervisors also But:

* 64 bits (x86_64) appliances won't work.
* Poor performances should be expected with 32 bits (i386) appliances.

## References

* [Cisco Modeling Labs](http://www.cisco.com/c/en/us/products/cloud-systems-management/modeling-labs/index.html "Cisco Modeling Labs")
* [Support for running ESXi/ESX as a nested virtualization solution (2009916)](http://kb.vmware.com/selfservice/microsites/search.do?language=en_UScmd=displayKCexternalId=2009916&src=vmw_so_vex_adain_773 "Support for running ESXi/ESX as a nested virtualization solution (2009916)")
* [Running Nested VMs](https://communities.vmware.com/docs/DOC-8970 "Running Nested VMs")
