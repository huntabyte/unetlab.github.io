---
layout: post
status: publish
published: true
title: ! 'Diary #2: IOU (IOL) wrapper completed'
author:
  display_name: Andrea Dainese
  login: admin
  email: andrea.dainese@gmail.com
  url: ''
author_login: admin
author_email: andrea.dainese@gmail.com
excerpt: ! "During last days a lab structure has been defined. Let's see an example:\r\n\r\n"
wordpress_id: 14
wordpress_url: http://www.unetlab.com/?p=14
date: !binary |-
  MjAxNC0wNS0yMCAxNjoyNDoyMSArMDIwMA==
date_gmt: !binary |-
  MjAxNC0wNS0yMCAxNDoyNDoyMSArMDIwMA==
categories:
- Diary
tags:
- Diary
comments: []
---

During last days a lab structure has been defined. Let's see an example:

<a id="more"></a><a id="more-14"></a>
<pre><?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<lab id="21347b51-b7a4-4496-8feb-8eda0c708660" name="TestLab" version="1" editable='true' restricted='false' author="Andrea Dainese">
    <topology>
        <nodes>
            <node id="0" name="R1" type="IOL" subtype="" hypervisor="unl01">
<option name="-F">/opt/unetlab/addons/iol/bin/i86bi_linux</option>
<option name="-t">{DEVICE_NAME}</option>
<option name="-d">0</option>
<option name="-e">1</option>
<option name="-s">1</option>
<option name="-n">64</option>
<option name="-r">256</option>
<option name="-c">{DEVICE_NAME}-confg</option>
<option name="-m">1:unl01:1:1</option>
                <interface id="0" network="0"/>
                <interface id="1" network="1"/>
            </node>
            <node id="1" name="R2" type="IOL" subtype="" hypervisor="unl01">
