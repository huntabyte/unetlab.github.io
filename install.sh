#!/bin/bash

echo -ne "Adding RR Labs APT key... "
curl -s http://www.unetlab.com/rrlabs.key | apt-key add - > /dev/null 2>&1
if [ $? -eq 0 ]; then
	echo "DONE"
else
	echo "FAILED"
	exit 1
fi

echo -ne "Adding UNetLab APT repository... "
cat > /etc/apt/sources.list.d/unetlab.list << EOF
deb http://www.unetlab.com/apt trusty rrlabs
EOF
if [ $? -eq 0 ]; then
	echo "DONE"
else
	echo "FAILED"
	exit 1
fi

if [ "${http_proxy}" != "" ]; then
	echo -ne "Setting APT HTTP proxy... "
	if [ "${http_proxy_username}" != "" ]; then
		apt_http_proxy=$(echo ${http_proxy} | sed "s/\/\//\/\/${http_proxy_username}:${http_proxy_password}@/g")
	else
		apt_http_proxy=${http_proxy}
	fi
	echo "Acquire::http::Proxy \"${apt_http_proxy}\";" > /etc/apt/apt.conf.d/00proxy
	if [ $? -eq 0 ]; then
		echo "DONE"
	else
		echo "FAILED"
		exit 1
	fi
fi

if [ "${https_proxy}" != "" ]; then
	echo -ne "Setting APT HTTPS proxy... "
	if [ "${https_proxy_username}" != "" ]; then
		apt_https_proxy=$(echo ${https_proxy} | sed "s/\/\//\/\/${https_proxy_username}:${https_proxy_password}@/g")
	else
		apt_https_proxy=${https_proxy}
	fi
	echo "Acquire::https::Proxy \"${apt_https_proxy}\";" >> /etc/apt/apt.conf.d/00proxy
	if [ $? -eq 0 ]; then
		echo "DONE"
	else
		echo "FAILED"
		exit 1
	fi
fi

fgrep "Proxy" /etc/apt/apt.conf > /dev/null 2>&1
if [ $? -eq 0 ]; then
	echo -ne "Removing old APT proxy settings... "
	sed -i 's/^.*Proxy.*$//g'  /etc/apt/apt.conf
	if [ $? -eq 0 ]; then
		echo "DONE"
	else
		echo "FAILED"
		exit 1
	fi
fi

echo -e "Updating APT repositories..."
apt-get update
if [ $? -eq 0 ]; then
	echo -e "Updating APT repositories... DONE"
else
	echo -e "Updating APT repositories... FAILED"
	exit 1
fi

echo -e "Installing UNetLab..."
apt-get -y install unetlab
if [ $? -eq 0 ]; then
	echo -e "Installing UNetLab... DONE"
else
	echo -e "Installing UNetLab... FAILED"
	exit 1
fi

fgrep "pnet0" /etc/network/interfaces > /dev/null 2>&1
if [ $? -ne 0 ]; then
	echo -ne "Configuring networks... "
	cat >> /etc/network/interfaces << EOF

auto pnet0
iface pnet0 inet static
    # bridge_ports em1
    bridge_stp off
    # address 192.168.0.2
    # netmask 255.255.255.0
    # gateway 192.168.0.1
    # dns-nameserver 8.8.8.8 8.8.4.4

# Cloud devices
auto pnet1
iface pnet1 inet manual
    bridge_stp off

auto pnet2
iface pnet2 inet manual
    bridge_stp off

auto pnet3
iface pnet3 inet manual
    bridge_stp off

auto pnet4
iface pnet4 inet manual
    bridge_stp off

auto pnet5
iface pnet5 inet manual
    bridge_stp off

auto pnet6
iface pnet6 inet manual
    bridge_stp off

auto pnet7
iface pnet7 inet manual
    bridge_stp off

auto pnet8
iface pnet8 inet manual
    bridge_stp off

auto pnet9
iface pnet9 inet manual
    bridge_stp off
EOF
	if [ $? -eq 0 ]; then
		echo "DONE"
	else
		echo "FAILED"
		exit 1
	fi
fi

touch /opt/ovf/.configured

echo -e "Now you should migrate IP address configuration from  main interface card to the pnet0 bridge. Please refers to http://www.unetlab.com/ about editing the /etc/network/interfaces file."
echo -e "Then reboot your server and connect to the server IP address."

exit 0
