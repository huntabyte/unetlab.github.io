---
layout: post
published: true
title: "EVE-NG Preview/Alpha Released"
abstract: ! "What's inside EVE-NG Preview/Alpha"
categories:
- Releases
authors:
- eve-ng team
tags:
- UNetLab
- EVE-NG
- Releases
---

## Intro

We are proud to present the anticipated EVE-NG preview/alpha release to the public.

Bellow one will find:

* Feature list in that release
* Download links
* HowTo video and instructions

## FAQ


- Q: When in HTML5 console, I click on disconnect and got into a guacamole login page and can't get any sessions in HTML5 now. Panic.
	- A: Logout/Login from/into eve to be able to open html console again.

---

- Q: How to trun on/off UKSM and how to see if it is on or off?
- A: Check if UKSM enable or not in the status screen. Type bellow commands in Ubuntu CLI
	- `echo 0 > /sys/kernel/mm/uksm/run` (to disable)
	- `echo 1 > /sys/kernel/mm/uksm/run` (to enable)

---

- Q: How to upgrade my EVE?
- A: run those commands:
	- `apt-get update`
	- `apt-get upgrade`

---

- Q: How to migrate from UNL to EVE? Is upgarde possible?
- A: No. The only way is backup all images, labs etc from UNL, Install fresh EVE from ISO or OVA and move backup from UNL to EVE.

---
	
- Q: Why my wireshark doesn' work? :(
- A: You need to edit C:\Program Files\UNetLab\wireshark_wrapper.bat file and edit root password to match one you use.

---

- Q: Starting more then 10 CSR gives CPU HOG. What to do?
- A: UKSM is good for 10 CSR, if you want to launch more than 10 CSR, disable UKSM

---

## Features of this release

* Current release version : 2.0.2-19
* Base upgraded to Ubuntu 16.04 and new kernel
* [UKSM](http://kerneldedup.org/en/projects/uksm/ "UKSM") implementation
* Brand new Home screen
* Improved OLD lab layout UI from UNL (New LAB layout will be presented in later releases)
	- Color change for stopped and running node
	- HTML5 implementation for telnet,vnc and rdp (will be presented in Video HowTo)
	- Color change for stopped and running node
	- Nice square grid
	- Various bug fixes
* Native RDP for Windows is now supported for the first time in a lab platform
* Official repo moved to [GitLab](https://gitlab.com/eve-ng-dev/eve-ng-public "EVE-NG Official Repo")
	
* New images
	- Cisco FirePower 6 
	- Juniper vQFX
	- Juniper vMX 15.X and 16.X versions
	- CUCM (How to will be added in future)
	- NX-OSv 9k
	- Separated templates for CSR 3.X and CSR Denali/Everest
	- VPCS fixes and more


The main goal of this release is to show what we are working on and receive a feedbacks in order to continue developing and improving the platform

All feedbacks or issue kindly leave on our [GitLab Issues Page](https://gitlab.com/eve-ng-dev/eve-ng-public/issues "EVE-NG GitLab Issues Page") 

## Download Links and info

* Ready to go OVA (HDD in OVA is only 20G. Increase space per need!):
	- [EVE-NG OVA - MEGA mirror](https://mega.nz/#!v0BQnYCa!hQAPYv9H4a_Qz5SAQcWpRfel4H1LvQ4AwIE0AFvg-48 "EVE-NG OVA - MEGA mirror")
	- [EVE-NG OVA - mail.ru mirror](https://cloud.mail.ru/public/By47/YLMPag4rp "EVE-NG OVA - mail.ru mirror")

* Installtion ISO:	
	- [EVE-NG ISO - MEGA mirror](https://mega.nz/#!n1wCHSqY!vPEumXngOzgN5yzo2hhfo6KGJUIksUUoCLf1WKbFYCE "EVE-NG ISO - MEGA mirror")
	- [EVE-NG ISO - mail.ru mirror](https://cloud.mail.ru/public/3Ejn/FaRh1kUMu "EVE-NG ISO - mail.ru mirror")

## HowTo videos and instructions

* OVA Installtion HowTo:
	- [OVA on ESXi](https://www.youtube.com/watch?v=ImbJW8JI3Ro "OVA on ESXi")
	- [OVA on Vmware Workstasion](https://www.youtube.com/watch?v=GyY4F9Hl67E "OVA on Vmware Workstasion")

* ISO Installtion HowTo:
	- [ISO on ESXi](https://www.youtube.com/watch?v=0nXHNF3J0B8 "ISO on ESXi")
	- [ISO on Vmware Workstasion](https://www.youtube.com/watch?v=1uwwO5vpqEo "ISO on Vmware Workstasion")
	
