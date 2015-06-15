---
layout: home
published: true
title: "Unified Nerworking Lab"
excerpt:
  "A network simulator by Andrea Dainese"
section: "Home"
authors:
- andrea
tags:
- UNetLab
keywords: [UNetLab, UNL, VIRL , GNS3, Simulator, OVS, QEMU, Dynamips, Dynagen, IOU, IOL]
---
UNetLab can be considered the next major version of iou-web, but the software has been rewritten from scratch. The major advantage over GNS3 and iou-web itself is about multi-hypervisor support within a single entity. UNetLab allows to design labs using IOU, Dynamips and QEMU nodes without dealing with multi virtual machines: everything run in-
side a UNetLab host, and a lab is a single file including all information needed.

## Differences between current UNetLab and GNS3 1.3.3

| UNetLab | GNS3 |
|:--|:--|
| User interface is web based | Users must install a client on the PC |
| Everything (but vendor images) is within a single VM | Need to be installed on the PC |
| No limitation on RAM under QEMU | Under Windows, QEMU supports up to 2GB of RAM |
| No limitation on networks under QEMU | QEMU limits network to 16 maximum |
| Multi user from CLI (UI will be ready soon) | Single user |
| Everything runs inside a single VM | IOU/IOL requires another VM |
| Users can add pitures with active links | |
| Self-funding | Crowfunding |
| Free and available for everyone | Latest versions are available for supporters only |
{: rules="groups"}

## Latest posts

<ul>
{% for post in site.posts limit:100 %}
	<li><a href="{{ post.url }}" title="{{ post.title }}">{{ post.title }}</a>:<br/><blockquote>{{ post.excerpt | strip_html }}</blockquote></li>
{% endfor %}
</ul>
