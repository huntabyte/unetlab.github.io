---
layout: post
published: true
title: "I'm running out of space, how can I add more storage to UNetLab VM?"
excerpt:
  "HowTo increase available space on your UNetLab VM."
section: "FAQ"
authors:
- andrea
tags:
- UNetLab
- FAQ
---
You need to add a virtual disk and expand volume and filesystem.

Add a big virtual disk to the UNetLab VM, I suggest at least 40GB. A small portion of this disk can be allocated and other space can be reserved for the future. Power on the VM:

~~~
fdisk -l | grep "contain a valid partition table"
~~~

Disk `/dev/sdc` doesn't contain a valid partition table. The new added disk is `/dev/sdc`. Let's configure it for LVM and expand the volume group:

~~~
echo -e "n\np\n1\n\n\n\t\n8e\nw\n" | fdisk /dev/sdc > /dev/null
pvcreate /dev/sdc1
vgextend rootvg /dev/sdc1
~~~

Now let's say we want to extend filesystem of 10GB only:

~~~
lvextend -L +10G /dev/rootvg/rootvol
resize2fs /dev/rootvg/rootvol
~~~
