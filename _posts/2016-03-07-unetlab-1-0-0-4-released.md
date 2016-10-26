---
layout: post
published: true
title: "UNetLab 1.0.0-4 Released"
abstract: ! "What's new on UNetLab 1.0.0-4"
categories:
- Releases
authors:
- andrea
tags:
- UNetLab
- Releases
---
Features and Fixed on this release:

* Windows x64 and x86 Client Management pack installation *.exe, includes Putty, UltraVNC, Wireshark and all that is needed
* MAC Client Management tutorial
* Brand new Workspace, all-in-one with all operations done within a single working screen
* Huge part of the drawing shapes and txt adding to active workspace
	- Drawing square, sphere and resizing them, like show areas in your live topology
	- add custom text, add notes to active screen, like networks IP addressing, etc
* Mostly wanted part of configurations saving:
	- Export/Importing configurations for nodes:
		- IOL all images
		- Dynamips - all images
		- Cisco CSR v1000
		- Cisco vIOS L2 and L3
		- Cisco Titanium NXOS
		- Cisco ASA ported, all (8.4.2, 9.1.5, 8.0.2)
		- Cisco ASAv all images
		- Cisco XRv all images
		- Arista vEOS all images
		- Juniper vSRX
		- Juniper vMX
		- Docker
   - edit config after exporting
   - edit initials before first boot of node
   - export labs with saved initial configurations
   - many other configuration operations
* Lab cloning and duplications, useful option when need same lab but with different initial configuration
* iou-web *.gz importing directly to UNL. No need to convert whole database
* Images templates improvements
* Bugs fixed and overall improvements

Known Issues:

* When upgrading from v96 to v1.0.0-1 nodes in main screen will be closer then in previous view, manual re-ordering needed
* When importing iou-web labs, main lab topology will be messed, manual re-ordering needed
* When importing iou-web labs, Image MAP in the attached pictures messed, manual re-ordering needed
