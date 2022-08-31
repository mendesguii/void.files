#!/bin/bash
set -x

# Stop display manager
pkill -f X
    
# Unbind VTconsoles: might not be needed
echo 0 > /sys/class/vtconsole/vtcon0/bind
echo 0 > /sys/class/vtconsole/vtcon1/bind

# Unbind EFI Framebuffer
echo efi-framebuffer.0 > /sys/bus/platform/drivers/efi-framebuffer/unbind

sleep 5

# Unload NVIDIA kernel modules
modprobe -r nvidia_drm nvidia_modeset nvidia_uvm nvidia snd_hda_intel 
#modprobe -r nvidia_drm
#modprobe -r nvidia_modeset
#modprobe -r drm_kms_helper
#modprobe -r nvidia
#modprobe -r i2c_nvidia_gpu
#modprobe -r drm
#modprobe -r i2c_ccgx_ucsi

# Detach GPU devices from host
# Use your GPU and HDMI Audio PCI host device
virsh nodedev-detach pci_0000_06_00_0
virsh nodedev-detach pci_0000_06_00_1
virsh nodedev-detach pci_0000_06_00_2
virsh nodedev-detach pci_0000_06_00_3


# Load vfio module
modprobe vfio-pci
modprobe vfio
modprobe vfio_iommu_type1