<option name="-F">/opt/unetlab/addons/iol/bin/i86bi_linux</option>
<option name="-t">{DEVICE_NAME}</option>
<option name="-d">0</option>
<option name="-e">1</option>
<option name="-s">1</option>
<option name="-n">64</option>
<option name="-r">256</option>
<option name="-c">{DEVICE_NAME}-confg</option>
<option name="-m">1:unl01:0:1</option>
                <interface id="0" network="0"/>
                <interface id="1" network="1"/>
            </node>
        </nodes>
        <networks>
            <network id="0" name="LAN" type="bridge"/>
            <network id="2" name="Serial" type="serial"/>
        </networks>
    </topology>
    <attach>
        <file name="/opt/unetlab/tmp/{TENANT_ID}/{LAB_NAME}/{DEVICE_ID}/R1-confg">
            CiEKISBMYXN0IGNvbmZpZ3VyYXRpb24gY2hhbmdlIGF0IDE0OjQ5OjUxIENF
            VCBUdWUgTWF5IDIwIDIwMTQKIQp2ZXJzaW9uIDE1LjEKc2VydmljZSB0aW1l
            c3RhbXBzIGRlYnVnIGRhdGV0aW1lIG1zZWMKc2VydmljZSB0aW1lc3RhbXBz
            IGxvZyBkYXRldGltZSBtc2VjCm5vIHNlcnZpY2UgcGFzc3dvcmQtZW5jcnlw
            dGlvbgpzZXJ2aWNlIGNvbXByZXNzLWNvbmZpZwohCmhvc3RuYW1lIFIxCiEK
            Ym9vdC1zdGFydC1tYXJrZXIKYm9vdC1lbmQtbWFya2VyCiEKIQohCm5vIGFh
            YSBuZXctbW9kZWwKY2xvY2sgdGltZXpvbmUgQ0VUIDEgMAohCmlwIGNlZgoh
            CiEKbm8gaXAgZG9tYWluLWxvb2t1cApubyBpcHY2IGNlZgppcHY2IG11bHRp
            Y2FzdCBycGYgdXNlLWJncAohCiEKIQohCiEKIQohCiEKIQohCiEKaW50ZXJm
            YWNlIEV0aGVybmV0MC8wCiBpcCBhZGRyZXNzIDEwLjAuMTIuMSAyNTUuMjU1
            LjI1NS4wCiEKaW50ZXJmYWNlIEV0aGVybmV0MC8xCiBubyBpcCBhZGRyZXNz
            CiBzaHV0ZG93bgohCmludGVyZmFjZSBFdGhlcm5ldDAvMgogbm8gaXAgYWRk
            cmVzcwogc2h1dGRvd24KIQppbnRlcmZhY2UgRXRoZXJuZXQwLzMKIG5vIGlw
            IGFkZHJlc3MKIHNodXRkb3duCiEKaW50ZXJmYWNlIFNlcmlhbDEvMAogaXAg
            YWRkcmVzcyAxMC4wLjAuMSAyNTUuMjU1LjI1NS4yNTIKIHNlcmlhbCByZXN0
            YXJ0LWRlbGF5IDAKIQppbnRlcmZhY2UgU2VyaWFsMS8xCiBubyBpcCBhZGRy
            ZXNzCiBzaHV0ZG93bgogc2VyaWFsIHJlc3RhcnQtZGVsYXkgMAohCmludGVy
            ZmFjZSBTZXJpYWwxLzIKIG5vIGlwIGFkZHJlc3MKIHNodXRkb3duCiBzZXJp
            YWwgcmVzdGFydC1kZWxheSAwCiEKaW50ZXJmYWNlIFNlcmlhbDEvMwogbm8g
            aXAgYWRkcmVzcwogc2h1dGRvd24KIHNlcmlhbCByZXN0YXJ0LWRlbGF5IDAK
            IQohCiEKbm8gaXAgaHR0cCBzZXJ2ZXIKIQohCiEKIQpjb250cm9sLXBsYW5l
            CiEKIQpsaW5lIGNvbiAwCiBsb2dnaW5nIHN5bmNocm9ub3VzCmxpbmUgYXV4
            IDAKbGluZSB2dHkgMCA0CiEKZW5kCg==
        </file>
        <file name="/opt/unetlab/tmp/{TENANT_ID}/{LAB_NAME}/{DEVICE_ID}/R2-confg">
            CiEKISBMYXN0IGNvbmZpZ3VyYXRpb24gY2hhbmdlIGF0IDE0OjUwOjE1IENF
            VCBUdWUgTWF5IDIwIDIwMTQKIQp2ZXJzaW9uIDE1LjEKc2VydmljZSB0aW1l
            c3RhbXBzIGRlYnVnIGRhdGV0aW1lIG1zZWMKc2VydmljZSB0aW1lc3RhbXBz
            IGxvZyBkYXRldGltZSBtc2VjCm5vIHNlcnZpY2UgcGFzc3dvcmQtZW5jcnlw
            dGlvbgpzZXJ2aWNlIGNvbXByZXNzLWNvbmZpZwohCmhvc3RuYW1lIFIyCiEK
            Ym9vdC1zdGFydC1tYXJrZXIKYm9vdC1lbmQtbWFya2VyCiEKIQohCm5vIGFh
            YSBuZXctbW9kZWwKY2xvY2sgdGltZXpvbmUgQ0VUIDEgMAohCmlwIGNlZgoh
            CiEKbm8gaXAgZG9tYWluLWxvb2t1cApubyBpcHY2IGNlZgppcHY2IG11bHRp
            Y2FzdCBycGYgdXNlLWJncAohCiEKIQohCiEKIQohCiEKIQohCiEKaW50ZXJm
            YWNlIEV0aGVybmV0MC8wCiBpcCBhZGRyZXNzIDEwLjAuMTIuMiAyNTUuMjU1
            LjI1NS4wCiEKaW50ZXJmYWNlIEV0aGVybmV0MC8xCiBubyBpcCBhZGRyZXNz
            CiBzaHV0ZG93bgohCmludGVyZmFjZSBFdGhlcm5ldDAvMgogbm8gaXAgYWRk
            cmVzcwogc2h1dGRvd24KIQppbnRlcmZhY2UgRXRoZXJuZXQwLzMKIG5vIGlw
            IGFkZHJlc3MKIHNodXRkb3duCiEKaW50ZXJmYWNlIFNlcmlhbDEvMAogaXAg
            YWRkcmVzcyAxMC4wLjAuMiAyNTUuMjU1LjI1NS4yNTIKIHNlcmlhbCByZXN0
            YXJ0LWRlbGF5IDAKIQppbnRlcmZhY2UgU2VyaWFsMS8xCiBubyBpcCBhZGRy
            ZXNzCiBzaHV0ZG93bgogc2VyaWFsIHJlc3RhcnQtZGVsYXkgMAohCmludGVy
            ZmFjZSBTZXJpYWwxLzIKIG5vIGlwIGFkZHJlc3MKIHNodXRkb3duCiBzZXJp
            YWwgcmVzdGFydC1kZWxheSAwCiEKaW50ZXJmYWNlIFNlcmlhbDEvMwogbm8g
            aXAgYWRkcmVzcwogc2h1dGRvd24KIHNlcmlhbCByZXN0YXJ0LWRlbGF5IDAK
            IQohCiEKbm8gaXAgaHR0cCBzZXJ2ZXIKIQohCiEKIQpjb250cm9sLXBsYW5l
            CiEKIQpsaW5lIGNvbiAwCiBsb2dnaW5nIHN5bmNocm9ub3VzCmxpbmUgYXV4
            IDAKbGluZSB2dHkgMCA0CiEKZW5kCg==
        </file>
    </attach>
