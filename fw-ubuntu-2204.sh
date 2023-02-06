#!/bin/sh

# Ubuntu 22.04

# This is for 12th Gen ONLY.

# Enter and type your user's password as prompted.

# This will:

# - Update your Ubuntu install's packages.
# - Install the recommended OEM kernel.
# - Workaround needed to get the best suspend battery life for SSD power drain.
# - Disable the ALS sensor so that your brightness keys work.
# - Enable improved fractional scaling support for Ubuntu's GNOME environment using Wayland.
# - Enable headset mic input.


sudo apt update && sudo apt upgrade -y && sudo apt-get install linux-oem-22.04 && echo "options snd-hda-intel model=dell-headset-multi" | sudo tee -a /etc/modprobe.d/alsa-base.conf && gsettings set org.gnome.mutter experimental-features "['scale-monitor-framebuffer']" && sudo sed -i 's/^GRUB_CMDLINE_LINUX_DEFAULT.*/GRUB_CMDLINE_LINUX_DEFAULT="quiet splash module_blacklist=hid_sensor_hub nvme.noacpi=1"/g' /etc/default/grub && sudo update-grub && echo "[connection] 
wifi.powersave = 2" | sudo tee /etc/NetworkManager/conf.d/default-wifi-powersave-on.conf

# Sudo with your fingerprints.

## To run sudo in a terminal with the fingerprint reader, you need to run this command in a terminal and follow the prompts. 

sudo pam-auth-update

## Also, if you've previously enrolled fingerprints in Windows or another Linux distro, you may find that fingerprint enrollment errors until you manually force clear the stored fingerprints.
# https://knowledgebase.frame.work/en_us/fingerprint-enrollment-rkG6YP7xF


## Additional ways to extend battery life can be found at this link: https://community.frame.work/t/linux-battery-life-tuning/6665.

reboot