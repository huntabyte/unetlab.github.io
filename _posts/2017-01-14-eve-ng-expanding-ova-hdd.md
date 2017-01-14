---
layout: post
published: true
title: "How to Expand HDD in EVE OVA"
abstract: ! "HowTo Expand HDD in EVE OVA."
categories:
- HowTo
authors:
- EVE Team
tags:
- HowTo
- EVE
---

## Expanding HDD in EVE OVA

1. Power off VM
2. Add New disk to VM
3. Power on VM

on VM CLI (After Powering on):

~~~
pvcreate /dev/sdb

vgextend eve-ng-vg /dev/sdb

lvextend -l +100%FREE /dev/mapper/eve--ng--vg-root

resize2fs /dev/mapper/eve--ng--vg-root
~~~

Of course if later you need more space, adding a new disk will be /dev/sdc ....


