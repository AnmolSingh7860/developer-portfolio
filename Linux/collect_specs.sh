#!/bin/bash
# Author: Anmol Singh
# Roll Number: 2601730086
# University: K.R. Mangalam University

echo "=== System Hardware and OS Specifications ==="
echo "CPU Model: $(grep -m1 'model name' /proc/cpuinfo | cut -d':' -f2 | xargs)"
echo "CPU Cores: $(nproc)"
echo "Total RAM: $(free -h | awk '/^Mem:/{print $2}')"
echo "Available RAM: $(free -h | awk '/^Mem:/{print $7}')"
echo "Primary Storage Size: $(df -h / | awk 'NR==2{print $2}')"
echo "Storage Type: SSD"
echo "Operating System: $(grep PRETTY_NAME /etc/os-release | cut -d'=' -f2 | tr -d '\"')"
echo "Linux Kernel: $(uname -r)"