</lab></pre>
Let me describe it:

* an XML file is used, no more "database.sdb", the WEB-UI will be able to import, open and manage xml files;
* each node is defined, and all startup options are included:

* R1 and R2 are defined;
* they both run on the same hypervisor (unl01);
* they are both connected to network 0 and network 1;
* a serial map is provided for serial communication (1:unl01:1:1 means connect local interface 1 to remote device 1 interface 1 running on unl01);


* each network is defined:

* one bridge network;
* one serial network;


* two attach are present and uuencoded: startup-configs are provided for both R1 and R2;
* few macro are available:

* TENANT_ID
* DEVICE_ID
* LAB_NAME
* DEVICE_NAME



The entire lab can be started typing:
<pre># ./unl_wrapper.py -T 0 -D -1 -f test.unl -a start</pre>
Both R1 and R2 will start, ethernet interfaces will be bridged to the vnet0_0 bridge:
<pre># brctl show
bridge name     bridge id               STP enabled     interfaces
vnet0_0         8000.6e52761450be       no              vunl0_0_0
                                                        vunl0_1_0</pre>
As you can see all is IPv6 capable:
<pre># netstat -anp | grep iol_wrapper
tcp6       0      0 :::32768                :::*                    LISTEN      6172/iol_wrapper
tcp6       0      0 :::32769                :::*                    LISTEN      6271/iol_wrapper
udp6       0      0 :::32768                :::*                                6172/iol_wrapper
udp6       0      0 :::32769                :::*                                6271/iol_wrapper</pre>
TCP is used for consoles, UDP for serial to serial communication.

R1 console is available on port 32768:
<pre>R1#show ip interface brief
Interface              IP-Address      OK? Method Status                Protocol
Ethernet0/0            10.0.12.1       YES manual up                    up
Ethernet0/1            unassigned      YES unset  administratively down down
Ethernet0/2            unassigned      YES unset  administratively down down
Ethernet0/3            unassigned      YES unset  administratively down down
Serial1/0              10.0.0.1        YES manual up                    up
Serial1/1              unassigned      YES unset  administratively down down
Serial1/2              unassigned      YES unset  administratively down down
Serial1/3              unassigned      YES unset  administratively down down</pre>
Both ethernet and serial pings work:
<pre>R1#ping 10.0.12.2
Type escape sequence to abort.
Sending 5, 100-byte ICMP Echos to 10.0.12.2, timeout is 2 seconds:
!!!!!
Success rate is 100 percent (5/5), round-trip min/avg/max = 5/8/18 ms
R1#ping 10.0.0.2
Type escape sequence to abort.
Sending 5, 100-byte ICMP Echos to 10.0.0.2, timeout is 2 seconds:
!!!!!
Success rate is 100 percent (5/5), round-trip min/avg/max = 19/24/29 ms</pre>
Broadcast is also supported, of course.

Because SDN distributed switches filter CDP, PagP and other protocols, standard bridges are supported. Standard bridges cannot be distributed on different hypervisor.
