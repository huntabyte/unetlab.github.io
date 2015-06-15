---
layout: post
published: true
title: "Why I cannot write configuration? Seems it cannot write to local disk."
excerpt:
  "HowTo solve writing configuration on some QEMU devices."
section: "FAQ"
authors:
- andrea
tags:
- UNetLab
- FAQ
---
On a previous HOWTO UNetLab images have been built compressed. Sometimes compressed images do not work well, so the suggestion is to omit the `-c` flag. Example of error can be:

~~~
Building configuration...

-Traceback= 1C489D8z 88DD15z 8B5BAEz 8B58E0z 8B554Dz 8958B2z 8934B0z 837471z 86B283z 86A3E7z 867C37z 86D0D4z 870997z - Process "Async write process", CPU hog, PC 0x00889D77
Compressed configuration from 4976 bytes to 1913 bytes
*Nov 14 11:57:39.005: %SYS-5-CONFIG_I: Configured from console by console
-Traceback= 1C489D8z 88DD15z 8B5BAEz 8B58E0z 8B554Dz 8958B2z 8934B0z 837471z 86B283z 86A3E7z 867C37z 86D0D4z 870997z - Process "Async write process", CPU hog, PC 0x00889D77
~~~

Or

~~~
%SW_VLAN-4-IFS_FAILURE: VLAN manager encountered file operation error: call = ifs_open/read / file = vlan.dat / code = 2573 (File not found) / bytes transfered = 0
~~~

Compressed images can be uncompressed using the following:

~~~
/opt/qemu/bin/qemu-img convert -f qcow2 -O qcow2 /opt/unetlab/addons/qemu/appliance-name/hda.qcow2 /opt/unetlab/addons/qemu/appliance-name/hda.qcow2.new
mv /opt/unetlab/addons/qemu/appliance-name/hda.qcow2.new /opt/unetlab/addons/qemu/appliance-name/hda.qcow2
~~~
