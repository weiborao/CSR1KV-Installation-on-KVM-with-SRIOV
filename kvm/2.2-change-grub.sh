echo "# sudo vi /etc/default/grub 
# GRUB_CMDLINE_LINUX_DEFAULT="quiet hugepagesz=1G hugepages=64 default_hugepagesz=1G intel_iommu=on iommu=pt isolcpus=1-8,45-52"
# Note：The hugepages should be no more than the physical memory, otherwise, it will fail to bootup.

# Get system capabilities.
virsh capabilities

# Update the grub
sudo update-grub
"
sleep 1

echo "
# After reboot, Check the cmdline
cat /proc/cmdline |grep intel_iommu=on
"
cat /proc/cmdline |grep intel_iommu=on
sleep 1

echo "
# Check the dmesg
dmesg |grep -e DMAR -e IOMMU
"

dmesg |grep -e DMAR -e IOMMU

