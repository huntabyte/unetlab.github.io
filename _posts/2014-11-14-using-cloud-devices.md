---
layout: post
published: true
title: "Using Cloud devices"
abstract: ! "HowTo use cloud devices on UNetLab software."
categories:
- HowTo
authors:
- andrea
tags:
- UNetLab
- HowTo
- Using
---
A "Cloud" device is a special network which allows the lab to be bound with an external network. In other words a "Cloud" allows a lab to communicate with external hosts. This can be useful to integrate a lab with any external devices. Each "Cloud" is bound to a network interface. By default only `pnet0` is available.

## Adding more network interfaces using VMware

The first step requires to add more network interfaces to the UNetLab virtual machine:

* Power off the VM
* Edit setting using the VMware vSphere/Workstation/Fusion/Player interface
* Add up to a total of 10 vNICs (it's a VMware limit):

![Adding vNICs to a VM](/images/posts/2014/11/cloud-1.png "Adding vNICs to a VM")

Now power on the VM and proceed with next step: configuring clouds

## Configuring Clouds

Currently a manual configuration is needed. Login as SSH and confirm the UNetLab VM can see all configured network interfaces:

~~~
ifconfig  -a | grep ^eth
eth0      Link encap:Ethernet  HWaddr 00:0c:29:a3:57:dd
eth1      Link encap:Ethernet  HWaddr 00:0c:29:a3:57:e7
eth2      Link encap:Ethernet  HWaddr 00:0c:29:a3:57:f1
eth3      Link encap:Ethernet  HWaddr 00:0c:29:a3:57:fb
eth4      Link encap:Ethernet  HWaddr 00:0c:29:a3:57:05
eth5      Link encap:Ethernet  HWaddr 00:0c:29:a3:57:0f
eth6      Link encap:Ethernet  HWaddr 00:0c:29:a3:57:19
eth7      Link encap:Ethernet  HWaddr 00:0c:29:a3:57:23
eth8      Link encap:Ethernet  HWaddr 00:0c:29:a3:57:2d
eth9      Link encap:Ethernet  HWaddr 00:0c:29:a3:57:37
~~~

Now install a text editor tool like nano (vi is already available):

~~~
apt-get update
apt-get install nano
~~~

Then edit the `/etc/network/interfaces` file adding all pnet bridges:

~~~
# This file describes the network interfaces available on your system
# and how to activate them. For more information, see interfaces(5).

# The loopback network interface
auto lo
iface lo inet loopback

# The primary network interface
iface eth0 inet manual
auto pnet0
iface pnet0 inet dhcp
    bridge_ports eth0
    bridge_stp off
    bridge_ageing 0

# Cloud devices
iface eth1 inet manual
auto pnet1
iface pnet1 inet manual
    bridge_ports eth1
    bridge_stp off
    bridge_ageing 0

iface eth2 inet manual
auto pnet2
iface pnet2 inet manual
    bridge_ports eth2
    bridge_stp off
    bridge_ageing 0

iface eth3 inet manual
auto pnet3
iface pnet3 inet manual
    bridge_ports eth3
    bridge_stp off
    bridge_ageing 0

iface eth4 inet manual
auto pnet4
iface pnet4 inet manual
    bridge_ports eth4
    bridge_stp off
    bridge_ageing 0

iface eth5 inet manual
auto pnet5
iface pnet5 inet manual
    bridge_ports eth5
    bridge_stp off
    bridge_ageing 0

iface eth6 inet manual
auto pnet6
iface pnet6 inet manual
    bridge_ports eth6
    bridge_stp off
    bridge_ageing 0

iface eth7 inet manual
auto pnet7
iface pnet7 inet manual
    bridge_ports eth7
    bridge_stp off
    bridge_ageing 0

iface eth8 inet manual
auto pnet8
iface pnet8 inet manual
    bridge_ports eth8
    bridge_stp off
    bridge_ageing 0

iface eth9 inet manual
auto pnet9
iface pnet9 inet manual
    bridge_ports eth9
    bridge_stp off
    bridge_ageing 0
~~~

Finally bring pnet interfaces up or reboot the VM:

~~~
for i in $(seq 1 9); do ifup pnet${i}; done
~~~

Now ten "Cloud" devices are available:

~~~
brctl show
bridge name     bridge id               STP enabled     interfaces
pnet0           8000.000c29a357dd       no              eth0
pnet1           8000.000c29a357e7       no              eth1
pnet2           8000.000c29a357f1       no              eth2
pnet3           8000.000c29a357fb       no              eth3
pnet4           8000.000c29a35705       no              eth4
pnet5           8000.000c29a3570f       no              eth5
pnet6           8000.000c29a35719       no              eth6
pnet7           8000.000c29a35723       no              eth7
pnet8           8000.000c29a3572d       no              eth8
pnet9           8000.000c29a35737       no              eth9
~~~

## Using a Cloud device within a lab

A Cloud is a network bound to a pnet interface. Just add a network and choose a pnet interface:

![Adding a Cloud in the lab](/images/posts/2014/11/cloud-2.png "Adding a Cloud in the lab")

Link one or more nodes to the Cloud network, start nodes (Cloud is always up):

![Lab with Cloud device](/images/posts/2014/11/cloud-3.png "Lab with Cloud device")

The router can get an IP address from the DHCP configured on the same network where the `pnet0` is:

~~~
Router#show ip int brie
Interface                  IP-Address      OK? Method Status                Protocol
Ethernet0                  192.168.67.134  YES DHCP   up                    up
FastEthernet0              unassigned      YES unset  administratively down down
~~~

## Warning

A Cloud device is a bridge. So don't link a L2 device (Arista, IOS L2, vIOSL2...) to a Cloud or your real network can be affected by STP problems.
