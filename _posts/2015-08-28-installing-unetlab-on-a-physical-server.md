---
layout: post
published: true
title: "Installing UNetLab on a physical server (baremetal installation)"
excerpt:
  "HowTo install UNetLab software on a physical server without nested-virtualization."
section: "HowTo"
authors:
- andrea
tags:
- UNetLab
- HowTo
---
The best way to run UNetLab is on a physical server without any additional virtualization layer. Sometimes this installation is known as "baremetal".
A baremetal installation performs better because no assitional virtualization layer is present. UNetLab running inside a VM uses a nesterd-virtualization:

* the first virtualization layer is because of UNetLab running inside a VM;
* the second virtualization layer is because of UNetLab nodes running inside QEMU.

If you're planning to creates large labs with a lot of QEMU nodes, than you should evaluate a baremetal installation.

## Ubuntu installation

Download from [Ubuntu website](http://releases.ubuntu.com/14.04/ "Ubuntu 14.04 LTS (Trusty Tahr)") the latest 14.04 64bit ISO for server version. Burn it on a CD and boot your physical server from CD.

![Ubuntu bootsplash](/images/posts/2015/08/baremetal-1.png "Ubuntu bootsplash")

Select the language used during the Ubuntu installation process. English is the preferred one.

![Ubuntu installation start](/images/posts/2015/08/baremetal-2.png "Ubuntu installation start")

Start the installation using the highlighted entry.

![Ubuntu language selection](/images/posts/2015/08/baremetal-3.png "Ubuntu language selection")

Select the language used on the installed server. English is the preferred one.

![Ubuntu country selection](/images/posts/2015/08/baremetal-4.png "Ubuntu country selection")

Select the country used on the installed server.

![Ubuntu locale selection](/images/posts/2015/08/baremetal-5.png "Ubuntu locale selection")

A select your locale. United States (en_US.UTF-8) is the preferred one.

![Ubuntu keyboard detection](/images/posts/2015/08/baremetal-6.png "Ubuntu keyboard detection")

Skip the keyboard detection.

![Ubuntu keyboard selection](/images/posts/2015/08/baremetal-7.png "Ubuntu keyboard selection")

Select your country.

![Ubuntu keyboard selection](/images/posts/2015/08/baremetal-8.png "Ubuntu keyboard selection")

Select your keyboard layout.

![Ubuntu hostname](/images/posts/2015/08/baremetal-9.png "Ubuntu hostname")

Set the hostname.

![Ubuntu user name](/images/posts/2015/08/baremetal-10.png "Ubuntu user nane")

Set the full name of the first Ubuntu user.

![Ubuntu username](/images/posts/2015/08/baremetal-11.png "Ubuntu usernane")

Set the username of the first Ubuntu user.

![Ubuntu user password](/images/posts/2015/08/baremetal-12.png "Ubuntu user password")

Set (and repeat) the password for the first Ubuntu user.

![Ubuntu disk encryption](/images/posts/2015/08/baremetal-13.png "Ubuntu disk encryption")

Do not encrypt home directory.

![Ubuntu partitioning](/images/posts/2015/08/baremetal-14.png "Ubuntu partitioning")

Use the disk setup you're more confident on. LVM should be preferred. Mind that UNetLab requires a lot of disk space under `/opt`.
This guide does not cover the disk partitioning. If you're not confident about that, you should reconsider the UNetLab VM version.

![Ubuntu proxy setting](/images/posts/2015/08/baremetal-15.png "Ubuntu proxy setting")

Configure a proxy server, or leave it blank if not used.

![Ubuntu security updates](/images/posts/2015/08/baremetal-16.png "Ubuntu security updates")

Select how security update should be managed. Automatically is the suggested choice.

![Ubuntu packages](/images/posts/2015/08/baremetal-17.png "Ubuntu packages")

Add `OpenSSH server` package.

![Ubuntu MBR](/images/posts/2015/08/baremetal-18.png "Ubuntu MBR")

Install GRUB on the master boot record.

![Ubuntu installation ends](/images/posts/2015/08/baremetal-19.png "Ubuntu installation ends")

End the Ubuntu installation and wait for the reboot. After the login prompt, login as root and proceed with UNetLab installation.

## UNetLab installation

Login as root to your Ubuntu 14.04 Linux and be sure your installation can reach external websites. If required, set a proxy server:

~~~
export http_proxy=http://proxy.example.com:8080/
export http_proxy_username=andrea
export http_proxy_password=password
export https_proxy=http://proxy.example.com:8080/
export https_proxy_username=andrea
export https_proxy_password=password
export no_proxy=127.0.0.1,localhost
~~~

Check if Internet conneiction is working:

~~~
curl -s http://www.unetlab.com/rrlabs.key
-----BEGIN PGP PUBLIC KEY BLOCK-----
Version: GnuPG v1
[...]
~~~

Now get the installation script and run it:

~~~
curl -s http://www.unetlab.com/install.sh | bash
~~~

Output should be like the following:

~~~
Adding RR Labs APT key... DONE
Adding UNetLab APT repository... DONE
Setting APT HTTP proxy... DONE
Setting APT HTTPS proxy... DONE
Updating APT repositories...
[...]
Updating APT repositories... DONE
Installing UNetLab...
[...]
Installing UNetLab... DONE
Now you should migrate IP address configuration from  main interface card to the pnet0 bridge. Please refers to http://www.unetlab.com/ about editing the /etc/network/interfaces file.
Finally reboot your server and connect to the server IP address.
~~~

After the end of the script, you must migrate the IP address from your main network interface to the pnet0 bridge. 

### Network Configuration

In the following example the UNetLab server is configured using em1 as main network interface card, and IP address is configured via DHCP protocol:

~~~
cat /etc/network/interfaces
# This file describes the network interfaces available on your system
# and how to activate them. For more information, see interfaces(5).

# The loopback network interface
auto lo
iface lo inet loopback

# The primary network interface
auto em1
iface em1 inet dhcp

auto pnet0
iface pnet0 inet static
    # bridge_ports em1
    bridge_stp off
    # address 192.168.0.2
    # netmask 255.255.255.0
    # gateway 192.168.0.1
    # dns-nameserver 8.8.8.8 8.8.4.4

# Cloud devices
[...]
~~~

#### Dynamic  IP address configuration (DHCP)

Let's say we want to configure the server using IP address assigned via DHCP. The em1 network must be part of the pnet0 bridge. The final configuration is:

~~~
cat /etc/network/interfaces
# This file describes the network interfaces available on your system
# and how to activate them. For more information, see interfaces(5).

# The loopback network interface
auto lo
iface lo inet loopback

# The primary network interface
auto em1
iface em1 inet manual

auto pnet0
iface pnet0 inet dhcp
    bridge_ports em1
    bridge_stp off

# Cloud devices
[...]
~~~

#### Static IP address configuration

Let's say we want to configure the server using static IP address. The em1 network must be part of the pnet0 bridge. The final configuration is:

~~~
cat /etc/network/interfaces
# This file describes the network interfaces available on your system
# and how to activate them. For more information, see interfaces(5).

# The loopback network interface
auto lo
iface lo inet loopback

# The primary network interface
auto em1
iface em1 inet manual

auto pnet0
iface pnet0 inet static
    bridge_ports em1
    bridge_stp off
    address 192.168.0.2
    netmask 255.255.255.0
    gateway 192.168.0.1
    dns-nameserver 8.8.8.8 8.8.4.4

# Cloud devices
[...]
~~~

Reboot the server and check if network configuration works.
