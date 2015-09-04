---
layout: page
published: true
title: "Documentation about Unified Networking Lab"
excerpt:
  "Docs, HowTo about UNetLab software."
section: "Documentation"
authors:
- andrea
tags:
- UNetLab
keywords: [UNetLab, UNL, HowTo, integration, images, QEMU, Dynamips, IOU, IOL]
---
## Installation

To properly install UNetLab use one of the following HowTo:

* <a title="Installing UNetLab on VMware Player" href="/2014/10/installing-unetlab-on-vmware-player/">Installing UNetLab on VMware Player</a>
* <a title="Installing UNetLab on VMware Workstation" href="/2014/10/installing-unetlab-on-vmware-workstation/">Installing UNetLab on VMware Workstation</a>
* <a title="Installing UNetLab on VMware ESXi using vSphere vClient" href="/2014/10/installing-unetlab-on-vmware-esxi-using-vsphere-2/">Installing UNetLab on VMware ESXi using vSphere vClient</a>
* <a title="Installing UNetLab on Apple OS X with VMware Fusion" href="/2014/11/installing-unetlab-on-apple-os-x-with-vmware-fusion/">Installing UNetLab on Apple OS X with VMware Fusion</a>
* <a title="Installing UNetLab on a physical server (baremetal installation)" href="/2015/08/installing-unetlab-on-a-physical-server/#comment-2232999898">Installing UNetLab on a physical server (baremetal installation)</a>

After installation, proceed with the next two steps using both of the following HowTo:

1. <a title="First UNetLab boot configuration" href="/2014/11/first-unetlab-boot-configuration/">First UNetLab boot configuration</a>
2. <a title="Upgrade UNetLab installation" href="/2014/11/upgrade-unetlab-installation/">Upgrade UNetLab installation</a>

Now UNetLab is properly installed and configured. External images must be manually imported because of copyright. Default username is `admin` with password `unl`.

Clients should be configured to automatically open telnet://, ssh:// and vnc:// Urls:

* <a title="Url (telnet, ssh, vnc) integration on Windows" href="/2015/03/url-telnet-ssh-vnc-integration-on-windows/">Url (telnet, ssh, vnc) integration on Windows</a>

Check also:

* [YouTube Channel](https://www.youtube.com/c/UnifiedNetworkingLab "YouTuve Channel")
* [First steps with Unetlab (by Stuart Fordham)](http://www.802101.com/2015/02/first-steps-with-unetlab.html "First steps with Unetlab (by Stuart Fordham)")
* [Что такое UNetLab](http://www.ciscolab.ru/labs/42-unetlab-stroim-stend-dlya-podgotovki-k-ccie-rs-sp-dc-sec.html "Что такое UNetLab")
* [Unified Networking Lab for Alcatel-Lucent, Juniper, Cisco and many more... (by Roman Dodin - Alcatel Lucent)](http://noshut.ru/2015/09/unified-networking-lab-for-alcatel-lucent-juniper-cisco-and-many-more/ "Unified Networking Lab for Alcatel-Lucent, Juniper, Cisco and many more... (by Roman Dodin - Alcatel Lucent)")

## Importing External Images

Use the following guides only if you are entitled to download and install the related software:

{% for tag in site.tags %}
    {% assign t = tag | first %}
    {% assign posts = tag | last %}
    {% if t == "Images" %}
<ul>
    <li><a href="/documentation/supported-images/" title="List of all supported images">List of all supported images</a></li>
        {% for post in posts %}
            {% if post.tags contains t %}
    <li><a href="{{ post.url }}" title="{{ post.title }}">{{ post.title }}</a></li>
            {% endif %}
        {% endfor %}
	<li><a href="http://www.802101.com/2015/09/wireshark-integration-with-unetlab-on.html?m=1" title="Wireshark integration with UNetLab on OSX">Wireshark integration with UNetLab on OSX</a></li>
</ul>
    {% endif %}
{% endfor %}

## Using UNetLab

{% for tag in site.tags %}
    {% assign t = tag | first %}
    {% assign posts = tag | last %}
    {% if t == "Using" %}
<ul>
        {% for post in posts %}
            {% if post.tags contains t %}
    <li><a href="{{ post.url }}" title="{{ post.title }}">{{ post.title }}</a></li>
            {% endif %}
        {% endfor %}
</ul>
    {% endif %}
{% endfor %}

## Frequently Asked Questions

{% for tag in site.tags %}
    {% assign t = tag | first %}
    {% assign posts = tag | last %}
    {% if t == "FAQ" %}
<ul>
        {% for post in posts %}
            {% if post.tags contains t %}
    <li><a href="{{ post.url }}" title="{{ post.title }}">{{ post.title }}</a></li>
            {% endif %}
        {% endfor %}
</ul>
    {% endif %}
{% endfor %}
