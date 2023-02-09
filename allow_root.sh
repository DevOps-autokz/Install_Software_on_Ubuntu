#!/bin/bash
# Allow ROOT login to GUI:
su -
sudo echo 'AllowRoot=true' >> /etc/gdm3/custom.conf
sudo sed -i '/quiet_success/s/^/#/' /etc/pam.d/gdm-password
