#!/bin/bash
echo "---- Hostname ----"
hostname
echo "--- Uptime ----"
uptime -p
if [ -f "/etc/redhat-release" ]; then
	echo "---- Instalacion de Apache en Webservers ----"
	dnf install httpd -y
	echo "HTTPD ha sido instalado en los servidores web"
fi
if [ -f "/etc/debian_version" ]; then
	echo "---- Uso de disco en Ubuntu ----"
	df -h
fi
echo "--------"
