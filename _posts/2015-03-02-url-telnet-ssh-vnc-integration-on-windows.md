---
layout: post
published: true
title: "URL Telnet/SSH/VNC Integration On Windows"
abstract: ! "HowTo open Telnet/VNC links from a browser on Windows."
categories:
- HowTo
authors:
- andrea
tags:
- UNetLab
- HowTo
---
UNetLab is currently using two console types:

* textual: using the `telnet://` URL
* graphic (included non-serial textual consoles): using the `vnc://` URL

On Windows the VNC viewer suggested is [UltraVnc](http://www.uvnc.com/downloads.html "UltraVnc"). The suggested telnet client is, of course, [PuTTY](http://www.chiark.greenend.org.uk/~sgtatham/putty/download.html "PuTTY"). Download:

* [PuTTY](http://www.chiark.greenend.org.uk/~sgtatham/putty/download.html "PuTTY")
* [UltraVnc](http://www.uvnc.com/downloads.html "UltraVnc")
* additional file from [UNetLab repository](http://www.unetlab.com/download/UNetLab-Win-Client-Pack.exe "Windows 64bit Url Integration")

Install UltraVnc using default settings. By default destination path is `C:\Program Files\uvnc bvba`.
Unpack the `Windows 64bit Url Integration.zip` file, move the `vnc_wrapper.bat` file in the same folder of UltraVnc `C:\Program Files\uvnc bvba`.
The `vnc_wrapper.bat` parses `vnc://` URL and starts UltraVnc using UNetLab server and port:

~~~ bat
@ECHO OFF
SET S=%1
SET S=###%S%###
SET S=%S:"###=%
SET S=%S:###"=%
SET S=%S:###=%
SET S=%S:vnc://=%
start "VNCViewer" "C:\Program Files\uvnc bvba\UltraVNC\vncviewer.exe" -connect %S% -disableclipboard -shared
~~~

Install the `win7_64bit.reg` in the Windows registry. This reg file configures bind the `vnc://` URL and UltraVnc:

~~~ reg
Windows Registry Editor Version 5.00

[HKEY_CLASSES_ROOT\telnet]
@="URL:Telnet Protocol"
"URL Protocol"=""

[HKEY_CLASSES_ROOT\telnet\shell]

[HKEY_CLASSES_ROOT\telnet\shell\open]

[HKEY_CLASSES_ROOT\telnet\shell\open\command]
@="\"C:\\Program Files (x86)\\PuTTY\\putty.exe\" %1"

[HKEY_CLASSES_ROOT\ssh]
@="URL:SSH Protocol"
"URL Protocol"=""

[HKEY_CLASSES_ROOT\ssh\shell]

[HKEY_CLASSES_ROOT\ssh\shell\open]

[HKEY_CLASSES_ROOT\ssh\shell\open\command]
@="\"C:\\Program Files (x86)\\PuTTY\\putty.exe\" %1"

[HKEY_CLASSES_ROOT\vnc]
@="URL:VNC Protocol"
"URL Protocol"=""

[HKEY_CLASSES_ROOT\vnc\shell]

[HKEY_CLASSES_ROOT\vnc\shell\open]

[HKEY_CLASSES_ROOT\vnc\shell\open\command]
@="\"C:\\Program Files\\uvnc bvba\\UltraVNC\\vnc_wrapper.bat\" %1"
~~~

Now both `telnet://` and `vnc://` URLs should be openable using browser on Windows.

