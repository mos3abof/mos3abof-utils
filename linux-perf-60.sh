#!/bin/bash

uptime				# load averages
sudo dmesg | tail	# kernel errors
vmstat -w 1			# overall stats by time
mpstat -P ALL 1		# CPU balance
pidtstat 1			# process usage
iostat -xz 1		# disk I/O
free -m				# memory usage
sar -n DEV 1		# network I/O
sar -n TCP,ETCP 1	# TCP stats
top					# check overview

