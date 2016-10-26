---
layout: post
published: true
title: "UNetLab 0.9.0-68 Released"
abstract: ! "What's new on UNetLab 0.9.0-68 (beta)."
categories:
- Releases
authors:
- andrea
tags:
- UNetLab
- Beta
- Releases
---
Fixed on this release:

* Some Dynamips nodes cannot export startup-config.
* IGMP/Mutlicast issue using bridges.
* Performance (Alcatel, Juniper, Windows, ...) improved.

New features:

* Import/Export labs.
* Move/Clone/Rename labs.
* Traffic capture via Wireshark.

New supported images:

* Cisco ACS
* Cisco Context Directory Agent
* Cisco ISE
* Cisco vNAM
* Cumulus VX
* Linux (generic)
* MikroTik RouterOS
* Ostinato Traffic Generator

## Release notes

The web-UI is changing, we're migrating it to the new style. This version comes with the new home page / lab list pages. After login a new dashboard will appear. Mind that:

* a single click select an item (folder/lab);
* a double click open an item (folder/lab);
* there is no context menu, see on Actions menu above;
* a double click on a lab will show a small preview, then click there to open it.
* Wireshark integration needs to download and install a REG and a BAT files on Windows. Please download from your VM the file stored in `/files/windows.zip` and unpack it under `C:\Program Files\UNetLab'.

Please also check video on our [YouTube channel](https://www.youtube.com/c/UnifiedNetworkingLab "UNetLab YouTube Channel").
