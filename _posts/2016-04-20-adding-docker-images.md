---
layout: post
published: true
title: "Adding Docker"
excerpt:
  "HowTo add Docker to UNetLab software."
section: "HowTo"
authors:
- UNL Team
tags:
- UNetLab
- Images
---

## Adding Docker

First, one need to manually install Docker on UNetLab VM:

~~~
wget -q -O- https://get.docker.com/ | bash
~~~

After installation, edit docker default options on /etc/default/docker by adding:

~~~
DOCKER_OPTS="-H=tcp://0.0.0.0:4243"
~~~

Reboot or restart Docker

~~~
service docker restart
~~~

Then search and install a Docker image (for example Ubuntu):

~~~
docker -H=tcp://127.0.0.1:4243 search ubuntu
docker -H=tcp://127.0.0.1:4243 pull ubuntu:latest
docker -H=tcp://127.0.0.1:4243 images
~~~

Add a Docker node to a lab, setup its startap config and edit node to boot from exported

Example of startap config to add from the slide bar:

~~~
ip addr add 1.1.1.1/24 dev eth0
ip route add default via 1.1.1.254
~~~

Run Docker with a telnet access in a LAB
