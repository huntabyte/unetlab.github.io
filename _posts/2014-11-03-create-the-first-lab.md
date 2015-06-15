---
layout: post
published: true
title: "Create the first lab"
excerpt:
  "HowTo create the first lab on UNetLab software."
section: "HowTo"
authors:
- andrea
tags:
- UNetLab
- HowTo
- Using
---
After the installation, open the browser and point it to the URL showed on the UNetLab console:

![UNetLab Console](/images/posts/2014/10/firstboot-2.png "UNetLab Console")

The default theme is work in progress:

![UNetLab dashboard](/images/posts/2014/11/firstlab-1.png "UNetLab dashboard")

Go to Labs:

![UNetLab lab list](/images/posts/2014/11/firstlab-2.png "UNetLab lab list")

From Action menu, a folder or a lab can be created. Let's create a lab:

![UNetLab lab add](/images/posts/2014/11/firstlab-3.png "UNetLab lab add")

The only mandatory field is the name. Mind that you should not use duplicated names. In other words a lab name must be unique within all lab tree.

![UNetLab edit lab](/images/posts/2014/11/firstlab-4.png "UNetLab edit lab")

From the Actions menu, add a couple of networks:

![UNetLab network add](/images/posts/2014/11/firstlab-5.png "UNetLab network add")

If the first field is greater than two, the network_id will be postponed to the network name.
Network type can be:

* bridge: a standard network without any particular features.
* ovs: Open vSwitch, a OpenFlow enable switch useful for SDN purpose. Mind that Open vSwitch filter out some frames, like CDP, LACP and so on.
* pnet*: a bridged physical interfaces, known also as "Cloud".

After pressing the `Add` button, networks can be positioned dragging them to the right place:

![UNetLab lab topology](/images/posts/2014/11/firstlab-6.png "UNetLab lab topology")

Now from the Actions menu, add few routers:

![UNetLab node add](/images/posts/2014/11/firstlab-7.png "UNetLab node add")

All fields are defaults and can be customized. Again, if the first field is greater than two, the node_id will be postponed to the node name.

Startup configuration, if different from `Unconfigured` will load an auto-generated startup config.

After pressing the `Add` button, nodes can be positioned dragging them to the right place:

![UNetLab lab topology](/images/posts/2014/11/firstlab-8.png "UNetLab lab topology")

Now right click to each node, select "Interfaces", and connect them to networks:

![UNetLab interfaces](/images/posts/2014/11/firstlab-9.png "UNetLab interfaces")

Ethernet interfaces can be connected to networks only. There is no P2P ethernet link, a network must be used. Serial interfaces, currently available for IOU/IOL nodes only, are P2P.

Please forgive few visual bugs, I'm working on them. At the end the final topology will be as the following:

![UNetLab lab topology](/images/posts/2014/11/firstlab-10.png "UNetLab lab topology")

Now from the Actions menu select `Open this lab`. Right click to each node and select start (a `start all` button will be available soon):

![UNetLab lab topology](/images/posts/2014/11/firstlab-11.png "UNetLab lab topology")

After a while all routers will be available. Mind that the UNetLab VM must have enough resources to manage all configured nodes, or it will be unusable.
